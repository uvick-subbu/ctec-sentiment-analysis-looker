view: violence_predictions {
  sql_table_name: `icyclops-sentiment-analysis.twitter_sentiment_curated_sample.violence_predictions`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: county_fips {
    type: number
    map_layer_name: us_counties_fips
    sql: ${TABLE}.fp_fips ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.fp_county ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.violence_probability ;;
  }

  dimension: state {
    map_layer_name: us_states
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: past_violence {
    type: number
    sql: ${TABLE}.total_past_violence ;;
  }

  measure: avg_probability {
    type: average
    sql: ${TABLE}.violence_probability ;;
  }
}
