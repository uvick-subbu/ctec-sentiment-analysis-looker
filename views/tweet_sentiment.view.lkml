# The name of this view in Looker is "Tweet Sentiment"
view: tweet_sentiment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.tweet_sentiment`
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
  # This dimension will be called "Magnitude" in Explore.

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

  dimension: tweet {
    type: string
    sql: ${TABLE}.tweet ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
