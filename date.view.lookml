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
    order_by_field: day_id

  - dimension: day_id
    view_label: "Date"
    type: number
    sql: ${TABLE}.day_id

  - dimension: month_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_desc
    order_by_field: month_id

  - dimension: month_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_id
    
  - dimension: quarter_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.quarter_desc
    order_by_field: quarter_id

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
    order_by_field: week_id

  - dimension: week_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.week_id

  - dimension: year_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_desc
    order_by_field: year_id

  - dimension: year_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_id


