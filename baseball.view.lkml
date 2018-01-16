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

  dimension: OBP_SLG_BA {
    type:  number
    sql:${obp} + ${slg} + ${ba} ;;
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
    primary_key: yes
    type: string
    sql: ${TABLE}.Team ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.W ;;
  }

  measure: wins {
    type: sum
    sql: ${TABLE}.W ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: is_playoffs {
    type: yesno
    sql: ${playoffs} = 1 ;;
  }

  measure: average_runs_scored {
    type: average
    sql: ${rs} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
