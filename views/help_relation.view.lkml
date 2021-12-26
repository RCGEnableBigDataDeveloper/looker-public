view: help_relation {
  sql_table_name: mysql.help_relation ;;

  dimension: help_keyword_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.help_keyword_id ;;
  }

  dimension: help_topic_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.help_topic_id ;;
  }

  measure: count {
    type: count
    drill_fields: [help_topic.help_topic_id, help_topic.name, help_keyword.help_keyword_id, help_keyword.name]
  }
}
