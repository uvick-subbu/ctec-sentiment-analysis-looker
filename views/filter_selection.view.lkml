view: filter_selection {
  label: ""
  sql_table_name: `icyclops-sentiment-analysis.violence_prediction.filter_selection`
    ;;

  dimension: _2020_presidential_election_margin_state {
    type: number
    sql: ${TABLE}._2020_presidential_election_margin_state ;;
  }

  dimension: _2020_presidential_election_result_state {
    type: number
    sql: ${TABLE}._2020_presidential_election_result_state ;;
  }

  dimension: apr {
    type: number
    sql: ${TABLE}.apr ;;
  }

  dimension: aug {
    type: number
    sql: ${TABLE}.aug ;;
  }

  dimension: booster_vaccine_percent {
    type: number
    sql: ${TABLE}.booster_vaccine_percent ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: county_population {
    type: number
    sql: ${TABLE}.county_population ;;
  }

  dimension: dec {
    type: number
    sql: ${TABLE}.dec ;;
  }

  dimension: democrat_junior_senator_party {
    type: number
    sql: ${TABLE}.Democrat_junior_senator_party ;;
  }

  dimension: democrat_senior_senator_party {
    type: number
    sql: ${TABLE}.Democrat_senior_senator_party ;;
  }

  dimension: feb {
    type: number
    sql: ${TABLE}.feb ;;
  }

  dimension: firearm_fatality_deaths {
    type: number
    sql: ${TABLE}.firearm_fatality_deaths ;;
  }

  dimension: firearm_fatality_rate {
    type: number
    sql: ${TABLE}.firearm_fatality_rate ;;
  }

  dimension: geo {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude  ;;
  }

  dimension: hor_majority_party {
    type: number
    sql: ${TABLE}.HOR_majority_party ;;
  }

  dimension: independent_junior_senator_party {
    type: number
    sql: ${TABLE}.Independent_junior_senator_party ;;
  }

  dimension: jan {
    type: number
    sql: ${TABLE}.jan ;;
  }

  dimension: jul {
    type: number
    sql: ${TABLE}.jul ;;
  }

  dimension: jun {
    type: number
    sql: ${TABLE}.jun ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: mar {
    type: number
    sql: ${TABLE}.mar ;;
  }

  dimension: may {
    type: number
    sql: ${TABLE}.may ;;
  }

  dimension: nov {
    type: number
    sql: ${TABLE}.nov ;;
  }

  dimension: oct {
    type: number
    sql: ${TABLE}.oct ;;
  }

  dimension: percent_18_to_24_bachelors_degree_or_higher {
    type: number
    sql: ${TABLE}.percent_18_to_24_bachelors_degree_or_higher ;;
  }

  dimension: percent_18_to_24_highschool_grad {
    type: number
    sql: ${TABLE}.percent_18_to_24_highschool_grad ;;
  }

  dimension: percent_18_to_24_less_than_highschool_grad {
    type: number
    sql: ${TABLE}.percent_18_to_24_less_than_highschool_grad ;;
  }

  dimension: percent_18_to_24_some_college_or_associate_degree {
    type: number
    sql: ${TABLE}.percent_18_to_24_some_college_or_associate_degree ;;
  }

  dimension: percent_25_and_over_9_to_12_no_diploma {
    type: number
    sql: ${TABLE}.percent_25_and_over_9_to_12_no_diploma ;;
  }

  dimension: percent_25_and_over_associates_degree {
    type: number
    sql: ${TABLE}.percent_25_and_over_associates_degree ;;
  }

  dimension: percent_25_and_over_bachelors_degree {
    type: number
    sql: ${TABLE}.percent_25_and_over_bachelors_degree ;;
  }

  dimension: percent_25_and_over_bachelors_degree_or_higher {
    type: number
    sql: ${TABLE}.percent_25_and_over_bachelors_degree_or_higher ;;
  }

  dimension: percent_25_and_over_graduate_or_professional_degree {
    type: number
    sql: ${TABLE}.percent_25_and_over_graduate_or_professional_degree ;;
  }

  dimension: percent_25_and_over_highschool_grad {
    type: number
    sql: ${TABLE}.percent_25_and_over_highschool_grad ;;
  }

  dimension: percent_25_and_over_highschool_grad_or_higher {
    type: number
    sql: ${TABLE}.percent_25_and_over_highschool_grad_or_higher ;;
  }

  dimension: percent_25_and_over_less_than_9_grade {
    type: number
    sql: ${TABLE}.percent_25_and_over_less_than_9_grade ;;
  }

  dimension: percent_25_and_over_some_college_no_degree {
    type: number
    sql: ${TABLE}.percent_25_and_over_some_college_no_degree ;;
  }

  dimension: percent_in_poverty {
    type: number
    sql: ${TABLE}.percent_in_poverty ;;
  }

  dimension: presidential_party {
    type: number
    sql: ${TABLE}.presidential_party ;;
  }

  dimension: prob {
    type: number
    sql: ${TABLE}.prob ;;
  }

  dimension: republic_junior_senator_party {
    type: number
    sql: ${TABLE}.Republic_junior_senator_party ;;
  }

  dimension: republic_senior_senator_party {
    type: number
    sql: ${TABLE}.Republic_senior_senator_party ;;
  }

  dimension: sep {
    type: number
    sql: ${TABLE}.sep ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_governor_party {
    type: number
    sql: ${TABLE}.state_governor_party ;;
  }

  dimension: state_population {
    type: number
    sql: ${TABLE}.state_population ;;
  }

  dimension: state_senate_majority_party {
    type: number
    sql: ${TABLE}.state_senate_majority_party ;;
  }

  dimension: unemp_rate {
    type: number
    sql: ${TABLE}.unemp_rate ;;
  }

  dimension: vaccine_series_complete_pop_pct {
    type: number
    sql: ${TABLE}.vaccine_series_complete_pop_pct ;;
  }

  dimension: violent_crime_rate {
    type: number
    sql: ${TABLE}.violent_crime_rate ;;
  }

  measure: avg_probability {
    type: average
    sql: ${TABLE}.prob ;;
    filters: [filter_selection.prob: ">0"]
    drill_fields: []
  }
}
