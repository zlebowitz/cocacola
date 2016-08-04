
- view: date
  fields:

  - dimension: day_desc
    view_label: "Date"
    label: "Date"
    type: string
    can_filter: false
    sql: ${TABLE}.day_desc
    order_by_field: day_id
    suggest_explore: t_cal_445
    suggest_dimension: day_desc

  - dimension: day_id
    hidden: true
    view_label: "Date"
    type: number
    sql: ${TABLE}.day_id

  - dimension: month_desc
    view_label: "Date"
    label: "Month"
    type: string
    can_filter: false
    sql: ${TABLE}.month_desc
    order_by_field: month_id
    suggest_explore: t_cal_445
    suggest_dimension: month_desc
    
  - dimension: month_id
    hidden: true
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_id

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

  - dimension: to_date_offset
    view_label: "Date"
    hidden: true
    type: number
    sql: ${TABLE}.to_date_offset

  - dimension: week_desc
    view_label: "Date"
    label: "Week"
    type: string
    can_filter: false
    sql: ${TABLE}.week_desc
    order_by_field: week_id
    suggest_explore: t_cal_445
    suggest_dimension: week_desc

  - dimension: week_id
    view_label: "Date"
    hidden: true
    type: string
    sql: ${TABLE}.week_id

  - dimension: year_desc
    view_label: "Date"
    label: "Year"
    type: string
    can_filter: false
    sql: ${TABLE}.year_desc
    order_by_field: year_id
    suggest_explore: t_cal_445
    suggest_dimension: year_desc

  - dimension: year_id
    view_label: "Date"
    hidden: true
    type: string
    sql: ${TABLE}.year_id



