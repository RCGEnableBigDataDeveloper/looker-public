view: ndb_binlog_index {
  sql_table_name: mysql.ndb_binlog_index ;;

  dimension: deletes {
    type: number
    sql: ${TABLE}.deletes ;;
  }

  dimension: epoch {
    type: number
    sql: ${TABLE}.epoch ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.File ;;
  }

  dimension: gci {
    type: number
    sql: ${TABLE}.gci ;;
  }

  dimension: inserts {
    type: number
    sql: ${TABLE}.inserts ;;
  }

  dimension: next_file {
    type: string
    sql: ${TABLE}.next_file ;;
  }

  dimension: next_position {
    type: number
    sql: ${TABLE}.next_position ;;
  }

  dimension: orig_epoch {
    type: number
    sql: ${TABLE}.orig_epoch ;;
  }

  dimension: orig_server_id {
    type: number
    sql: ${TABLE}.orig_server_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.Position ;;
  }

  dimension: schemaops {
    type: number
    sql: ${TABLE}.schemaops ;;
  }

  dimension: updates {
    type: number
    sql: ${TABLE}.updates ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
