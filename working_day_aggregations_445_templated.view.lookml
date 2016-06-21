- view: working_day_aggregations_445_templated
  derived_table:
    sql: |
        SELECT 
          bottler_id
        , sum(cy_working_day) as cy_working_days
        , sum(py1_working_day) as py1_working_days
        , sum(py2_working_day) as py2_working_days
         FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445] as  working_days
         INNER JOIN [tccc-sbox-volume-south-latin:report.t_cal_445] as calendar
         ON working_days.day_id = calendar.day_id
         WHERE 
         {% condition t_cal_445.day_desc %} calendar.day_desc {% endcondition %}
         
         AND {% condition t_cal_445.day_id %} calendar.day_id {% endcondition %}
         
         AND {% condition t_cal_445.month_desc %} calendar.month_desc {% endcondition %}         
         
         AND {% condition t_cal_445.month_id %} calendar.month_id {% endcondition %}         
         
         AND {% condition t_cal_445.quarter_desc %} calendar.quarter_desc {% endcondition %}
         
         AND {% condition t_cal_445.quarter_id %} calendar.quarter_id {% endcondition %}
         
         AND {% condition t_cal_445.week_desc %} calendar.week_desc {% endcondition %}
         
         AND {% condition t_cal_445.week_id %} calendar.week_id {% endcondition %}

         AND {% condition t_cal_445.year_desc %} calendar.year_desc {% endcondition %}
         
         AND {% condition t_cal_445.year_id %} calendar.year_id {% endcondition %}
         
         
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
    view_label: Measures - Working Days
    type: max
    sql: ${cy_working_days}
    
  - measure: max_py1_working_days
    view_label: Measures - Working Days
    type: max
    sql: ${py1_working_days}

  - measure: max_py2_working_days
    view_label: Measures - Working Days
    type: max
    sql: ${py2_working_days}