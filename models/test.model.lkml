connection: "mysql"

# include all the views
include: "/views/**/*.view"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

explore: columns_priv {}

explore: db {}

explore: engine_cost {}

explore: event {}

explore: func {}

explore: general_log {}

explore: gtid_executed {}

explore: help_category {}

explore: help_keyword {}

explore: help_relation {
  join: help_topic {
    type: left_outer
    sql_on: ${help_relation.help_topic_id} = ${help_topic.help_topic_id} ;;
    relationship: many_to_one
  }

  join: help_keyword {
    type: left_outer
    sql_on: ${help_relation.help_keyword_id} = ${help_keyword.help_keyword_id} ;;
    relationship: many_to_one
  }

  join: help_category {
    type: left_outer
    sql_on: ${help_topic.help_category_id} = ${help_category.help_category_id} ;;
    relationship: many_to_one
  }
}

explore: help_topic {
  join: help_category {
    type: left_outer
    sql_on: ${help_topic.help_category_id} = ${help_category.help_category_id} ;;
    relationship: many_to_one
  }
}

explore: innodb_index_stats {}

explore: innodb_table_stats {}

explore: ndb_binlog_index {}

explore: plugin {}

explore: proc {}

explore: procs_priv {}

explore: proxies_priv {}

explore: reasoncode {}

explore: rule {}

explore: rules {}

explore: rules_detail {}

explore: servers {}

explore: server_cost {}

explore: slave_master_info {}

explore: slave_relay_log_info {}

explore: slave_worker_info {}

explore: slow_log {}

explore: tables_priv {}

explore: time_zone {}

explore: time_zone_leap_second {}

explore: time_zone_name {
  join: time_zone {
    type: left_outer
    sql_on: ${time_zone_name.time_zone_id} = ${time_zone.time_zone_id} ;;
    relationship: many_to_one
  }
}

explore: time_zone_transition {
  join: time_zone {
    type: left_outer
    sql_on: ${time_zone_transition.time_zone_id} = ${time_zone.time_zone_id} ;;
    relationship: many_to_one
  }
}

explore: time_zone_transition_type {
  join: time_zone {
    type: left_outer
    sql_on: ${time_zone_transition_type.time_zone_id} = ${time_zone.time_zone_id} ;;
    relationship: many_to_one
  }
}

explore: user {}
