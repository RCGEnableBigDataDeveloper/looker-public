view: func {
  sql_table_name: mysql.func ;;

  dimension: dl {
    type: string
    sql: ${TABLE}.dl ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ret {
    type: yesno
    sql: ${TABLE}.ret ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
