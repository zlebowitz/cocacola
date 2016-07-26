- view: working_day_aggregations_templated
  derived_table:
    sql: |
        SELECT 
          bottler_id
        , sum(cy_working_day) as cy_working_days
        , sum(py1_working_day) as py1_working_days
        , sum(py2_working_day) as py2_working_days
         FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445] 
         WHERE {% condition sales_2016.date_range %} day_date {% endcondition %}
         GROUP BY 1

  fields:
    
  - dimension: bottler_id
    hidden: true
    type: number
    sql: ${TABLE}.bottler_id

  - dimension: cy_working_days
    hidden: true
    type: number
    sql: ${TABLE}.cy_working_days
    
  - dimension: py1_working_days
    hidden: true
    type: number
    sql: ${TABLE}.py1_working_days

  - dimension: py2_working_days
    hidden: true
    type: number
    sql: ${TABLE}.py2_working_days
    
  - measure: max_cy_working_days
    hidden: true
    type: max
    sql: ${cy_working_days}
    
  - measure: max_py1_working_days
    view_label: "Measures - Working Days"
    group_label: "WD - Total Period"
    type: max
    sql: ${py1_working_days}

  - measure: max_py2_working_days
    view_label: "Measures - Working Days"
    group_label: "WD - Total Period"
    type: max
    sql: ${py2_working_days}