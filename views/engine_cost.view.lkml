view: engine_cost {
  sql_table_name: mysql.engine_cost ;;

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

  dimension: device_type {
    type: number
    sql: ${TABLE}.device_type ;;
  }

  dimension: engine_name {
    type: string
    sql: ${TABLE}.engine_name ;;
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
    drill_fields: [engine_name, cost_name]
  }
}
