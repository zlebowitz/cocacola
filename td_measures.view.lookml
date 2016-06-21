- view: td_measures
  extends: [z_sls_export]
  fields: 
  
  - dimension: is_report_week_wd
    type: yesno
    sql: |
        {% condition report_week %} ${working_day_aggregations.week_id} {% endcondition %}

  - dimension: is_report_mtd_wd
    type: yesno
    sql: |
        {% parameter report_week %} <= ${working_day_aggregations.week_id} 

  - dimension: is_this_week
    type: yesno
    sql: |  
        {% condition report_week %} ${week_id} {% endcondition %}
        
  - dimension: is_before_this_week
    type: yesno
    sql: |  
        ${week_id} <= {% parameter report_week %} 


##   Working Days ##
  - measure: max_cy_working_days_wtd
    type: max
    hidden: true
    sql: ${working_day_aggregations.cy_working_days_wtd}
    filters: 
      is_report_week_wd: yes

  - measure: max_cy_working_days_mtd
    type: max
    hidden: true
    sql: ${working_day_aggregations.cy_working_days_mtd}
    filters: 
      is_report_mtd_wd: yes

  - measure: max_py1_working_days_wtd
    type: max
    hidden: true
    sql: ${working_day_aggregations.py1_working_days_wtd}
    filters: 
      is_report_week_wd: yes

  - measure: max_py1_working_days_mtd
    type: max
    hidden: true
    sql: ${working_day_aggregations.py1_working_days_mtd}
    filters: 
      is_report_mtd_wd: yes

## Unit Cases ##

  - measure: cy_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${cy_unit_cases}
    value_format_name: decimal_2

  - measure: cy_unit_cases_mtd
    type: sum
    filters: 
      is_before_this_week: yes
    sql: ${cy_unit_cases}
    value_format_name: decimal_2

  - measure: py1_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${py1_unit_cases}
    value_format_name: decimal_2

  - measure: py1_unit_cases_mtd
    type: sum
    filters: 
      is_before_this_week: yes
    sql: ${py1_unit_cases}
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_wtd
    type: number
    hidden: true
    sql: ${cy_unit_cases_wtd} / ${max_cy_working_days_wtd}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_wtd
    type: number
    hidden: true
    sql: ${py1_unit_cases_wtd}/${max_py1_working_days_wtd}
    value_format_name: decimal_2

  - measure: uc_vs_py1_wtd
    type: number
    sql: ${cy_uc_per_wd_wtd} - ${py1_uc_per_wd_wtd}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_wtd_percent_change
    type: number
    sql: ${uc_vs_py1_wtd} / ${py1_uc_per_wd_wtd}
    value_format_name: percent_2
  
## 
  
  