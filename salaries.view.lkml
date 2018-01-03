view: salaries {
  sql_table_name: moneyball.salaries ;;

  dimension: lg_id {
    type: string
    sql: ${TABLE}.lgID ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.playerID ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}.teamID ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.yearID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
