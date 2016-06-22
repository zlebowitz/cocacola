- view: working_day_aggregations_time_series
  derived_table:
    sql_trigger_value: SELECT current_date()
    sql: |
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , week_id
      , month_desc
      , cy_working_day as cy_working_days_day
      , py1_working_day as py1_working_days_day
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days_year
        
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days_month
        
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days_week
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days_year  
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days_month
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days_week
      FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445] 

  fields:

  - dimension: bottler_id
    type: number
    hidden: true
    sql: ${TABLE}.bottler_id

  - dimension: day_desc
    type: string
    hidden: true
    sql: ${TABLE}.day_desc

  - dimension: day_id
    type: number
    hidden: true
    sql: ${TABLE}.day_id
  
  - dimension: week_id
    type: number
    hidden: true
    sql: ${TABLE}.week_id

  - dimension: cy_working_days_day
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_day

  - dimension: cy_working_days_year
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_year

  - dimension: cy_working_days_month
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_month

  - dimension: cy_working_days_week
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_week

  - dimension: py1_working_days_day
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_day

  - dimension: py1_working_days_year
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_year

  - dimension: py1_working_days_month
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_month

  - dimension: py1_working_days_week
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_week


