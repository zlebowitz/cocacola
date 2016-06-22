- view: td_measures
  extends: [z_sls_export, date]
  fields: 
  
  - filter: report_week
    type: string
    
    
  - dimension: is_report_week_wd
    type: yesno
    hidden: true
    sql: |
        {% condition report_week %} ${working_day_aggregations.week_id} {% endcondition %}

  - dimension: is_report_mtd_wd
    type: yesno
    hidden: true
    sql: |
        ${working_day_aggregations.week_id} <=  {% parameter report_week %}

  - dimension: is_this_week
    type: yesno
    hidden: true
    sql: |  
        {% condition report_week %} ${week_id} {% endcondition %}
        
  - dimension: is_before_this_week
    type: yesno
    hidden: true
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
  
  - measure: cy_uc_per_wd_cp
    type: number
    hidden: true
    sql: ${total_cy_unit_cases} / ${t_wrk_days_445.total_cy_working_days}
  
  - measure: py_uc_per_wd_cp
    type: number
    hidden: true
    sql: ${total_py1_unit_cases} / ${t_wrk_days_445.total_py_working_days}
  
  
  - measure: uc_vs_py1_cp
    type: number
    group_label: "Unit Cases CP"
    sql: ${cy_uc_per_wd_cp} - ${py_uc_per_wd_cp}
    value_format_name: decimal_2
  
  - measure: uc_vs_py1_cp_percent_change
    type: number
    group_label: "Unit Cases CP"
    sql: ${uc_vs_py1_cp} / ${py_uc_per_wd_cp}
    value_format_name: percent_2
  
  
### Gross Revenue

  - measure: total_cy_gross_revenue
    label: "Total Gross Revenue"
    view_label: "Sales"
    group_label: "Gross Revenue"
    value_format_name: decimal_2
    
  - measure: cy_rev_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${cy_gross_revenue}
    group_label: "Gross Revenue"
    hidden: true
    value_format_name: decimal_2

  - measure: cy_rev_mtd
    type: sum
    filters: 
      is_before_this_week: yes
    sql: ${cy_gross_revenue}
    hidden: true
    group_label: "Gross Revenue"
    value_format_name: decimal_2

  - measure: py1_rev_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${py1_gross_revenue}
    hidden: true
    group_label: "Gross Revenue"
    value_format_name: decimal_2

  - measure: py1_rev_mtd
    type: sum
    hidden: true
    filters: 
      is_before_this_week: yes
    sql: ${py1_gross_revenue}
    group_label: "Gross Revenue"
    value_format_name: decimal_2

  - measure: cy_rev_per_wd_wtd
    type: number
    hidden: true
    group_label: "Gross Revenue"
    sql: ${cy_rev_wtd} / ${max_cy_working_days_wtd}
    value_format_name: decimal_2
    
  - measure: py1_rev_per_wd_wtd
    type: number
    hidden: true
    group_label: "Gross Revenue"
    sql: ${py1_rev_wtd}/${max_py1_working_days_wtd}
    value_format_name: decimal_2

  - measure: cy_rev_per_wd_mtd
    type: number
    hidden: true
    group_label: "Gross Revenue"
    sql: ${cy_rev_mtd} / ${max_cy_working_days_mtd}
    value_format_name: decimal_2
    
  - measure: py1_rev_per_wd_mtd
    type: number
    hidden: true
    group_label: "Gross Revenue"
    sql: ${py1_rev_mtd}/${max_py1_working_days_mtd}
    value_format_name: decimal_2


  - measure: rev_vs_py1_wtd
    type: number
    group_label: "Gross Revenue WTD"
    sql: ${cy_rev_per_wd_wtd} - ${py1_rev_per_wd_wtd}
    value_format_name: decimal_2
    
  - measure: rev_vs_py1_wtd_percent_change
    type: number
    group_label: "Gross Revenue WTD"
    sql: ${rev_vs_py1_wtd} / ${py1_uc_per_wd_wtd}
    value_format_name: percent_2
    
  - measure: rev_vs_py1_mtd
    type: number
    group_label: "Gross Revenue MTD"
    sql: ${cy_rev_per_wd_mtd} - ${py1_uc_per_wd_mtd}
    value_format_name: decimal_2
    
  - measure: rev_vs_py1_mtd_percent_change
    type: number
    group_label: "Gross Revenue MTD"
    sql: ${rev_vs_py1_mtd} / ${py1_rev_per_wd_mtd}
    value_format_name: percent_2
  
  - measure: cy_rev_per_wd_cp
    type: number
    hidden: true
    sql: ${total_cy_gross_revenue} / ${t_wrk_days_445.total_cy_working_days}
  
  - measure: py_rev_per_wd_cp
    type: number
    hidden: true
    sql: ${total_py1_gross_revenue} / ${t_wrk_days_445.total_py_working_days}
  
  
  - measure: rev_vs_py1_cp
    type: number
    group_label: "Gross Revenue CP"
    sql: ${cy_rev_per_wd_cp} - ${py_rev_per_wd_cp}
    value_format_name: decimal_2
  
  - measure: rev_vs_py1_cp_percent_change
    type: number
    group_label: "Gross Revenue CP"
    sql: ${rev_vs_py1_cp} / ${py_rev_per_wd_cp}
    value_format_name: percent_2
  