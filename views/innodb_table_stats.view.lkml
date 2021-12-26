view: innodb_table_stats {
  sql_table_name: mysql.innodb_table_stats ;;

  dimension: clustered_index_size {
    type: number
    sql: ${TABLE}.clustered_index_size ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.database_name ;;
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

  dimension: n_rows {
    type: number
    sql: ${TABLE}.n_rows ;;
  }

  dimension: sum_of_other_index_sizes {
    type: number
    sql: ${TABLE}.sum_of_other_index_sizes ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, table_name]
  }
}
