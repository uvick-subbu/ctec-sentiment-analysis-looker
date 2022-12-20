# The name of this view in Looker is "County Baselines"
view: county_baselines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.county_baselines`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "County " in Explore.

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: created_at {
    type: date_time
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
