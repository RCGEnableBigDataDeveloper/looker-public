view: time_zone_transition_type {
  sql_table_name: mysql.time_zone_transition_type ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: is_dst {
    type: yesno
    sql: ${TABLE}.Is_DST ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.Offset ;;
  }

  dimension: time_zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Time_zone_id ;;
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
