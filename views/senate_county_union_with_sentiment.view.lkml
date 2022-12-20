# The name of this view in Looker is "Senate County Union with Sentiment"
view: senate_county_union_with_sentiment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.senate_county_union_with_sentiment`
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
  # This dimension will be called "Author Gender" in Explore.

  dimension: author_gender {
    type: string
    sql: ${TABLE}.Author_Gender ;;
  }

  dimension: author_handle {
    type: string
    sql: ${TABLE}.Author_Handle ;;
  }

  dimension: author_id {
    type: number
    sql: ${TABLE}.Author_ID ;;
  }

  dimension: author_location___city_1 {
    type: string
    sql: ${TABLE}.Author_Location___City_1 ;;
  }

  dimension: author_location___city_2 {
    type: string
    sql: ${TABLE}.Author_Location___City_2 ;;
  }

  dimension: author_location___country_1 {
    type: string
    sql: ${TABLE}.Author_Location___Country_1 ;;
  }

  dimension: author_location___country_2 {
    type: string
    sql: ${TABLE}.Author_Location___Country_2 ;;
  }

  dimension: author_location___other {
    type: string
    sql: ${TABLE}.Author_Location___Other ;;
  }

  dimension: author_location___state_province_1 {
    type: string
    sql: ${TABLE}.Author_Location___State_Province_1 ;;
  }

  dimension: author_location___state_province_2 {
    type: string
    sql: ${TABLE}.Author_Location___State_Province_2 ;;
  }

  dimension: author_name {
    type: string
    sql: ${TABLE}.Author_Name ;;
  }

  dimension: author_reddit_karma {
    type: string
    sql: ${TABLE}.Author_Reddit_Karma ;;
  }

  dimension: author_url {
    type: string
    sql: ${TABLE}.Author_URL ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.Domain ;;
  }

  dimension: followers_daily_unique_visitors_subscribers {
    type: number
    sql: ${TABLE}.Followers_Daily_Unique_Visitors_Subscribers ;;
  }

  dimension: interests {
    type: string
    sql: ${TABLE}.Interests ;;
  }

  dimension: is_paid {
    type: string
    sql: ${TABLE}.Is_Paid ;;
  }

  dimension: media_link {
    type: string
    sql: ${TABLE}.Media_Link ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}.Media_Type ;;
  }

  dimension: negative_objects {
    type: string
    sql: ${TABLE}.Negative_Objects ;;
  }

  dimension: positive_objects {
    type: string
    sql: ${TABLE}.Positive_Objects ;;
  }

  dimension: post_comments {
    type: number
    sql: ${TABLE}.Post_Comments ;;
  }

  dimension: post_dislikes {
    type: number
    sql: ${TABLE}.Post_Dislikes ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}.Post_ID ;;
  }

  dimension: post_likes {
    type: number
    sql: ${TABLE}.Post_Likes ;;
  }

  dimension: post_shares {
    type: number
    sql: ${TABLE}.Post_Shares ;;
  }

  dimension: post_type {
    type: string
    sql: ${TABLE}.Post_Type ;;
  }

  dimension: post_views {
    type: number
    sql: ${TABLE}.Post_Views ;;
  }

  dimension: professions {
    type: string
    sql: ${TABLE}.Professions ;;
  }

  dimension: published_date__gmt_04_00__new_york {
    type: string
    sql: ${TABLE}.Published_Date__GMT_04_00__New_York ;;
  }

  dimension: quoted_author_handle {
    type: string
    sql: ${TABLE}.Quoted_Author_Handle ;;
  }

  dimension: quoted_author_name {
    type: string
    sql: ${TABLE}.Quoted_Author_Name ;;
  }

  dimension: quoted_post {
    type: string
    sql: ${TABLE}.Quoted_Post ;;
  }

  dimension: ratings_and_scores {
    type: number
    sql: ${TABLE}.Ratings_and_Scores ;;
  }

  dimension: reddit_score {
    type: string
    sql: ${TABLE}.Reddit_Score ;;
  }

  dimension: richness {
    type: number
    sql: ${TABLE}.Richness ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}.Sentiment ;;
  }

  dimension: sound_bite_text {
    type: string
    sql: ${TABLE}.Sound_Bite_Text ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.Source_Type ;;
  }

  dimension: tags {
    type: number
    sql: ${TABLE}.Tags ;;
  }

  dimension: title {
    type: number
    sql: ${TABLE}.Title ;;
  }

  dimension: total_engagements {
    type: number
    sql: ${TABLE}.Total_Engagements ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: [id, quoted_author_name, author_name]
  }
}
