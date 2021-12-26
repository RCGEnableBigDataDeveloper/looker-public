view: slow_log {
  sql_table_name: mysql.slow_log ;;

  dimension: db {
    type: string
    sql: ${TABLE}.db ;;
  }

  dimension: insert_id {
    type: number
    sql: ${TABLE}.insert_id ;;
  }

  dimension: last_insert_id {
    type: number
    sql: ${TABLE}.last_insert_id ;;
  }

  dimension_group: lock {
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
    sql: ${TABLE}.lock_time ;;
  }

  dimension_group: query {
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
    sql: ${TABLE}.query_time ;;
  }

  dimension: rows_examined {
    type: number
    sql: ${TABLE}.rows_examined ;;
  }

  dimension: rows_sent {
    type: number
    sql: ${TABLE}.rows_sent ;;
  }

  dimension: server_id {
    type: number
    sql: ${TABLE}.server_id ;;
  }

  dimension: sql_text {
    type: string
    sql: ${TABLE}.sql_text ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
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
