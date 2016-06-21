- view: td_measures
  extends: [z_sls_export, date]
  fields: 
  
  - filter: report_week
    type: string
    
    
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

  - measure: total_cy_unit_cases
    label: "Total Unit Cases"
    view_label: "Sales"
    group_label: "Unit Cases"
    value_format_name: decimal_2
    
  - measure: cy_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${cy_unit_cases}
    group_label: "Unit Cases"
    hidden: true
    value_format_name: decimal_2

  - measure: cy_unit_cases_mtd
    type: sum
    filters: 
      is_before_this_week: yes
    sql: ${cy_unit_cases}
    hidden: true
    group_label: "Unit Cases"
    value_format_name: decimal_2

  - measure: py1_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${py1_unit_cases}
    hidden: true
    group_label: "Unit Cases"
    value_format_name: decimal_2

  - measure: py1_unit_cases_mtd
    type: sum
    hidden: true
    filters: 
      is_before_this_week: yes
    sql: ${py1_unit_cases}
    group_label: "Unit Cases"
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_wtd
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${cy_unit_cases_wtd} / ${max_cy_working_days_wtd}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_wtd
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${py1_unit_cases_wtd}/${max_py1_working_days_wtd}
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_mtd
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${cy_unit_cases_mtd} / ${max_cy_working_days_mtd}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_mtd
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${py1_unit_cases_mtd}/${max_py1_working_days_mtd}
    value_format_name: decimal_2


  - measure: uc_vs_py1_wtd
    type: number
    group_label: "Unit Cases WTD"
    sql: ${cy_uc_per_wd_wtd} - ${py1_uc_per_wd_wtd}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_wtd_percent_change
    type: number
    group_label: "Unit Cases WTD"
    sql: ${uc_vs_py1_wtd} / ${py1_uc_per_wd_wtd}
    value_format_name: percent_2
    
  - measure: uc_vs_py1_mtd
    type: number
    group_label: "Unit Cases MTD"
    sql: ${cy_uc_per_wd_mtd} - ${py1_uc_per_wd_mtd}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_mtd_percent_change
    type: number
    group_label: "Unit Cases MTD"
    sql: ${uc_vs_py1_mtd} / ${py1_uc_per_wd_mtd}
    value_format_name: percent_2
  
## 
  
  