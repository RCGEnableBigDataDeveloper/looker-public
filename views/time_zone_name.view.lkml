view: time_zone_name {
  sql_table_name: mysql.time_zone_name ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: time_zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Time_zone_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name, time_zone.time_zone_id]
  }
}
