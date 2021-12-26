view: innodb_index_stats {
  sql_table_name: mysql.innodb_index_stats ;;

  dimension: database_name {
    type: string
    sql: ${TABLE}.database_name ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.index_name ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_update ;;
  }

  dimension: sample_size {
    type: number
    sql: ${TABLE}.sample_size ;;
  }

  dimension: stat_description {
    type: string
    sql: ${TABLE}.stat_description ;;
  }

  dimension: stat_name {
    type: string
    sql: ${TABLE}.stat_name ;;
  }

  dimension: stat_value {
    type: number
    sql: ${TABLE}.stat_value ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, table_name, index_name, stat_name]
  }
}
