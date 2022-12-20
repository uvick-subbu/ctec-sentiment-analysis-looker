# The name of this view in Looker is "Counties"
view: counties {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.counties`
    ;;
  drill_fields: [county]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: county {
    primary_key: yes
    type: string
    sql: ${TABLE}.county ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "County Fips" in Explore.

  dimension: county_fips {
    type: string
    map_layer_name: us_counties_fips
    sql: ${TABLE}.county_fips ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [county, state_name]
  }
}
