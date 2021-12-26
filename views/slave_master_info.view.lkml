view: slave_master_info {
  sql_table_name: mysql.slave_master_info ;;

  dimension: bind {
    type: string
    sql: ${TABLE}.Bind ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.Channel_name ;;
  }

  dimension: connect_retry {
    type: number
    sql: ${TABLE}.Connect_retry ;;
  }

  dimension: enabled_auto_position {
    type: yesno
    sql: ${TABLE}.Enabled_auto_position ;;
  }

  dimension: enabled_ssl {
    type: yesno
    sql: ${TABLE}.Enabled_ssl ;;
  }

  dimension: heartbeat {
    type: number
    sql: ${TABLE}.Heartbeat ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: ignored_server_ids {
    type: string
    sql: ${TABLE}.Ignored_server_ids ;;
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

  dimension: port {
    type: number
    sql: ${TABLE}.Port ;;
  }

  dimension: retry_count {
    type: number
    sql: ${TABLE}.Retry_count ;;
  }

  dimension: ssl_ca {
    type: string
    sql: ${TABLE}.Ssl_ca ;;
  }

  dimension: ssl_capath {
    type: string
    sql: ${TABLE}.Ssl_capath ;;
  }

  dimension: ssl_cert {
    type: string
    sql: ${TABLE}.Ssl_cert ;;
  }

  dimension: ssl_cipher {
    type: string
    sql: ${TABLE}.Ssl_cipher ;;
  }

  dimension: ssl_crl {
    type: string
    sql: ${TABLE}.Ssl_crl ;;
  }

  dimension: ssl_crlpath {
    type: string
    sql: ${TABLE}.Ssl_crlpath ;;
  }

  dimension: ssl_key {
    type: string
    sql: ${TABLE}.Ssl_key ;;
  }

  dimension: ssl_verify_server_cert {
    type: yesno
    sql: ${TABLE}.Ssl_verify_server_cert ;;
  }

  dimension: tls_version {
    type: string
    sql: ${TABLE}.Tls_version ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.User_name ;;
  }

  dimension: user_password {
    type: string
    sql: ${TABLE}.User_password ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.Uuid ;;
  }

  measure: count {
    type: count
    drill_fields: [master_log_name, user_name, channel_name]
  }
}
