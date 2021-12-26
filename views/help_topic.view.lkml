view: help_topic {
  sql_table_name: mysql.help_topic ;;
  drill_fields: [help_topic_id]

  dimension: help_topic_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.help_topic_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: example {
    type: string
    sql: ${TABLE}.example ;;
  }

  dimension: help_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.help_category_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [help_topic_id, name, help_category.help_category_id, help_category.name, help_relation.count]
  }
}
