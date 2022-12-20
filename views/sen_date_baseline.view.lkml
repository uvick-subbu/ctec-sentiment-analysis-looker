view: sen_date_baseline {
  # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;

# id  INTEGER NULLABLE
# Date  DATETIME  NULLABLE
# Sentiment_Type  STRING  NULLABLE
# senate_state_text STRING  NULLABLE
# value INTEGER NULLABLE
# state STRING  NULLABLE

  # Define your dimensions and measures here, like this:
  dimension: id {
    description: "Unique ID for each user that has ordered"
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: Date {
    description: "Date of the Sentiment"
    type: date_time
    datatype: datetime
    sql: ${TABLE}.Date ;;
  }

  dimension: sentiment_type {
    description: "Whether it is a poistive sentiment or negative sentiment"
    type: string
    sql: ${TABLE}.Sentiment_Type ;;
  }

  dimension: value {
    description: "No of sentiment_types"
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: state {
    description: "Corresponding United State"
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  measure: positives {
    type: sum
    filters: [sen_date_baseline.sentiment_type: "Positive Sentiment"]
    sql:  ${TABLE}.value ;;
  }

  measure: negatives {
    type: sum
    filters: [sen_date_baseline.sentiment_type: "Negative Sentiment"]
    sql:  ${TABLE}.value;;
  }

  measure: total_score {
    type: number
    sql: (${positives} - ${negatives});;
  }

  # measure: total_score {
  #   type: sum
  #   sql:  ${TABLE}.score ;;
  # }

  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: sen_date_baseline {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
