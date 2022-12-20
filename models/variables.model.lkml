connection: "icyclops_sentiment_analysis_bigquery"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: variables_datagroup {
  sql_trigger: SELECT max(id) FROM sen_variables_counties ;;
  # interval_trigger: "5 seconds"
  max_cache_age: "1 hour"
}

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

persist_with: variables_datagroup
explore: sen_variables_counties {
  # persist_for: "5 minutes"
  join: counties {
    type: left_outer
    sql_on: ${sen_variables_counties.county} = ${counties.county} AND ${sen_variables_counties.state} = ${counties.state_name};;
    relationship: many_to_one
  }
}


# explore: sen_variables_elections {}
