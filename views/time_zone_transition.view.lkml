view: time_zone_transition {
  sql_table_name: mysql.time_zone_transition ;;

  dimension: time_zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Time_zone_id ;;
  }

  dimension: transition_time {
    type: number
    sql: ${TABLE}.Transition_time ;;
  }

  dimension: transition_type_id {
    type: number
    sql: ${TABLE}.Transition_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [time_zone.time_zone_id]
  }
}
