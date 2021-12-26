view: server_cost {
  sql_table_name: mysql.server_cost ;;

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: cost_name {
    type: string
    sql: ${TABLE}.cost_name ;;
  }

  dimension: cost_value {
    type: number
    sql: ${TABLE}.cost_value ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  measure: count {
    type: count
    drill_fields: [cost_name]
  }
}
