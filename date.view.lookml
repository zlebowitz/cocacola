- view: date
  fields: 

  - dimension_group: day
    view_label: "Date"
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.day_date

  - dimension: day_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.day_desc

  - dimension: day_id
    view_label: "Date"
    type: number
    sql: ${TABLE}.day_id

  - dimension: month_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_desc

  - dimension: month_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_id
    
  - dimension: quarter_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.quarter_desc

  - dimension: quarter_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.quarter_id

  - dimension: to_date_offset
    view_label: "Date"
    type: number
    sql: ${TABLE}.to_date_offset

  - dimension: week_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.week_desc

  - dimension: week_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.week_id

  - dimension: year_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_desc

  - dimension: year_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_id


