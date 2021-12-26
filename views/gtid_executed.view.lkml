view: gtid_executed {
  sql_table_name: mysql.gtid_executed ;;

  dimension: interval_end {
    type: number
    sql: ${TABLE}.interval_end ;;
  }

  dimension: interval_start {
    type: number
    sql: ${TABLE}.interval_start ;;
  }

  dimension: source_uuid {
    type: string
    sql: ${TABLE}.source_uuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
