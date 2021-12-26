view: rule {
  sql_table_name: mysql.rule ;;

  dimension_group: crte_dt {
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
    sql: ${TABLE}.CRTE_DT ;;
  }

  dimension: crte_uid {
    type: string
    sql: ${TABLE}.CRTE_UID ;;
  }

  dimension: rul_expr {
    type: string
    sql: ${TABLE}.RUL_EXPR ;;
  }

  dimension: rul_expr_raw {
    type: string
    sql: ${TABLE}.RUL_EXPR_RAW ;;
  }

  dimension: rul_id {
    type: string
    sql: ${TABLE}.RUL_ID ;;
  }

  dimension: rul_nm {
    type: string
    sql: ${TABLE}.RUL_NM ;;
  }

  dimension: rul_rsn_cde {
    type: string
    sql: ${TABLE}.RUL_RSN_CDE ;;
  }

  dimension: rul_seq {
    type: number
    sql: ${TABLE}.RUL_SEQ ;;
  }

  dimension: rul_stat {
    type: string
    sql: ${TABLE}.RUL_STAT ;;
  }

  dimension: rul_stg {
    type: string
    sql: ${TABLE}.RUL_STG ;;
  }

  dimension_group: rul_upd_tms {
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
    sql: ${TABLE}.RUL_UPD_TMS ;;
  }

  dimension: rul_wght {
    type: number
    sql: ${TABLE}.RUL_WGHT ;;
  }

  dimension_group: upd_dt {
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
    sql: ${TABLE}.UPD_DT ;;
  }

  dimension: upd_uid {
    type: string
    sql: ${TABLE}.UPD_UID ;;
  }

  dimension: vsn {
    type: number
    sql: ${TABLE}.VSN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
