- view: time_series_measures

  fields: 

##   Working Days ##
  - measure: max_cy_working_days_day
    type: max
#     hidden: true
    group_label: "WD - Daily"
    sql: ${working_day_aggregations_time_series.cy_working_days_day}
    
  - measure: max_cy_working_days_week
    type: max
#     hidden: true
    group_label: "WD - Weekly"
    sql: ${working_day_aggregations_time_series.cy_working_days_week}


  - measure: max_cy_working_days_month
    type: max
#     hidden: true
    group_label: "WD - Monthly"
    sql: ${working_day_aggregations_time_series.cy_working_days_month}

  - measure: max_py1_working_days_day
    type: max
#     hidden: true
    group_label: "WD - Daily"
    sql: ${working_day_aggregations_time_series.py1_working_days_day}

  - measure: max_py1_working_days_week
    type: max
#     hidden: true
    group_label: "WD - Weekly"
    sql: ${working_day_aggregations_time_series.py1_working_days_week}


  - measure: max_py1_working_days_month
    type: max
#     hidden: true
    group_label: "WD - Monthly"
    sql: ${working_day_aggregations_time_series.py1_working_days_month}


## Unit Cases ##

  - measure: total_cy_unit_cases
    label: "Total Unit Cases - CY"
    view_label: "Sales"
    group_label: "Unit Cases"
    value_format_name: decimal_2

  - measure: total_py1_unit_cases
    label: "Total Unit Cases - PY1"
    view_label: "Sales"
    group_label: "Unit Cases"
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_day
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_cy_unit_cases} / ${max_cy_working_days_day}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_day
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_py1_unit_cases}/${max_py1_working_days_day}
    value_format_name: decimal_2

    
  - measure: cy_uc_per_wd_week
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_cy_unit_cases} / ${max_cy_working_days_week}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_week
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_py1_unit_cases}/${max_py1_working_days_week}
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_month
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_cy_unit_cases} / ${max_cy_working_days_month}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_month
    type: number
    hidden: true
    group_label: "Unit Cases"
    sql: ${total_py1_unit_cases}/${max_py1_working_days_month}
    value_format_name: decimal_2


  - measure: uc_vs_py1_day
    type: number
    group_label: "WD - Daily"
    sql: ${cy_uc_per_wd_day} - ${py1_uc_per_wd_day}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_week_percent_change
    type: number
    group_label: "WD - Daily"
    sql: ${uc_vs_py1_day} / ${py1_uc_per_wd_day}
    value_format_name: percent_2



  - measure: uc_vs_py1_week
    type: number
    group_label: "WD - Weekly"
    sql: ${cy_uc_per_wd_week} - ${py1_uc_per_wd_week}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_week_percent_change
    type: number
    group_label: "WD - Weekly"
    sql: ${uc_vs_py1_week} / ${py1_uc_per_wd_week}
    value_format_name: percent_2
    
  - measure: uc_vs_py1_month
    type: number
    group_label: "WD - Monthly"
    sql: ${cy_uc_per_wd_month} - ${py1_uc_per_wd_month}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_month_percent_change
    type: number
    group_label: "WD - Monthly"
    sql: ${uc_vs_py1_month} / ${py1_uc_per_wd_month}
    value_format_name: percent_2
  
#  
# ### Gross Revenue
# 
#   - measure: total_cy_gross_revenue
#     label: "Total Gross Revenue"
#     view_label: "Sales"
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
#     
#   - measure: cy_rev_week
#     type: sum
#     filters: 
#       is_this_week: yes
#     sql: ${cy_gross_revenue}
#     group_label: "Gross Revenue"
#     hidden: true
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_month
#     type: sum
#     filters: 
#       is_before_this_week: yes
#     sql: ${cy_gross_revenue}
#     hidden: true
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: py1_rev_week
#     type: sum
#     filters: 
#       is_this_week: yes
#     sql: ${py1_gross_revenue}
#     hidden: true
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: py1_rev_month
#     type: sum
#     hidden: true
#     filters: 
#       is_before_this_week: yes
#     sql: ${py1_gross_revenue}
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_per_wd_week
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${cy_rev_week} / ${max_cy_working_days_week}
#     value_format_name: decimal_2
#     
#   - measure: py1_rev_per_wd_week
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${py1_rev_week}/${max_py1_working_days_week}
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_per_wd_month
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${cy_rev_month} / ${max_cy_working_days_month}
#     value_format_name: decimal_2
#     
#   - measure: py1_rev_per_wd_month
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${py1_rev_month}/${max_py1_working_days_month}
#     value_format_name: decimal_2
# 
# 
#   - measure: rev_vs_py1_week
#     type: number
#     group_label: "Gross Revenue week"
#     sql: ${cy_rev_per_wd_week} - ${py1_rev_per_wd_week}
#     value_format_name: decimal_2
#     
#   - measure: rev_vs_py1_week_percent_change
#     type: number
#     group_label: "Gross Revenue week"
#     sql: ${rev_vs_py1_week} / ${py1_uc_per_wd_week}
#     value_format_name: percent_2
#     
#   - measure: rev_vs_py1_month
#     type: number
#     group_label: "Gross Revenue month"
#     sql: ${cy_rev_per_wd_month} - ${py1_uc_per_wd_month}
#     value_format_name: decimal_2
#     
#   - measure: rev_vs_py1_month_percent_change
#     type: number
#     group_label: "Gross Revenue month"
#     sql: ${rev_vs_py1_month} / ${py1_rev_per_wd_month}
#     value_format_name: percent_2
#   
#   - measure: cy_rev_per_wd_cp
#     type: number
#     hidden: true
#     sql: ${total_cy_gross_revenue} / ${t_wrk_days_445.total_cy_working_days}
#   
#   - measure: py_rev_per_wd_cp
#     type: number
#     hidden: true
#     sql: ${total_py1_gross_revenue} / ${t_wrk_days_445.total_py_working_days}
#   
#   
#   - measure: rev_vs_py1_cp
#     type: number
#     group_label: "Gross Revenue CP"
#     sql: ${cy_rev_per_wd_cp} - ${py_rev_per_wd_cp}
#     value_format_name: decimal_2
#   
#   - measure: rev_vs_py1_cp_percent_change
#     type: number
#     group_label: "Gross Revenue CP"
#     sql: ${rev_vs_py1_cp} / ${py_rev_per_wd_cp}
#     value_format_name: percent_2
#   