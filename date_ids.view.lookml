
- view: date_ids
  fields:

  - dimension: month_id
    view_label: "Date"
    label: "Month ID"
    type: string
    sql: ${TABLE}.month_id
    suggest_explore: t_cal_445
    suggest_dimension: month_id
    

# Hiding because we don't have time series measures for quarter    
#   - dimension: quarter_desc
#     view_label: "Date"
#     label: "Quarter"
#     type: string
#     can_filter: false
#     sql: ${TABLE}.quarter_desc
#     order_by_field: quarter_id
#     suggest_explore: t_cal_445
#     suggest_dimension: quarter_desc
# 
#   - dimension: quarter_id
#     view_label: "Date"
#     hidden: true
#     type: string
#     sql: ${TABLE}.quarter_id


  - dimension: week_id
    view_label: "Date"
    label: "Week ID"
    type: string
    sql: ${TABLE}.week_id
    suggest_explore: t_cal_445
    suggest_dimension: week_id


  - dimension: year_id
    view_label: "Date"
    label: "Year ID"
    type: string
    sql: ${TABLE}.year_desc
    suggest_explore: t_cal_445
    suggest_dimension: year_id


