- explore: z_sls_export_workday_templated
  always_filter:
    day_date: 2015-12
    working_day_aggregations_templated.date_range: 2015-12
    
  joins:
    - join: working_day_aggregations_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export_workday_templated.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}
      

- view: working_day_aggregations_templated
  derived_table:
    sql: |
        SELECT 
          bottler_id
        , sum(cy_working_day) as cy_working_days
        , sum(py1_working_day) as py1_working_days
         FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445] 
         WHERE {% condition date_range %} day_date {% endcondition %}
         GROUP BY 1

  fields:

  - filter: date_range
    type: date
    
  - dimension: bottler_id
    type: number
    sql: ${TABLE}.bottler_id

  - dimension: cy_working_days
    type: number
    sql: ${TABLE}.cy_working_days
    
  - dimension: py1_working_days
    type: number
    sql: ${TABLE}.py1_working_days
    
  - measure: max_cy_working_days
    type: max
    sql: ${cy_working_days}
    
  - measure: max_py1_working_days
    type: max
    sql: ${py1_working_days}