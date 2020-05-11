connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: the_superior_qm_block_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: the_superior_qm_block_default_datagroup

explore: quinnmurray {
  join: quinnmurray__first_referrer {
    view_label: "Quinnmurray: First Referrer"
    sql: LEFT JOIN UNNEST([${quinnmurray.first_referrer}]) as quinnmurray__first_referrer ;;
    relationship: one_to_one
  }

  join: quinnmurray__first_referrer__url {
    view_label: "Quinnmurray: First Referrer Url"
    sql: LEFT JOIN UNNEST([${quinnmurray__first_referrer.url}]) as quinnmurray__first_referrer__url ;;
    relationship: one_to_one
  }

  join: quinnmurray__locale {
    view_label: "Quinnmurray: Locale"
    sql: LEFT JOIN UNNEST([${quinnmurray.locale}]) as quinnmurray__locale ;;
    relationship: one_to_one
  }

  join: quinnmurray__last_url {
    view_label: "Quinnmurray: Last Url"
    sql: LEFT JOIN UNNEST([${quinnmurray.last_url}]) as quinnmurray__last_url ;;
    relationship: one_to_one
  }

  join: quinnmurray__os {
    view_label: "Quinnmurray: Os"
    sql: LEFT JOIN UNNEST([${quinnmurray.os}]) as quinnmurray__os ;;
    relationship: one_to_one
  }

  join: quinnmurray__landing_url {
    view_label: "Quinnmurray: Landing Url"
    sql: LEFT JOIN UNNEST([${quinnmurray.landing_url}]) as quinnmurray__landing_url ;;
    relationship: one_to_one
  }

  join: quinnmurray__hits {
    view_label: "Quinnmurray: Hits"
    sql: LEFT JOIN UNNEST(${quinnmurray.hits}) as quinnmurray__hits ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits_errors {
    from: quinnmurray__hits
    view_label: "Quinnmurray: Errors"
    sql: LEFT JOIN UNNEST(${quinnmurray.hits}) as quinnmurray__hits ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__ajax {
    view_label: "Quinnmurray: Hits Ajax"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.ajax}) as quinnmurray__hits__ajax ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__measures {
    view_label: "Quinnmurray: Hits Measures"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.measures}) as quinnmurray__hits__measures ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__events {
    view_label: "Quinnmurray: Hits Events"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.events}) as quinnmurray__hits__events ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__events_errors {
    view_label: "Quinnmurray: Hits Events Errors"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.events}) as quinnmurray__hits__events_errors ON ${quinnmurray__hits__events_errors.is_error} ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__events_successes {
    view_label: "Quinnmurray: Hits Events Successes"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.events}) as quinnmurray__hits__events_successes ON NOT COALESCE(${quinnmurray__hits__events_errors.is_error} , FALSE) ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__click {
    view_label: "Quinnmurray: Hits Click"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.click}) as quinnmurray__hits__click ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__long_tasks {
    view_label: "Quinnmurray: Hits Long Tasks"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.long_tasks}) as quinnmurray__hits__long_tasks ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__resources {
    view_label: "Quinnmurray: Hits Resources"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.resources}) as quinnmurray__hits__resources ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__url {
    view_label: "Quinnmurray: Hits Url"
    sql: LEFT JOIN UNNEST([${quinnmurray__hits.url}]) as quinnmurray__hits__url ;;
    relationship: one_to_one
  }

  join: quinnmurray__hits__referrer {
    view_label: "Quinnmurray: Hits Referrer"
    sql: LEFT JOIN UNNEST([${quinnmurray__hits.referrer}]) as quinnmurray__hits__referrer ;;
    relationship: one_to_one
  }

  join: quinnmurray__hits__referrer__url {
    view_label: "Quinnmurray: Hits Referrer Url"
    sql: LEFT JOIN UNNEST([${quinnmurray__hits__referrer.url}]) as quinnmurray__hits__referrer__url ;;
    relationship: one_to_one
  }

  join: quinnmurray__hits__markers {
    view_label: "Quinnmurray: Hits Markers"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.markers}) as quinnmurray__hits__markers ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__forms {
    view_label: "Quinnmurray: Hits Forms"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits.forms}) as quinnmurray__hits__forms ;;
    relationship: one_to_many
  }

  join: quinnmurray__hits__forms__fields {
    view_label: "Quinnmurray: Hits Forms Fields"
    sql: LEFT JOIN UNNEST(${quinnmurray__hits__forms.fields}) as quinnmurray__hits__forms__fields ;;
    relationship: one_to_many
  }

  join: quinnmurray__referrer {
    view_label: "Quinnmurray: Referrer"
    sql: LEFT JOIN UNNEST([${quinnmurray.referrer}]) as quinnmurray__referrer ;;
    relationship: one_to_one
  }

  join: quinnmurray__referrer__url {
    view_label: "Quinnmurray: Referrer Url"
    sql: LEFT JOIN UNNEST([${quinnmurray__referrer.url}]) as quinnmurray__referrer__url ;;
    relationship: one_to_one
  }

  join: quinnmurray__user {
    view_label: "Quinnmurray: User"
    sql: LEFT JOIN UNNEST([${quinnmurray.user}]) as quinnmurray__user ;;
    relationship: one_to_one
  }

  join: quinnmurray__device {
    view_label: "Quinnmurray: Device"
    sql: LEFT JOIN UNNEST([${quinnmurray.device}]) as quinnmurray__device ;;
    relationship: one_to_one
  }
}