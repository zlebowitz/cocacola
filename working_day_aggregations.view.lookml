- view: working_day_aggregations
  derived_table:
    sql_trigger_value: SELECT current_date()
    sql: |
      SELECT 
        bottler_id
      , day_desc
      , day_id
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
    sql: ${TABLE}.bottler_id

  - dimension: day_desc
    type: string
    sql: ${TABLE}.day_desc

  - dimension: day_id
    type: number
    sql: ${TABLE}.day_id

  - dimension: cy_working_day
    type: number
    sql: ${TABLE}.cy_working_day

  - dimension: cy_working_days_ytd
    type: number
    sql: ${TABLE}.cy_working_days_ytd

  - dimension: cy_working_days_mtd
    type: number
    sql: ${TABLE}.cy_working_days_mtd

  - dimension: cy_working_days_wtd
    type: number
    sql: ${TABLE}.cy_working_days_wtd

  - dimension: py1_working_days_ytd
    type: number
    sql: ${TABLE}.py1_working_days_ytd

  - dimension: py1_working_days_mtd
    type: number
    sql: ${TABLE}.py1_working_days_mtd

  - dimension: py1_working_days_wtd
    type: number
    sql: ${TABLE}.py1_working_days_wtd
  
  
  - measure: cy_working_days
    type: max
    sql: ${cy_working_day}

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

