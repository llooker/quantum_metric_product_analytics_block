view: base_table {
  sql_table_name: `qm.quinnmurray`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abn_segment {
    type: string
    sql: ${TABLE}.abn_segment ;;
  }

  dimension: application_type {
    type: string
    sql: ${TABLE}.application_type ;;
  }

  dimension: cart_value {
    type: number
    hidden: yes
    sql: ${TABLE}.cart_value ;;
  }

  dimension: cart_value_dollars {
    type: number
    sql: ${cart_value} / 1000 ;;
  }

  measure: total_cart_value {
    type: sum
    sql: ${cart_value_dollars} ;;
  }

  measure: average_cart_value {
    type: average
    sql: ${cart_value_dollars} ;;
    value_format_name: usd
  }

  dimension: conn_down {
    type: string
    sql: ${TABLE}.conn_down ;;
  }

  dimension: conn_eff_type {
    type: string
    sql: ${TABLE}.conn_eff_type ;;
  }

  dimension: conn_rtt {
    type: string
    sql: ${TABLE}.conn_rtt ;;
  }

  dimension: conversion_count {
    type: number
    sql: ${TABLE}.conversion_count ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: cookie {
    type: string
    sql: ${TABLE}.cookie ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: device {
    hidden: yes
    sql: ${TABLE}.device ;;
  }

  dimension: engaged {
    type: yesno
    sql: ${TABLE}.engaged ;;
  }

  dimension: exit_click_sel {
    type: string
    sql: ${TABLE}.exit_click_sel ;;
  }

  dimension: exit_click_text {
    type: string
    sql: ${TABLE}.exit_click_text ;;
  }

  dimension: exit_url {
    type: string
    sql: ${TABLE}.exit_url ;;
  }

  dimension: first_referrer {
    hidden: yes
    sql: ${TABLE}.first_referrer ;;
  }

  dimension: hits {
    hidden: yes
    sql: ${TABLE}.hits ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: landing_url {
    hidden: yes
    sql: ${TABLE}.landing_url ;;
  }

  dimension: last_updated {
    type: number
    sql: ${TABLE}.last_updated ;;
  }

  dimension: last_url {
    hidden: yes
    sql: ${TABLE}.last_url ;;
  }

  dimension: locale {
    hidden: yes
    sql: ${TABLE}.locale ;;
  }

  dimension: os {
    hidden: yes
    sql: ${TABLE}.os ;;
  }

  dimension_group: partitiontime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PARTITIONTIME ;;
  }

  dimension: qm_version {
    type: string
    sql: ${TABLE}.qm_version ;;
  }

  dimension: referrer {
    hidden: yes
    sql: ${TABLE}.referrer ;;
  }

  dimension: replay_enabled {
    type: yesno
    sql: ${TABLE}.replay_enabled ;;
  }

  dimension: screen_height {
    type: number
    sql: ${TABLE}.screen_height ;;
  }

  dimension: screen_width {
    type: number
    sql: ${TABLE}.screen_width ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
    hidden: yes
  }
  dimension_group: ts_clean {
    type: time
    datatype:epoch
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ts ;;
  }
  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: first_referrer {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }

  dimension: url {
    hidden: yes
    sql: ${TABLE}.url ;;
  }
}

view: first_referrer__url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: locale {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
}

view: last_url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: os {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: landing_url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: hits {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ajax {
    hidden: yes
    sql: ${TABLE}.ajax ;;
  }

  dimension: application_version {
    type: string
    sql: ${TABLE}.application_version ;;
  }

  dimension: attn_10 {
    type: number
    sql: ${TABLE}.attn_10 ;;
  }

  dimension: attn_100 {
    type: number
    sql: ${TABLE}.attn_100 ;;
  }

  dimension: attn_20 {
    type: number
    sql: ${TABLE}.attn_20 ;;
  }

  dimension: attn_30 {
    type: number
    sql: ${TABLE}.attn_30 ;;
  }

  dimension: attn_40 {
    type: number
    sql: ${TABLE}.attn_40 ;;
  }

  dimension: attn_50 {
    type: number
    sql: ${TABLE}.attn_50 ;;
  }

  dimension: attn_60 {
    type: number
    sql: ${TABLE}.attn_60 ;;
  }

  dimension: attn_70 {
    type: number
    sql: ${TABLE}.attn_70 ;;
  }

  dimension: attn_80 {
    type: number
    sql: ${TABLE}.attn_80 ;;
  }

  dimension: attn_90 {
    type: number
    sql: ${TABLE}.attn_90 ;;
  }

  dimension: chars_typed {
    type: number
    sql: ${TABLE}.chars_typed ;;
  }

  dimension: click {
    hidden: yes
    sql: ${TABLE}.click ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: connect_end {
    type: number
    sql: ${TABLE}.connect_end ;;
  }

  dimension: connect_end_ms {
    type: number
    sql: ${TABLE}.connect_end_ms ;;
  }

  dimension: connect_start {
    type: number
    sql: ${TABLE}.connect_start ;;
  }

  dimension: connect_start_ms {
    type: number
    sql: ${TABLE}.connect_start_ms ;;
  }

  dimension: decoded_body_size {
    type: number
    sql: ${TABLE}.decoded_body_size ;;
  }

  dimension: dom_complete {
    type: number
    sql: ${TABLE}.dom_complete ;;
  }

  dimension: dom_complete_ms {
    type: number
    sql: ${TABLE}.dom_complete_ms ;;
  }

  dimension: dom_complete_ms_real {
    type: number
    sql: ${TABLE}.dom_complete_ms_real ;;
  }

  dimension: dom_content_loaded_event_end {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_end ;;
  }

  dimension: dom_content_loaded_event_end_ms {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_end_ms ;;
  }

  dimension: dom_content_loaded_event_start {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_start ;;
  }

  dimension: dom_content_loaded_event_start_ms {
    type: number
    sql: ${TABLE}.dom_content_loaded_event_start_ms ;;
  }

  dimension: dom_interactive {
    type: number
    sql: ${TABLE}.dom_interactive ;;
  }

  dimension: dom_interactive_ms {
    type: number
    sql: ${TABLE}.dom_interactive_ms ;;
  }

  dimension: dom_interactive_ms_real {
    type: number
    sql: ${TABLE}.dom_interactive_ms_real ;;
  }

  dimension: dom_loading_ms {
    type: number
    sql: ${TABLE}.dom_loading_ms ;;
  }

  dimension: domain_lookup_end {
    type: number
    sql: ${TABLE}.domain_lookup_end ;;
  }

  dimension: domain_lookup_end_ms {
    type: number
    sql: ${TABLE}.domain_lookup_end_ms ;;
  }

  dimension: domain_lookup_start {
    type: number
    sql: ${TABLE}.domain_lookup_start ;;
  }

  dimension: domain_lookup_start_ms {
    type: number
    sql: ${TABLE}.domain_lookup_start_ms ;;
  }

  dimension: elements_count {
    type: number
    sql: ${TABLE}.elements_count ;;
  }

  dimension: encoded_body_size {
    type: number
    sql: ${TABLE}.encoded_body_size ;;
  }

  dimension: engaged_seconds {
    type: number
    sql: ${TABLE}.engaged_seconds ;;
  }

  dimension: events {
    hidden: yes
    sql: ${TABLE}.events ;;
  }

  dimension: exit_click_sel {
    type: string
    sql: ${TABLE}.exit_click_sel ;;
  }

  dimension: exit_click_text {
    type: string
    sql: ${TABLE}.exit_click_text ;;
  }

  dimension: exit_url {
    type: string
    sql: ${TABLE}.exit_url ;;
  }

  dimension: fetch_start {
    type: number
    sql: ${TABLE}.fetch_start ;;
  }

  dimension: fetch_start_ms {
    type: number
    sql: ${TABLE}.fetch_start_ms ;;
  }

  dimension: first_contentful_paint {
    type: number
    sql: ${TABLE}.first_contentful_paint ;;
  }

  dimension: first_contentful_paint_ms {
    type: number
    sql: ${TABLE}.first_contentful_paint_ms ;;
  }

  dimension: first_paint {
    type: number
    sql: ${TABLE}.first_paint ;;
  }

  dimension: first_paint_ms {
    type: number
    sql: ${TABLE}.first_paint_ms ;;
  }

  dimension: forms {
    hidden: yes
    sql: ${TABLE}.forms ;;
  }

  dimension: fragment_identifier {
    type: string
    sql: ${TABLE}.fragment_identifier ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: load_event_end {
    type: number
    sql: ${TABLE}.load_event_end ;;
  }

  dimension: load_event_end_ms {
    type: number
    sql: ${TABLE}.load_event_end_ms ;;
  }

  dimension: load_event_start {
    type: number
    sql: ${TABLE}.load_event_start ;;
  }

  dimension: load_event_start_ms {
    type: number
    sql: ${TABLE}.load_event_start_ms ;;
  }

  dimension: long_tasks {
    hidden: yes
    sql: ${TABLE}.long_tasks ;;
  }

  dimension: markers {
    hidden: yes
    sql: ${TABLE}.markers ;;
  }

  dimension: max_scroll {
    type: number
    sql: ${TABLE}.max_scroll ;;
  }

  dimension: measures {
    hidden: yes
    sql: ${TABLE}.measures ;;
  }

  dimension: mouse_hundredth_miles {
    type: number
    sql: ${TABLE}.mouse_hundredth_miles ;;
  }

  dimension: query_string {
    type: string
    sql: ${TABLE}.query_string ;;
  }

  dimension: redirect_end {
    type: number
    sql: ${TABLE}.redirect_end ;;
  }

  dimension: redirect_start {
    type: number
    sql: ${TABLE}.redirect_start ;;
  }

  dimension: referrer {
    hidden: yes
    sql: ${TABLE}.referrer ;;
  }

  dimension: request_start {
    type: number
    sql: ${TABLE}.request_start ;;
  }

  dimension: request_start_ms {
    type: number
    sql: ${TABLE}.request_start_ms ;;
  }

  dimension: resources {
    hidden: yes
    sql: ${TABLE}.resources ;;
  }

  dimension: response_end {
    type: number
    sql: ${TABLE}.response_end ;;
  }

  dimension: response_end_ms {
    type: number
    sql: ${TABLE}.response_end_ms ;;
  }

  dimension: response_server_ms {
    type: number
    sql: ${TABLE}.response_server_ms ;;
  }

  dimension: response_size {
    type: number
    sql: ${TABLE}.response_size ;;
  }

  dimension: response_start {
    type: number
    sql: ${TABLE}.response_start ;;
  }

  dimension: response_start_ms {
    type: number
    sql: ${TABLE}.response_start_ms ;;
  }

  dimension: response_xfer_ms {
    type: number
    sql: ${TABLE}.response_xfer_ms ;;
  }

  dimension: scroll_hundredth_miles {
    type: number
    sql: ${TABLE}.scroll_hundredth_miles ;;
  }

  dimension: secure {
    type: yesno
    sql: ${TABLE}.secure ;;
  }

  dimension: secure_connection_start {
    type: number
    sql: ${TABLE}.secure_connection_start ;;
  }

  dimension: secure_connection_start_ms {
    type: number
    sql: ${TABLE}.secure_connection_start_ms ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: spa_mutation_ms {
    type: number
    sql: ${TABLE}.spa_mutation_ms ;;
  }

  dimension: spa_transition_apis {
    type: number
    sql: ${TABLE}.spa_transition_apis ;;
  }

  dimension: spa_transition_duration {
    type: number
    sql: ${TABLE}.spa_transition_duration ;;
  }

  dimension: spa_transition_mutations {
    type: number
    sql: ${TABLE}.spa_transition_mutations ;;
  }

  dimension: timing_origin {
    type: number
    sql: ${TABLE}.timing_origin ;;
  }

  dimension: transfer_size {
    type: number
    sql: ${TABLE}.transfer_size ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: unload_end_ms {
    type: number
    sql: ${TABLE}.unload_end_ms ;;
  }

  dimension: unload_start_ms {
    type: number
    sql: ${TABLE}.unload_start_ms ;;
  }

  dimension: url {
    hidden: yes
    sql: ${TABLE}.url ;;
  }
}

view: hits__ajax {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: response_code {
    type: number
    sql: ${TABLE}.response_code ;;
  }

  dimension: response_server_ms {
    type: number
    sql: ${TABLE}.response_server_ms ;;
  }

  dimension: response_size {
    type: number
    sql: ${TABLE}.response_size ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }
}

view: hits__measures {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: start_time {
    type: number
    sql: ${TABLE}.start_time ;;
  }
}

view: hits__events_errors {
  sql_table_name: hits__events ;;
  extends: [hits__events]
}

view: hits__events_successes {
  sql_table_name: hits__events ;;
  extends: [hits__events]
}

view: hits__events {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.abbreviation ;;
  }

  dimension: display_in_ui {
    type: yesno
    sql: ${TABLE}.display_in_ui ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  measure: count_product_details_page {
    view_label: "Funnel View"
    label: "(1) Product Details Page"
    type: count

    filters: {
      field: event
      value: "Product Details Page
      "
    }

    #drill_fields: [detail*]
  }

  measure: count_add_to_cart_click {
    view_label: "Funnel View"
    label: "(2) Add to Cart Click"
    type: count

    filters: {
      field: event
      value: "Add to Cart Click
      "
    }

    #drill_fields: [detail*]
  }

  measure: count_view_cart_page {
    view_label: "Funnel View"
    label: "(3) View Cart Page"
    type: count

    filters: {
      field: event
      value: "View Cart Page
      "
    }

    #drill_fields: [detail*]
  }

  measure: count_shipping_information_page {
    view_label: "Funnel View"
    label: "(4) Shipping Information Page"
    type: count

    filters: {
      field: event
      value: "Shipping Information Page
      "
    }

    #drill_fields: [detail*]
  }

  measure: count_payment_information_page {
    view_label: "Funnel View"
    label: "(5) Payment Information Page"
    type: count

    filters: {
      field: event
      value: "Payment Information Page
      "
    }

    #drill_fields: [detail*]
  }


  measure: count_review_order_page {
    view_label: "Funnel View"
    label: "(6) Review Order Page"
    type: count

    filters: {
      field: event
      value: "Review Order Page
      "
    }

    #drill_fields: [detail*]
  }

  measure: count_purchase_confirmation_page {
    view_label: "Funnel View"
    label: "(7) Purchase Confirmation Page"
    type: count

    filters: {
      field: event
      value: "Purchase Confirmation Page
      "
    }

    #drill_fields: [detail*]
  }






  dimension: flags {
    type: number
    sql: ${TABLE}.flags ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: is_conversion {
    type: yesno
    sql: ${TABLE}.is_conversion ;;
  }

  dimension: is_error {
    type: yesno
    sql: ${TABLE}.is_error ;;
  }

  dimension: is_order_number {
    type: yesno
    sql: ${TABLE}.is_order_number ;;
  }

  dimension: is_promoted {
    type: yesno
    sql: ${TABLE}.is_promoted ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: hits__click {
  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: offsetx {
    type: number
    sql: ${TABLE}.offsetx ;;
  }

  dimension: offsety {
    type: number
    sql: ${TABLE}.offsety ;;
  }

  dimension: parent_selector {
    type: string
    sql: ${TABLE}.parent_selector ;;
  }

  dimension: selector {
    type: string
    sql: ${TABLE}.selector ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: time_to_click {
    type: number
    sql: ${TABLE}.time_to_click ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }
}

view: hits__long_tasks {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: start_time {
    type: number
    sql: ${TABLE}.start_time ;;
  }
}

view: hits__resources {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: connect_end {
    type: number
    sql: ${TABLE}.connect_end ;;
  }

  dimension: connect_start {
    type: number
    sql: ${TABLE}.connect_start ;;
  }

  dimension: decoded_body_size {
    type: number
    sql: ${TABLE}.decoded_body_size ;;
  }

  dimension: domain_lookup_end {
    type: number
    sql: ${TABLE}.domain_lookup_end ;;
  }

  dimension: domain_lookup_start {
    type: number
    sql: ${TABLE}.domain_lookup_start ;;
  }

  dimension: encoded_body_size {
    type: number
    sql: ${TABLE}.encoded_body_size ;;
  }

  dimension: fetch_start {
    type: number
    sql: ${TABLE}.fetch_start ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: initiator_type {
    type: string
    sql: ${TABLE}.initiator_type ;;
  }

  dimension: is_async {
    type: yesno
    sql: ${TABLE}.is_async ;;
  }

  dimension: is_cached {
    type: yesno
    sql: ${TABLE}.is_cached ;;
  }

  dimension: is_compressed {
    type: yesno
    sql: ${TABLE}.is_compressed ;;
  }

  dimension: is_critical {
    type: yesno
    sql: ${TABLE}.is_critical ;;
  }

  dimension: is_cross_origin {
    type: yesno
    sql: ${TABLE}.is_cross_origin ;;
  }

  dimension: next_hop_protocol {
    type: string
    sql: ${TABLE}.next_hop_protocol ;;
  }

  dimension: redirect_end {
    type: number
    sql: ${TABLE}.redirect_end ;;
  }

  dimension: redirect_start {
    type: number
    sql: ${TABLE}.redirect_start ;;
  }

  dimension: request_start {
    type: number
    sql: ${TABLE}.request_start ;;
  }

  dimension: response_end {
    type: number
    sql: ${TABLE}.response_end ;;
  }

  dimension: response_start {
    type: number
    sql: ${TABLE}.response_start ;;
  }

  dimension: secure_connection_start {
    type: number
    sql: ${TABLE}.secure_connection_start ;;
  }

  dimension: server_timings {
    type: string
    sql: ${TABLE}.server_timings ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: transfer_size {
    type: number
    sql: ${TABLE}.transfer_size ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: worker_start {
    type: number
    sql: ${TABLE}.worker_start ;;
  }
}

view: hits__url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: hits__referrer {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }

  dimension: url {
    hidden: yes
    sql: ${TABLE}.url ;;
  }
}

view: hits__referrer__url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: hits__markers {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: start_time {
    type: number
    sql: ${TABLE}.start_time ;;
  }
}

view: hits__forms {
  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: fields {
    hidden: yes
    sql: ${TABLE}.fields ;;
  }

  dimension: fill_time_s {
    type: number
    sql: ${TABLE}.fill_time_s ;;
  }

  dimension: form_action {
    type: string
    sql: ${TABLE}.form_action ;;
  }

  dimension: form_action_id {
    type: number
    sql: ${TABLE}.form_action_id ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.form_name ;;
  }

  dimension: form_name_id {
    type: number
    sql: ${TABLE}.form_name_id ;;
  }

  dimension: hit_form_id {
    type: number
    sql: ${TABLE}.hit_form_id ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }
}

view: hits__forms__fields {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: field_name_id {
    type: number
    sql: ${TABLE}.field_name_id ;;
  }

  dimension: fill_decaseconds {
    type: number
    sql: ${TABLE}.fill_decaseconds ;;
  }

  dimension: filled_count {
    type: number
    sql: ${TABLE}.filled_count ;;
  }

  dimension: hit_form_id {
    type: number
    sql: ${TABLE}.hit_form_id ;;
  }

  dimension: hit_id {
    type: number
    sql: ${TABLE}.hit_id ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: is_drop_off {
    type: yesno
    sql: ${TABLE}.is_drop_off ;;
  }

  dimension: is_filled {
    type: yesno
    sql: ${TABLE}.is_filled ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: referrer {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }

  dimension: url {
    hidden: yes
    sql: ${TABLE}.url ;;
  }
}

view: referrer__url {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}.domain_id ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: path_id {
    type: number
    sql: ${TABLE}.path_id ;;
  }

  dimension: query_params {
    type: string
    sql: ${TABLE}.query_params ;;
  }
}

view: user {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cookies {
    type: string
    sql: ${TABLE}.cookies ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: loyalty {
    type: number
    sql: ${TABLE}.loyalty ;;
  }

  dimension: updated {
    type: number
    sql: ${TABLE}.updated ;;
  }
}

view: device {
  dimension: browser_id {
    type: number
    sql: ${TABLE}.browser_id ;;
  }

  dimension: browser_major_ver {
    type: number
    sql: ${TABLE}.browser_major_ver ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_id {
    type: number
    sql: ${TABLE}.name_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_agent_id {
    type: number
    sql: ${TABLE}.user_agent_id ;;
  }
}
