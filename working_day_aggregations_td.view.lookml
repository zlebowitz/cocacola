- view: working_day_aggregations_td
  derived_table:
    sql_trigger_value: SELECT current_date()
    sql: |
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , week_id
      , month_id
      , year_id
      , cy_working_day
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as cy_working_days_ytd
        
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as cy_working_days_mtd
        
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as cy_working_days_wtd
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as py1_working_days_ytd
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as py1_working_days_mtd
        
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          ORDER BY day_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
          ) 
        as py1_working_days_wtd  
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

  - dimension: month_id
    type: number
    hidden: true
    sql: ${TABLE}.month_id

  - dimension: year_id
    type: number
    hidden: true
    sql: ${TABLE}.year_id

  - dimension: cy_working_day
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_day

  - dimension: cy_working_days_ytd
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_ytd

  - dimension: cy_working_days_mtd
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_mtd

  - dimension: cy_working_days_wtd
    type: number
    hidden: true
    sql: ${TABLE}.cy_working_days_wtd

  - dimension: py1_working_days_ytd
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_ytd

  - dimension: py1_working_days_mtd
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_mtd

  - dimension: py1_working_days_wtd
    type: number
    hidden: true
    sql: ${TABLE}.py1_working_days_wtd

  sets:
    detail:
      - bottler_id
      - day_desc
      - day_id
      - cy_working_day
      - cy_working_days_ytd
      - cy_working_days_mtd
      - cy_working_days_wtd
      - py1_working_days_ytd
      - py1_working_days_mtd
      - py1_working_days_wtd

