view: time_zone {
  sql_table_name: mysql.time_zone ;;
  drill_fields: [time_zone_id]

  dimension: time_zone_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Time_zone_id ;;
  }

  dimension: use_leap_seconds {
    type: string
    sql: ${TABLE}.Use_leap_seconds ;;
  }

  measure: count {
    type: count
    drill_fields: [time_zone_id, time_zone_name.count, time_zone_transition.count, time_zone_transition_type.count]
  }
}
