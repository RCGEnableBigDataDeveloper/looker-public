view: time_zone_leap_second {
  sql_table_name: mysql.time_zone_leap_second ;;

  dimension: correction {
    type: number
    sql: ${TABLE}.Correction ;;
  }

  dimension: transition_time {
    type: number
    sql: ${TABLE}.Transition_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
