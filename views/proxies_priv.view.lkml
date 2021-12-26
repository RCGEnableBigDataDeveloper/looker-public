view: proxies_priv {
  sql_table_name: mysql.proxies_priv ;;

  dimension: grantor {
    type: string
    sql: ${TABLE}.Grantor ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.Host ;;
  }

  dimension: proxied_host {
    type: string
    sql: ${TABLE}.Proxied_host ;;
  }

  dimension: proxied_user {
    type: string
    sql: ${TABLE}.Proxied_user ;;
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

  dimension: with_grant {
    type: yesno
    sql: ${TABLE}.With_grant ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
