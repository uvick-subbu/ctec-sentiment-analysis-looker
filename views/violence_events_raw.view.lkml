view: violence_events_raw {
  sql_table_name: `icyclops-sentiment-analysis.twitter_sentiment_curated_sample.violence_events_raw`
    ;;

  dimension: actor1 {
    type: string
    sql: ${TABLE}.actor1 ;;
  }

  dimension: actor2 {
    type: string
    sql: ${TABLE}.actor2 ;;
  }

  dimension: admin1 {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.admin1 ;;
  }

  dimension: admin2 {
    type: string
    sql: ${TABLE}.admin2 ;;
  }

  dimension: admin3 {
    type: number
    sql: ${TABLE}.admin3 ;;
  }

  dimension: assoc_actor_1 {
    type: string
    sql: ${TABLE}.assoc_actor_1 ;;
  }

  dimension: assoc_actor_2 {
    type: string
    sql: ${TABLE}.assoc_actor_2 ;;
  }

  dimension: booster_vaccine_percent {
    type: number
    sql: ${TABLE}.booster_vaccine_percent ;;
  }

  dimension: ci90_lb017_p_2020 {
    type: number
    sql: ${TABLE}.CI90LB017P_2020 ;;
  }

  dimension: ci90_lballp_2020 {
    type: number
    sql: ${TABLE}.CI90LBALLP_2020 ;;
  }

  dimension: ci90_ub017_p_2020 {
    type: number
    sql: ${TABLE}.CI90UB017P_2020 ;;
  }

  dimension: ci90_uballp_2020 {
    type: number
    sql: ${TABLE}.CI90UBALLP_2020 ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: data_id {
    type: number
    sql: ${TABLE}.data_id ;;
  }

  dimension_group: date_assumed_office__state_governor_ {
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
    sql: ${TABLE}.Date_assumed_office__State_Governor_ ;;
  }

  dimension: event_date {
    # type: string
    # sql: ${TABLE}.event_date ;;
    type: date
    datatype: date
    sql: PARSE_DATE('%d %B %Y', ${TABLE}.event_date);;
  }

  dimension: event_id_cnty {
    type: string
    sql: ${TABLE}.event_id_cnty ;;
  }

  dimension: event_id_no_cnty {
    type: number
    value_format_name: id
    sql: ${TABLE}.event_id_no_cnty ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: fatalities {
    type: number
    sql: ${TABLE}.fatalities ;;
  }

  dimension: geo_precision {
    type: number
    sql: ${TABLE}.geo_precision ;;
  }

  dimension: indexed_insurrectionists {
    type: number
    sql: ${TABLE}.Indexed_Insurrectionists ;;
  }

  dimension: inter1 {
    type: number
    sql: ${TABLE}.inter1 ;;
  }

  dimension: inter2 {
    type: number
    sql: ${TABLE}.inter2 ;;
  }

  dimension: interaction {
    type: number
    sql: ${TABLE}.interaction ;;
  }

  dimension: iso {
    type: number
    sql: ${TABLE}.iso ;;
  }

  dimension: iso3 {
    type: string
    sql: ${TABLE}.iso3 ;;
  }

  dimension: jan__6_insurrectionists {
    type: number
    sql: ${TABLE}.Jan__6_Insurrectionists ;;
  }

  dimension: jan__6_insurrectionists__per_capita_ {
    type: number
    sql: ${TABLE}.Jan__6_Insurrectionists__Per_Capita_ ;;
  }

  dimension: jan__6_insurrectionists__state_ {
    type: number
    sql: ${TABLE}.Jan__6_Insurrectionists__State_ ;;
  }

  dimension: jan__6_insurrectionists__state_per_capita_ {
    type: number
    sql: ${TABLE}.Jan__6_Insurrectionists__State_Per_Capita_ ;;
  }

  dimension: junior_senator_party {
    type: string
    sql: ${TABLE}.junior_senator_party ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: median_household_income_2020 {
    type: number
    sql: ${TABLE}.Median_Household_Income_2020 ;;
  }

  dimension: meta_2020_election_violence_protests {
    type: number
    sql: ${TABLE}.Meta_2020_Election_Violence_Protests ;;
  }

  dimension: meta_2020_presidential_election_margin_state {
    type: number
    sql: ${TABLE}.Meta_2020_Presidential_Election_Margin_State ;;
  }

  dimension: meta_2020_presidential_election_result_state {
    type: string
    sql: ${TABLE}.Meta_2020_Presidential_Election_Result_State ;;
  }

  dimension: meta_2021_2022_trump_rally {
    type: number
    sql: ${TABLE}.Meta_2021_2022_Trump_Rally ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: pctpov017_2020 {
    type: number
    sql: ${TABLE}.PCTPOV017_2020 ;;
  }

  dimension: pctpovall_2020 {
    type: number
    sql: ${TABLE}.PCTPOVALL_2020 ;;
  }

  dimension: percent_of_adults_completing_some_college_or_associate_s_degree__2016_20 {
    type: number
    sql: ${TABLE}.Percent_of_adults_completing_some_college_or_associate_s_degree__2016_20 ;;
  }

  dimension: percent_of_adults_with_a_bachelor_s_degree_or_higher_2015_19 {
    type: number
    sql: ${TABLE}.Percent_of_adults_with_a_bachelor_s_degree_or_higher_2015_19 ;;
  }

  dimension: percent_of_adults_with_a_high_school_diploma_only__2016_20 {
    type: number
    sql: ${TABLE}.Percent_of_adults_with_a_high_school_diploma_only__2016_20 ;;
  }

  dimension: percent_of_adults_with_less_than_a_high_school_diploma__2016_20 {
    type: number
    sql: ${TABLE}.Percent_of_adults_with_less_than_a_high_school_diploma__2016_20 ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: s_no {
    type: number
    sql: ${TABLE}.s_no ;;

    action: {
      label: "Update Violence Crime Rate"
      url: "https://us-east4-icyclops-sentiment-analysis.cloudfunctions.net/change-bq-data"
      param: {
        name:"id"
        value: "{{value}}"
      }
      form_param: {
        name: "changevcr"
        type: string
        label: "Violence Crime Rate"
        description: "Enter new Violence Crime Rate above."
        required: yes
      }
    }

  }

  dimension: senior_senator_party {
    type: string
    sql: ${TABLE}.senior_senator_party ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: source_scale {
    type: string
    sql: ${TABLE}.source_scale ;;
  }

  dimension: state_governor_party {
    type: string
    sql: ${TABLE}.State_Governor_Party ;;
  }

  dimension: state_population {
    type: number
    sql: ${TABLE}.state_population ;;
  }

  dimension: state_population_rank {
    type: number
    sql: ${TABLE}.state_population_rank ;;
  }

  dimension: sub_event_type {
    type: string
    sql: ${TABLE}.sub_event_type ;;
  }

  dimension: time_precision {
    type: number
    sql: ${TABLE}.time_precision ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: unemployment_rate {
    type: number
    sql: ${TABLE}.unemployment_rate ;;
  }

  dimension: vaccine_series_complete_pop_pct {
    type: number
    sql: ${TABLE}.vaccine_series_complete_pop_pct ;;
  }

  dimension: violent_crime_rate {
    type: number
    sql: ${TABLE}.violent_crime_rate ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: population_count {
    type: average
    sql: ${TABLE}.state_population ;;
    drill_fields: []
  }
}
