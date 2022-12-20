# The name of this view in Looker is "Posts"
view: posts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `twitter_sentiment_curated_sample.posts`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Media Type" in Explore.

  dimension: media_type {
    type: string
    sql: ${TABLE}.Media_Type ;;
  }

  dimension: post_id {
    type: string
    sql: ${TABLE}.Post_ID ;;
  }

  dimension: published_date__gmt_04_00__new_york {
    type: string
    sql: ${TABLE}.Published_Date__GMT_04_00__New_York ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.Sequence ;;
  }

  dimension: sound_bite_sentiment {
    type: string
    sql: ${TABLE}.Sound_Bite_Sentiment ;;
  }

  dimension: sound_bite_text {
    type: string
    sql: ${TABLE}.Sound_Bite_Text ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.Source_Type ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
