view: demo_violence_prob {
  sql_table_name: `icyclops-sentiment-analysis.twitter_sentiment_curated_sample.d_demo_violence_prob`
    ;;

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: county_fips {
    type: number
    map_layer_name: us_counties_fips
    sql: ${TABLE}.fp_fips ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: state {
    map_layer_name: us_states
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: violence_probability {
    type: number
    sql: ${TABLE}.violence_probability ;;
  }

  measure: avg_probability {
    type: average
    sql: ${TABLE}.violence_probability ;;
  }
}
