view: user {
  sql_table_name: mysql.user ;;

  dimension: account_locked {
    type: string
    sql: ${TABLE}.account_locked ;;
  }

  dimension: alter_priv {
    type: string
    sql: ${TABLE}.Alter_priv ;;
  }

  dimension: alter_routine_priv {
    type: string
    sql: ${TABLE}.Alter_routine_priv ;;
  }

  dimension: authentication_string {
    type: string
    sql: ${TABLE}.authentication_string ;;
  }

  dimension: create_priv {
    type: string
    sql: ${TABLE}.Create_priv ;;
  }

  dimension: create_routine_priv {
    type: string
    sql: ${TABLE}.Create_routine_priv ;;
  }

  dimension: create_tablespace_priv {
    type: string
    sql: ${TABLE}.Create_tablespace_priv ;;
  }

  dimension: create_tmp_table_priv {
    type: string
    sql: ${TABLE}.Create_tmp_table_priv ;;
  }

  dimension: create_user_priv {
    type: string
    sql: ${TABLE}.Create_user_priv ;;
  }

  dimension: create_view_priv {
    type: string
    sql: ${TABLE}.Create_view_priv ;;
  }

  dimension: delete_priv {
    type: string
    sql: ${TABLE}.Delete_priv ;;
  }

  dimension: drop_priv {
    type: string
    sql: ${TABLE}.Drop_priv ;;
  }

  dimension: event_priv {
    type: string
    sql: ${TABLE}.Event_priv ;;
  }

  dimension: execute_priv {
    type: string
    sql: ${TABLE}.Execute_priv ;;
  }

  dimension: file_priv {
    type: string
    sql: ${TABLE}.File_priv ;;
  }

  dimension: grant_priv {
    type: string
    sql: ${TABLE}.Grant_priv ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: index_priv {
    type: string
    sql: ${TABLE}.Index_priv ;;
  }

  dimension: insert_priv {
    type: string
    sql: ${TABLE}.Insert_priv ;;
  }

  dimension: lock_tables_priv {
    type: string
    sql: ${TABLE}.Lock_tables_priv ;;
  }

  dimension: max_connections {
    type: number
    sql: ${TABLE}.max_connections ;;
  }

  dimension: max_questions {
    type: number
    sql: ${TABLE}.max_questions ;;
  }

  dimension: max_updates {
    type: number
    sql: ${TABLE}.max_updates ;;
  }

  dimension: max_user_connections {
    type: number
    sql: ${TABLE}.max_user_connections ;;
  }

  dimension: password_expired {
    type: string
    sql: ${TABLE}.password_expired ;;
  }

  dimension_group: password_last_changed {
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
    sql: ${TABLE}.password_last_changed ;;
  }

  dimension: password_lifetime {
    type: number
    sql: ${TABLE}.password_lifetime ;;
  }

  dimension: plugin {
    type: string
    sql: ${TABLE}.plugin ;;
  }

  dimension: process_priv {
    type: string
    sql: ${TABLE}.Process_priv ;;
  }

  dimension: references_priv {
    type: string
    sql: ${TABLE}.References_priv ;;
  }

  dimension: reload_priv {
    type: string
    sql: ${TABLE}.Reload_priv ;;
  }

  dimension: repl_client_priv {
    type: string
    sql: ${TABLE}.Repl_client_priv ;;
  }

  dimension: repl_slave_priv {
    type: string
    sql: ${TABLE}.Repl_slave_priv ;;
  }

  dimension: select_priv {
    type: string
    sql: ${TABLE}.Select_priv ;;
  }

  dimension: show_db_priv {
    type: string
    sql: ${TABLE}.Show_db_priv ;;
  }

  dimension: show_view_priv {
    type: string
    sql: ${TABLE}.Show_view_priv ;;
  }

  dimension: shutdown_priv {
    type: string
    sql: ${TABLE}.Shutdown_priv ;;
  }

  dimension: ssl_cipher {
    type: string
    sql: ${TABLE}.ssl_cipher ;;
  }

  dimension: ssl_type {
    type: string
    sql: ${TABLE}.ssl_type ;;
  }

  dimension: super_priv {
    type: string
    sql: ${TABLE}.Super_priv ;;
  }

  dimension: trigger_priv {
    type: string
    sql: ${TABLE}.Trigger_priv ;;
  }

  dimension: update_priv {
    type: string
    sql: ${TABLE}.Update_priv ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.User ;;
  }

  dimension: x509_issuer {
    type: string
    sql: ${TABLE}.x509_issuer ;;
  }

  dimension: x509_subject {
    type: string
    sql: ${TABLE}.x509_subject ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
