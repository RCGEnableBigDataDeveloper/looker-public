view: help_keyword {
  sql_table_name: mysql.help_keyword ;;
  drill_fields: [help_keyword_id]

  dimension: help_keyword_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.help_keyword_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [help_keyword_id, name, help_relation.count]
  }
}
