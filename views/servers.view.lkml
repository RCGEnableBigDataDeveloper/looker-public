view: servers {
  sql_table_name: mysql.servers ;;

  dimension: db {
    type: string
    sql: ${TABLE}.Db ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension: port {
    type: number
    sql: ${TABLE}.Port ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.Server_name ;;
  }

  dimension: socket {
    type: string
    sql: ${TABLE}.Socket ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: wrapper {
    type: string
    sql: ${TABLE}.Wrapper ;;
  }

  measure: count {
    type: count
    drill_fields: [server_name, username]
  }
}
