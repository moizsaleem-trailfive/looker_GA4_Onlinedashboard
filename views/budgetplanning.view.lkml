view: budgetplanning {
  sql_table_name: `evident-catcher-381918.sql_server_live_dbo.budgetplanning` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
  dimension: actionbudget {
    type: string
    sql: ${TABLE}.actionbudget ;;
  }
  dimension: boardsbudget {
    type: string
    sql: ${TABLE}.boardsbudget ;;
  }
  dimension: budgetagreement {
    type: string
    sql: ${TABLE}.budgetagreement ;;
  }
  dimension: clientid {
    type: number
    value_format_name: id
    sql: ${TABLE}.clientid ;;
  }
  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }
  dimension_group: createddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.createddate ;;
  }
  dimension: date {
    type: number
    sql: ${TABLE}.date ;;
  }
  dimension: facebookbudget {
    type: string
    sql: ${TABLE}.facebookbudget ;;
  }
  dimension: fc {
    type: string
    sql: ${TABLE}.fc ;;
  }
  dimension: googlebudget {
    type: string
    sql: ${TABLE}.googlebudget ;;
  }
  dimension: indeedbudget {
    type: string
    sql: ${TABLE}.indeedbudget ;;
  }
  dimension: linkedinbudget {
    type: string
    sql: ${TABLE}.linkedinbudget ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: pl {
    type: string
    sql: ${TABLE}.pl ;;
  }
  dimension: plthismonth {
    type: string
    sql: ${TABLE}.plthismonth ;;
  }
  dimension: rest {
    type: string
    sql: ${TABLE}.rest ;;
  }
  dimension: restbudget {
    type: string
    sql: ${TABLE}.restbudget ;;
  }
  dimension: sp {
    type: string
    sql: ${TABLE}.sp ;;
  }
  dimension: updatedby {
    type: string
    sql: ${TABLE}.updatedby ;;
  }
  dimension_group: updateddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.updateddate ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [id, budgetplanningjobboard.count]
  }
}
