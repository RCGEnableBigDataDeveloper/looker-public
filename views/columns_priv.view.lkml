view: columns_priv {
  sql_table_name: mysql.columns_priv ;;

  dimension: column_name {
    type: string
    sql: ${TABLE}.Column_name ;;
  }

  dimension: column_priv {
    type: string
    sql: ${TABLE}.Column_priv ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.Db ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.Table_name ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.User ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, column_name]
  }
}
