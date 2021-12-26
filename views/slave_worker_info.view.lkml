view: slave_worker_info {
  sql_table_name: mysql.slave_worker_info ;;
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

  dimension: checkpoint_group_bitmap {
    type: string
    sql: ${TABLE}.Checkpoint_group_bitmap ;;
  }

  dimension: checkpoint_group_size {
    type: number
    sql: ${TABLE}.Checkpoint_group_size ;;
  }

  dimension: checkpoint_master_log_name {
    type: string
    sql: ${TABLE}.Checkpoint_master_log_name ;;
  }

  dimension: checkpoint_master_log_pos {
    type: number
    sql: ${TABLE}.Checkpoint_master_log_pos ;;
  }

  dimension: checkpoint_relay_log_name {
    type: string
    sql: ${TABLE}.Checkpoint_relay_log_name ;;
  }

  dimension: checkpoint_relay_log_pos {
    type: number
    sql: ${TABLE}.Checkpoint_relay_log_pos ;;
  }

  dimension: checkpoint_seqno {
    type: number
    sql: ${TABLE}.Checkpoint_seqno ;;
  }

  dimension: master_log_name {
    type: string
    sql: ${TABLE}.Master_log_name ;;
  }

  dimension: master_log_pos {
    type: number
    sql: ${TABLE}.Master_log_pos ;;
  }

  dimension: relay_log_name {
    type: string
    sql: ${TABLE}.Relay_log_name ;;
  }

  dimension: relay_log_pos {
    type: number
    sql: ${TABLE}.Relay_log_pos ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      relay_log_name,
      master_log_name,
      checkpoint_relay_log_name,
      checkpoint_master_log_name,
      channel_name
    ]
  }
}
