- explore: sales_2016_td
  label: TD Sales
  joins: 
    - join: working_day_aggregations_td
      relationship: many_to_one
      sql_on: 
            |
            ${sales_2016_td.day_id} = ${working_day_aggregations_td.day_id} 
            AND ${sales_2016_td.geo_lh1_l1_cd} = ${working_day_aggregations_td.bottler_id}
            
    - join: date_picker
      view: t_cal_445
      relationship: many_to_one
      sql_on: |
        ${sales_2016_td.day_id} = ${t_cal_445.day_id} 
  always_filter:
    report_week: 20160301
  

- view: sales_2016_td
  extends: [
            hierarchies,
            
            cy_measures_hidden,
            py1_measures_hidden,
            py2_measures_hidden,
            
            td_measures
            ]

- view: cy_measures_hidden
  extends: cy_measures
  fields:
    - measure: total_cy_unit_cases
      hidden: true

- view: py1_measures_hidden
  extends: py1_measures
  fields:
    - measure: total_py1_unit_cases
      hidden: true

- view: py2_measures_hidden
  extends: py2_measures
  fields:
    - measure: total_py2_unit_cases
      hidden: true


- view: td_measures
  fields: 

# Day_id is used here to join to the working_day_aggregations_td table, but isn't exposed to users  
  - dimension: day_id
    hidden: true
    type: number
    sql: ${TABLE}.day_id  

  - dimension: week_id
    hidden: true
    type: number
    sql: ${TABLE}.week_id  
  
  - filter: report_week
    type: string
    
    
  - dimension: is_report_week_wd
    type: yesno
    hidden: true
    sql: |
        {% condition report_week %} ${working_day_aggregations_td.week_id} {% endcondition %}

  - dimension: is_report_mtd_wd
    type: yesno
    hidden: true
    sql: |
        ${working_day_aggregations_td.week_id} <=  {% parameter report_week %}
        AND
        left(${working_day_aggregations_td.week_id},6) =  left({% parameter report_week %},6)

  - dimension: is_this_week
    type: yesno
    hidden: true
    sql: |  
        {% condition report_week %} ${week_id} {% endcondition %}
        
  - dimension: is_report_mtd
    type: yesno
    hidden: true
    sql: |  
        ${week_id} <= {% parameter report_week %} 
        AND
        left(${week_id},6) =  left({% parameter report_week %},6)

##   Working Days ##
  - measure: max_cy_working_days_wtd
    type: max
    hidden: true
    sql: ${working_day_aggregations_td.cy_working_days_wtd}
    filters: 
      is_report_week_wd: yes

  - measure: max_cy_working_days_mtd
    type: max
    hidden: true
    sql: ${working_day_aggregations_td.cy_working_days_mtd}
    filters: 
      is_report_mtd_wd: yes

  - measure: max_py1_working_days_wtd
    type: max
    hidden: true
    sql: ${working_day_aggregations_td.py1_working_days_wtd}
    filters: 
      is_report_week_wd: yes

  - measure: max_py1_working_days_mtd
    type: max
    hidden: true
    sql: ${working_day_aggregations_td.py1_working_days_mtd}
    filters: 
      is_report_mtd_wd: yes

## Unit Cases ##

# Commenting this out because they already exist in the cy, py1 and py2 measure files
#   - measure: total_cy_unit_cases
#     label: "Total Unit Cases"
#     view_label: "Sales"
#     group_label: "Unit Cases"
#     value_format_name: decimal_2
    
  - measure: cy_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${cy_unit_cases}
    group_label: "Unit Cases WTD"
    value_format_name: decimal_2

  - measure: cy_unit_cases_mtd
    type: sum
    filters: 
      is_report_mtd: yes
    sql: ${cy_unit_cases}
    group_label: "Unit Cases MTD"
    value_format_name: decimal_2

  - measure: py1_unit_cases_wtd
    type: sum
    filters: 
      is_this_week: yes
    sql: ${py1_unit_cases}
    group_label: "Unit Cases WTD"
    value_format_name: decimal_2

  - measure: py1_unit_cases_mtd
    type: sum
    filters: 
      is_report_mtd: yes
    sql: ${py1_unit_cases}
    group_label: "Unit Cases MTD"
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_wtd
    type: number
    group_label: "Unit Cases WTD"
    sql: ${cy_unit_cases_wtd} / ${max_cy_working_days_wtd}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_wtd
    type: number
    group_label: "Unit Cases WTD"
    sql: ${py1_unit_cases_wtd}/${max_py1_working_days_wtd}
    value_format_name: decimal_2

  - measure: cy_uc_per_wd_mtd
    type: number
    group_label: "Unit Cases MTD"
    sql: ${cy_unit_cases_mtd} / ${max_cy_working_days_mtd}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd_mtd
    type: number
    group_label: "Unit Cases MTD"
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

  
  
### Gross Revenue
#  7/27/2016  Removing all measures other than unit cases from the model
#   - measure: total_cy_gross_revenue
#     label: "Total Gross Revenue"
#     view_label: "Sales"
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
#     
#   - measure: cy_rev_wtd
#     type: sum
#     filters: 
#       is_this_week: yes
#     sql: ${cy_gross_revenue}
#     group_label: "Gross Revenue"
#     hidden: true
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_mtd
#     type: sum
#     filters: 
#       is_report_mtd: yes
#     sql: ${cy_gross_revenue}
#     hidden: true
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: py1_rev_wtd
#     type: sum
#     filters: 
#       is_this_week: yes
#     sql: ${py1_gross_revenue}
#     hidden: true
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: py1_rev_mtd
#     type: sum
#     hidden: true
#     filters: 
#       is_report_mtd: yes
#     sql: ${py1_gross_revenue}
#     group_label: "Gross Revenue"
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_per_wd_wtd
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${cy_rev_wtd} / ${max_cy_working_days_wtd}
#     value_format_name: decimal_2
#     
#   - measure: py1_rev_per_wd_wtd
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${py1_rev_wtd}/${max_py1_working_days_wtd}
#     value_format_name: decimal_2
# 
#   - measure: cy_rev_per_wd_mtd
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${cy_rev_mtd} / ${max_cy_working_days_mtd}
#     value_format_name: decimal_2
#     
#   - measure: py1_rev_per_wd_mtd
#     type: number
#     hidden: true
#     group_label: "Gross Revenue"
#     sql: ${py1_rev_mtd}/${max_py1_working_days_mtd}
#     value_format_name: decimal_2
# 
# 
#   - measure: rev_vs_py1_wtd
#     type: number
#     group_label: "Gross Revenue WTD"
#     sql: ${cy_rev_per_wd_wtd} - ${py1_rev_per_wd_wtd}
#     value_format_name: decimal_2
#     
#   - measure: rev_vs_py1_wtd_percent_change
#     type: number
#     group_label: "Gross Revenue WTD"
#     sql: ${rev_vs_py1_wtd} / ${py1_uc_per_wd_wtd}
#     value_format_name: percent_2
#     
#   - measure: rev_vs_py1_mtd
#     type: number
#     group_label: "Gross Revenue MTD"
#     sql: ${cy_rev_per_wd_mtd} - ${py1_uc_per_wd_mtd}
#     value_format_name: decimal_2
#     
#   - measure: rev_vs_py1_mtd_percent_change
#     type: number
#     group_label: "Gross Revenue MTD"
#     sql: ${rev_vs_py1_mtd} / ${py1_rev_per_wd_mtd}
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