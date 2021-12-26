view: reasoncode {
  sql_table_name: mysql.reasoncode ;;

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

  dimension: fcms_non_mon_txt {
    type: string
    sql: ${TABLE}.FCMS_NON_MON_TXT ;;
  }

  dimension: memo_perm_ind {
    type: string
    sql: ${TABLE}.MEMO_PERM_IND ;;
  }

  dimension: memo_prty_ind {
    type: string
    sql: ${TABLE}.MEMO_PRTY_IND ;;
  }

  dimension: memo_txt {
    type: string
    sql: ${TABLE}.MEMO_TXT ;;
  }

  dimension: non_mon_sel_typ_cde {
    type: string
    sql: ${TABLE}.NON_MON_SEL_TYP_CDE ;;
  }

  dimension: rsn_cde {
    type: string
    sql: ${TABLE}.RSN_CDE ;;
  }

  dimension: rsn_id {
    type: string
    sql: ${TABLE}.RSN_ID ;;
  }

  dimension: rsn_identifier {
    type: string
    sql: ${TABLE}.RSN_IDENTIFIER ;;
  }

  dimension: rsn_seq {
    type: number
    sql: ${TABLE}.RSN_SEQ ;;
  }

  dimension: rsn_status {
    type: string
    sql: ${TABLE}.RSN_STATUS ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
