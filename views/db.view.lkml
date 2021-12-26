view: db {
  sql_table_name: mysql.db ;;

  dimension: alter_priv {
    type: string
    sql: ${TABLE}.Alter_priv ;;
  }

  dimension: alter_routine_priv {
    type: string
    sql: ${TABLE}.Alter_routine_priv ;;
  }

  dimension: create_priv {
    type: string
    sql: ${TABLE}.Create_priv ;;
  }

  dimension: create_routine_priv {
    type: string
    sql: ${TABLE}.Create_routine_priv ;;
  }

  dimension: create_tmp_table_priv {
    type: string
    sql: ${TABLE}.Create_tmp_table_priv ;;
  }

  dimension: create_view_priv {
    type: string
    sql: ${TABLE}.Create_view_priv ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.Db ;;
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

  dimension: references_priv {
    type: string
    sql: ${TABLE}.References_priv ;;
  }

  dimension: select_priv {
    type: string
    sql: ${TABLE}.Select_priv ;;
  }

  dimension: show_view_priv {
    type: string
    sql: ${TABLE}.Show_view_priv ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
