view: help_category {
  sql_table_name: mysql.help_category ;;
  drill_fields: [help_category_id]

  dimension: help_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.help_category_id ;;
  }

  dimension: name {
    label: "NAME"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_category_id {
    type: number
    sql: ${TABLE}.parent_category_id ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [help_category_id, name, help_topic.count]
  }
}
