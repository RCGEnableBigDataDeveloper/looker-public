view: proc {
  sql_table_name: mysql.proc ;;

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

  dimension: is_deterministic {
    type: string
    sql: ${TABLE}.is_deterministic ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
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

  dimension: param_list {
    type: string
    sql: ${TABLE}.param_list ;;
  }

  dimension: returns {
    type: string
    sql: ${TABLE}.returns ;;
  }

  dimension: security_type {
    type: string
    sql: ${TABLE}.security_type ;;
  }

  dimension: specific_name {
    type: string
    sql: ${TABLE}.specific_name ;;
  }

  dimension: sql_data_access {
    type: string
    sql: ${TABLE}.sql_data_access ;;
  }

  dimension: sql_mode {
    type: string
    sql: ${TABLE}.sql_mode ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, specific_name]
  }
}
