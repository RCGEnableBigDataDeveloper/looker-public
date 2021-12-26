view: procs_priv {
  sql_table_name: mysql.procs_priv ;;

  dimension: db {
    type: string
    sql: ${TABLE}.Db ;;
  }

  dimension: grantor {
    type: string
    sql: ${TABLE}.Grantor ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: proc_priv {
    type: string
    sql: ${TABLE}.Proc_priv ;;
  }

  dimension: routine_name {
    type: string
    sql: ${TABLE}.Routine_name ;;
  }

  dimension: routine_type {
    type: string
    sql: ${TABLE}.Routine_type ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.User ;;
  }

  measure: count {
    type: count
    drill_fields: [routine_name]
  }
}
