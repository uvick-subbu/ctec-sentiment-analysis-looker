view: sen_variables_elections {
  sql_table_name: `icyclops-sentiment-analysis.twitter_sentiment_curated_sample.sen_variables_elections`
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

  dimension: d_candidate {
    type: string
    sql: ${TABLE}.D_Candidate ;;
  }

  dimension: incumbent {
    type: string
    sql: ${TABLE}.Incumbent ;;
  }

  dimension: incumbent_party {
    type: string
    sql: ${TABLE}.Incumbent_Party ;;
  }

  dimension: incumbent_running {
    type: number
    sql: ${TABLE}.Incumbent_Running ;;
  }

  dimension: incumbent_term {
    type: number
    sql: ${TABLE}.Incumbent_Term ;;
  }

  dimension: meta_2022_consensus {
    type: string
    sql: ${TABLE}.Meta_2022_Consensus ;;
  }

  dimension: national_prominance_score {
    type: number
    sql: ${TABLE}.National_Prominance_Score ;;
  }

  dimension: r_candidate {
    type: string
    sql: ${TABLE}.R_Candidate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: trump_maga_endorsed_candidate {
    type: number
    sql: ${TABLE}.Trump_MAGA_Endorsed_Candidate ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
