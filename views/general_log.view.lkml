view: general_log {
  sql_table_name: mysql.general_log ;;

  dimension: argument {
    type: string
    sql: ${TABLE}.argument ;;
  }

  dimension: command_type {
    type: string
    sql: ${TABLE}.command_type ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: server_id {
    type: number
    sql: ${TABLE}.server_id ;;
  }

  dimension: thread_id {
    type: number
    sql: ${TABLE}.thread_id ;;
  }

  dimension: user_host {
    type: string
    sql: ${TABLE}.user_host ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
