# The name of this view in Looker is "County Sentiments"
view: county_sentiments {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.county_sentiments`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Coordinates" in Explore.

  dimension: coordinates {
    type: string
    sql: ${TABLE}.coordinates ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: county_fips {
    type: string
    map_layer_name: us_counties_fips
    sql: ${TABLE}.county_fips ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}.Post_ID ;;
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

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: positives {
    type: count_distinct
    filters: [county_sentiments.score: ">0"]
    sql:  ${TABLE}.id ;;
  }

  measure: negatives {
    type: count_distinct
    filters: [county_sentiments.score: "<0"]
    sql:  ${TABLE}.id ;;
  }

  measure: total_score {
    type: sum
    sql:  ${TABLE}.score ;;
  }

  measure: avg_magnitude {
    type: average
    sql:  ${TABLE}.magnitude ;;
  }

  measure: net_sentiment_score {
    type: number
    sql: (${positives} - ${negatives}) / (${positives} + ${negatives});;
  }

  measure: posts {
    type: count_distinct
    sql:  ${TABLE}.id ;;
  }
}
