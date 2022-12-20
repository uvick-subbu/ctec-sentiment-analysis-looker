# The name of this view in Looker is "County Sentiments Aggregated"
view: county_sentiments_aggregated {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.county_sentiments_aggregated`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "County" in Explore.

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: negatives {
    type: number
    sql: ${TABLE}.negatives ;;
  }

  dimension: net_score {
    type: number
    sql: ${TABLE}.net_score ;;
  }

  dimension: net_sentiment_score {
    type: number
    sql: ${TABLE}.net_sentiment_score ;;
  }

  dimension: positives {
    type: number
    sql: ${TABLE}.positives ;;
  }

  dimension: posts {
    type: number
    sql: ${TABLE}.posts ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [posts]
  }
}
