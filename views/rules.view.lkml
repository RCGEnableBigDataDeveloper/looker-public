view: rules {
  sql_table_name: mysql.rules ;;
  drill_fields: [rule_id]

  dimension: rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_id, rule_name]
  }
}
