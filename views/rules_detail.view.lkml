view: rules_detail {
  sql_table_name: mysql.rules_detail ;;

  dimension: rule_bool {
    type: string
    sql: ${TABLE}.rule_bool ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_key {
    type: string
    sql: ${TABLE}.rule_key ;;
  }

  dimension: rule_operator {
    type: string
    sql: ${TABLE}.rule_operator ;;
  }

  dimension: rule_score {
    type: string
    sql: ${TABLE}.rule_score ;;
  }

  dimension: rule_value {
    type: string
    sql: ${TABLE}.rule_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
