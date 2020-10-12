view: session_funnel_facts {
  derived_table: {
    # datagroup_trigger: the_superior_qm_block_default_datagroup
    sql: with hit_event_facts as (
         SELECT
          hits__events.session_id  AS session_id,
          hits__events.id  AS hit_event_id,
          hits__events.ts  AS hit_event_ts,
          hits__events.event  AS event_name,
          ROW_NUMBER() OVER (PARTITION BY hits__events.session_id ORDER BY hits__events.ts asc) AS hit_event_sequence,
          ROW_NUMBER() OVER (PARTITION BY hits__events.session_id ORDER BY hits__events.ts desc) AS reverse_hit_event_sequence
        FROM `qm.quinnmurray`
             AS base_table
        LEFT JOIN UNNEST(base_table.hits) as hits
        LEFT JOIN UNNEST(hits.events) as hits__events
        --WHERE hits__events.event in ('Product Details Page', 'Add to Cart Click', 'View Cart Page', 'Shipping Information Page', 'Payment Information Page', 'Review Order Page', 'Purchase Confirmation Page')
        WHERE {% condition event_filter %} hits__events.event {% endcondition %}
        group by 1,2,3,4
      )
      select
        session_id
        , MIN(CASE WHEN hit_event_sequence = 1 then event_name else 'Session End'  END) as event_1_name
        , MIN(CASE WHEN hit_event_sequence = 2 then event_name else 'Session End'  END) as event_2_name
        , MIN(CASE WHEN hit_event_sequence = 3 then event_name else 'Session End'  END) as event_3_name
        , MIN(CASE WHEN hit_event_sequence = 4 then event_name else 'Session End'  END) as event_4_name
        , MIN(CASE WHEN hit_event_sequence = 5 then event_name else 'Session End'  END) as event_5_name
      from hit_event_facts
      group by 1
       ;;
  }

  measure: session_count {
    type: count_distinct
    sql: ${session_id} ;;
    drill_fields: [detail*]
  }

  filter: event_filter {
    type: string
    # full_suggestions: yes
    suggest_explore: base_table
    suggest_dimension: hits__events.event
    description: "Select events of interest for user journey analysis"
  }

  dimension: session_id {
    hidden: yes
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: event_1_name {
    type: string
    sql: ${TABLE}.event_1_name ;;
    suggest_explore: base_table
    suggest_dimension: hits__events.event
  }

  dimension: event_2_name {
    type: string
    sql: ${TABLE}.event_2_name ;;
    suggest_explore: base_table
    suggest_dimension: hits__events.event
  }

  dimension: event_3_name {
    type: string
    sql: ${TABLE}.event_3_name ;;
    suggest_explore: base_table
    suggest_dimension: hits__events.event
  }

  dimension: event_4_name {
    type: string
    sql: ${TABLE}.event_4_name ;;
    suggest_explore: base_table
    suggest_dimension: hits__events.event
  }

  dimension: event_5_name {
    type: string
    sql: ${TABLE}.event_5_name ;;
    suggest_explore: base_table
    suggest_dimension: hits__events.event
  }

  set: detail {
    fields: [
      session_id,
      event_1_name,
      event_2_name,
      event_3_name,
      event_4_name,
      event_5_name
    ]
  }
}
