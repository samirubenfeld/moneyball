connection: "google_bigquery_test_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# datagroup: moneyball_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }
#
# persist_with: moneyball_default_datagroup

explore: baseball {}

explore: batting {
  join: pitching {
    type: left_outer
    sql_on: ${batting.player_id} = ${pitching.player_id} ;;
    relationship: many_to_one
  }
  join: salaries {
    type: left_outer
    sql_on: ${batting.player_id} = ${salaries.player_id} ;;
    relationship: many_to_one
  }
}

explore: pitching{}

explore: salaries {}
