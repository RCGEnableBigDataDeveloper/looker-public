view: slave_relay_log_info {
  sql_table_name: mysql.slave_relay_log_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.Channel_name ;;
  }

  dimension: master_log_name {
    type: string
    sql: ${TABLE}.Master_log_name ;;
  }

  dimension: master_log_pos {
    type: number
    sql: ${TABLE}.Master_log_pos ;;
  }

  dimension: number_of_lines {
    type: number
    sql: ${TABLE}.Number_of_lines ;;
  }

  dimension: number_of_workers {
    type: number
    sql: ${TABLE}.Number_of_workers ;;
  }

  dimension: relay_log_name {
    type: string
    sql: ${TABLE}.Relay_log_name ;;
  }

  dimension: relay_log_pos {
    type: number
    sql: ${TABLE}.Relay_log_pos ;;
  }

  dimension: sql_delay {
    type: number
    sql: ${TABLE}.Sql_delay ;;
  }

  measure: count {
    type: count
    drill_fields: [id, relay_log_name, master_log_name, channel_name]
  }
}
