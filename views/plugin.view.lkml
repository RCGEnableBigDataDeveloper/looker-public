view: plugin {
  sql_table_name: mysql.plugin ;;

  dimension: dl {
    type: string
    sql: ${TABLE}.dl ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
