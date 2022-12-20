view: sen_variables_counties {
  sql_table_name: `icyclops-sentiment-analysis.twitter_sentiment_curated_sample.sen_variables_counties`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: artifact_sentiment___ {
    type: number
    sql: ${TABLE}.Artifact_Sentiment___ ;;
  }

  dimension: artifact_volume___ {
    type: number
    sql: ${TABLE}.Artifact_Volume___ ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }

  dimension: firearm_fatalities_value {
    type: number
    sql: ${TABLE}.Firearm_Fatalities_Value ;;
  }

  dimension: indexed_insurrectionists {
    type: number
    sql: ${TABLE}.Indexed_Insurrectionists ;;
  }

  dimension: indexed_vaccination {
    type: number
    sql: ${TABLE}.Indexed_Vaccination ;;
  }

  dimension: jan_6_insurrectionists {
    type: number
    sql: ${TABLE}.Jan_6_Insurrectionists ;;
  }

  dimension: jan_6_insurrectionists__per_capita_ {
    type: number
    sql: ${TABLE}.Jan_6_Insurrectionists__Per_Capita_ ;;
  }

  dimension: jan_6_insurrectionists__state_ {
    type: number
    sql: ${TABLE}.Jan_6_Insurrectionists__State_ ;;
  }

  dimension: jan_6_insurrectionists__state_per_capita_ {
    type: number
    sql: ${TABLE}.Jan_6_Insurrectionists__State_Per_Capita_ ;;
  }

  dimension: meta_2020_election_violence_protests {
    type: number
    sql: ${TABLE}.Meta_2020_Election_Violence_Protests ;;
  }

  dimension: meta_2020_presidential_election___margin__state_ {
    type: number
    sql: ${TABLE}.Meta_2020_Presidential_Election___Margin__State_ ;;
  }

  dimension: meta_2020_presidential_election___result__state_ {
    type: string
    sql: ${TABLE}.Meta_2020_Presidential_Election___Result__State_ ;;
  }

  dimension: meta_2021_2022_trump_rally {
    type: number
    sql: ${TABLE}.Meta_2021_2022_Trump_Rally ;;
  }

  dimension: number_of__past_political_violent_events {
    type: number
    sql: ${TABLE}.Number_of__Past_Political_Violent_Events ;;
  }

  dimension: population__2021_est_ {
    type: number
    sql: ${TABLE}.Population__2021_Est_ ;;
  }

  dimension: population_rank {
    type: number
    sql: ${TABLE}.Population_Rank ;;
  }

  dimension: simulation_a {
    type: number
    sql: ${TABLE}.Simulation_A ;;
  }

  dimension: simulation_b {
    type: number
    sql: ${TABLE}.Simulation_B ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_population__2021_est_ {
    type: number
    sql: ${TABLE}.State_Population__2021_Est_ ;;
  }

  dimension: threats_against_poll_workers__state_ {
    type: number
    sql: ${TABLE}.Threats_Against_Poll_Workers__State_ ;;
  }

  dimension: threats_against_poll_workers__state_per_capita_ {
    type: number
    sql: ${TABLE}.Threats_Against_Poll_Workers__State_Per_Capita_ ;;
  }

  dimension: vaccination_rates {
    type: number
    sql: ${TABLE}.Vaccination_Rates ;;
  }

  dimension: violence_baseline {
    type: number
    sql: ${TABLE}.Violence_Baseline ;;
  }

  dimension: violent_crimes_value {
    type: number
    sql: ${TABLE}.Violent_Crimes_Value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_population_rank{
    type: sum
    sql: ${TABLE}.Population_Rank ;;
  }

  measure: total_artifact_volume {
    type: sum
    sql: ${TABLE}.Artifact_Volume___ ;;
  }

  measure: total_violent_crimes_value {
    type: sum
    sql:  ${TABLE}.Violent_Crimes_Value ;;
  }

  measure: total_threats_against_poll_workers__state {
    type: sum
    sql: ${TABLE}.Threats_Against_Poll_Workers__State_ ;;
  }

  measure: total_number_of__past_political_violent_events {
    type: sum
    sql: ${TABLE}.Number_of__Past_Political_Violent_Events;;
  }

  measure: total_2020_election_violence_protests {
    type: sum
    sql: ${TABLE}.Meta_2020_Election_Violence_Protests ;;
  }

  measure: total_2020_presidential_election___margin__state_ {
    type: sum
    sql: ${TABLE}.Meta_2020_Presidential_Election___Margin__State_ ;;
  }

}
