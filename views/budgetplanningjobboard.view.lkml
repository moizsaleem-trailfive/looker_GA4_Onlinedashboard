view: budget_planning_jobboard {
  sql_table_name: `evident-catcher-381918.sql_server_live_dbo.BudgetPlanningJobboard` ;;
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
  dimension: budgetplanningid {
    type: number
    value_format_name: id
    sql: ${TABLE}.budgetplanningid ;;
  }
  dimension: clientid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.clientid ;;
  }
  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }
  dimension_group: createddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createddate ;;
  }
  dimension: fc {
    type: number
    sql: ${TABLE}.fc ;;
  }
  dimension: jobboardid {
    type: number
    value_format_name: id
    sql: ${TABLE}.jobboardid ;;
  }
  dimension: pl {
    type: string
    sql: ${TABLE}.pl ;;
  }
  dimension: sp {
    type: number
    sql: ${TABLE}.sp ;;
  }
  dimension: updatedby {
    type: string
    sql: ${TABLE}.updatedby ;;
  }
  dimension_group: updateddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updateddate ;;
  }
  measure: count {
    type: count
    drill_fields: [id, client.name, client.id]
  }
}
