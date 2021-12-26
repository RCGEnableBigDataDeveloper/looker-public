view: event {
  sql_table_name: mysql.event ;;

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: body_utf8 {
    type: string
    sql: ${TABLE}.body_utf8 ;;
  }

  dimension: character_set_client {
    type: string
    sql: ${TABLE}.character_set_client ;;
  }

  dimension: collation_connection {
    type: string
    sql: ${TABLE}.collation_connection ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.db ;;
  }

  dimension: db_collation {
    type: string
    sql: ${TABLE}.db_collation ;;
  }

  dimension: definer {
    type: string
    sql: ${TABLE}.definer ;;
  }

  dimension_group: ends {
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
    sql: ${TABLE}.ends ;;
  }

  dimension_group: execute {
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
    sql: ${TABLE}.execute_at ;;
  }

  dimension: interval_field {
    type: string
    sql: ${TABLE}.interval_field ;;
  }

  dimension: interval_value {
    type: number
    sql: ${TABLE}.interval_value ;;
  }

  dimension_group: last_executed {
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
    sql: ${TABLE}.last_executed ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: on_completion {
    type: string
    sql: ${TABLE}.on_completion ;;
  }

  dimension: originator {
    type: number
    sql: ${TABLE}.originator ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.sql_mode ;;
  }

  dimension_group: starts {
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
    sql: ${TABLE}.starts ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
