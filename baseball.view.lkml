view: baseball {
  sql_table_name: moneyball.baseball ;;

  dimension: ba {
    type: number
    sql: ${TABLE}.BA ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}.G ;;
  }

  dimension: league {
    type: string
    sql: ${TABLE}.League ;;
  }

  dimension: obp {
    type: number
    sql: ${TABLE}.OBP ;;
  }

  dimension: oobp {
    type: number
    sql: ${TABLE}.OOBP ;;
  }

  dimension: oslg {
    type: number
    sql: ${TABLE}.OSLG ;;
  }

  dimension: playoffs {
    type: number
    sql: ${TABLE}.Playoffs ;;
  }

  dimension: ra {
    type: number
    sql: ${TABLE}.RA ;;
  }

  dimension: rank_playoffs {
    type: number
    sql: ${TABLE}.RankPlayoffs ;;
  }

  dimension: rank_season {
    type: number
    sql: ${TABLE}.RankSeason ;;
  }

  dimension: rs {
    type: number
    sql: ${TABLE}.RS ;;
  }

  dimension: slg {
    type: number
    sql: ${TABLE}.SLG ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.W ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: sum_wins {
    type: sum
    sql: ${w} ;;
  }

  measure: sum_ba {
    type: sum
    sql: ${ba} ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
