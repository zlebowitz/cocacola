# This explore is used for suggestions
- explore: t_cal_445
  hidden: true
  
- view: t_cal_445
  sql_table_name: report.t_cal_445
  fields:

#   - dimension_group: day
#     type: time
#     timeframes: [time, date, week, month]
#     sql: ${TABLE}.day_date

  - dimension: day_desc
    type: string
    sql: ${TABLE}.day_desc

  - dimension: day_id
    type: number
    sql: ${TABLE}.day_id

  - dimension: month_desc
    type: string
    sql: ${TABLE}.month_desc

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: quarter_desc
    type: string
    sql: ${TABLE}.quarter_desc

  - dimension: quarter_id
    type: string
    sql: ${TABLE}.quarter_id

#   - dimension: to_date_offset
#     type: number
#     sql: ${TABLE}.to_date_offset

  - dimension: week_desc
    type: string
    sql: ${TABLE}.week_desc

  - dimension: week_id
    type: string
    sql: ${TABLE}.week_id

  - dimension: year_desc
    type: string
    sql: ${TABLE}.year_desc

  - dimension: year_id
    type: string
    sql: ${TABLE}.year_id


