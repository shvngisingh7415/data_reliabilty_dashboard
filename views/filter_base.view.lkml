view: filter_base {
  # This tells Looker exactly where the data lives in BigQuery
  sql_table_name: `gdatacomms.my_filter_data.filter_data` ;;

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  # Add this measure to enable the "(x)" dynamic counts in your filters
  measure: count {
    type: count
  }
}
