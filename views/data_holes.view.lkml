view: data_holes {
  sql_table_name: `gdatacomms.dc_data_holes.data_holes` ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: has_data {
    type: string
    sql: ${TABLE}.Has_Data ;;
  }
  dimension: latest_date {
    type: string
    sql: ${TABLE}.Latest_Date ;;
  }
  dimension: observation_value {
    type: number
    sql: ${TABLE}.Observation_Value ;;
  }
  dimension: place_dcid {
    type: string
    sql: ${TABLE}.Place_DCID ;;
  }
  dimension: place_name {
    type: string
    sql: ${TABLE}.Place_Name ;;
  }
  dimension: place_type {
    type: string
    sql: ${TABLE}.Place_Type ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: stat_var_dcid {
    type: string
    sql: ${TABLE}.StatVar_DCID ;;
  }
  dimension: stat_var_name {
    type: string
    sql: ${TABLE}.StatVar_Name ;;
  }
  dimension: topic_area {
    type: string
    sql: ${TABLE}.Topic_Area ;;
  }
  measure: count {
    type: count
    drill_fields: [place_name, stat_var_name]
  }
}
