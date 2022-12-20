# Define the database connection to be used for this model.
connection: "icyclops_sentiment_analysis_bigquery"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: tweets_with_sentiment_model_v1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tweets_with_sentiment_model_v1_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Tweets with Sentiment Model V1"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: county_sentiments {
  join: tweet_sentiment {
    type: inner
    sql_on: ${county_sentiments.id} = ${tweet_sentiment.id} ;;
    relationship: one_to_one
  }
}

explore: county_baselines {}


explore: sen_date_baseline {}
