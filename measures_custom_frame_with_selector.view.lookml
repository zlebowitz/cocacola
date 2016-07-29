
# ZL - 7/28/2016 - Commenting out this explore while all measures other than unit cases are hidden for the initial SL demo
# - explore: z_sls_export_custom_timeframe_with_selector
#   view: sales_2016
#   from: z_sls_export_custom_timeframe_with_selector
#   label: Sales - Custom Timeframe - Metric Selector
# #   always_filter: 
# #     date: 7 days
#   joins: 
#     - join: working_day_aggregations_templated
#       type: left_outer
#       relationship: many_to_one
#       sql_on: ${sales_2016.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}


- view: z_sls_export_custom_timeframe_with_selector
  extends: [z_sls_export]
  fields:
    - dimension: date_range
      type: date
      sql: ${TABLE}.day_date
    
    - filter: measure_selector
      type: string
      suggestions: ['Unit Cases', 'Gross Revenue', 'Gallons']  
      
    - measure: total_cy_measure
      type: number
      sql: |
        CASE 
          WHEN {% parameter measure_selector %} = 'Unit Cases' THEN ${total_cy_unit_cases}
          WHEN {% parameter measure_selector %} = 'Gross Revenue' THEN ${total_cy_gross_revenue}
          WHEN {% parameter measure_selector %} = 'Gallons' THEN ${total_cy_gallons}
          ELSE NULL
        END

      

    - measure: total_py1_measure
      type: number
      sql: |
        CASE 
          WHEN {% parameter measure_selector %} = 'Unit Cases' THEN ${total_py1_unit_cases}
          WHEN {% parameter measure_selector %} = 'Gross Revenue' THEN ${total_py1_gross_revenue}
          WHEN {% parameter measure_selector %} = 'Gallons' THEN ${total_py1_gallons}
          ELSE NULL
        END 
        
    - measure: total_py2_measure
      type: number
      sql: |
        CASE 
          WHEN {% parameter measure_selector %} = 'Unit Cases' THEN ${total_py2_unit_cases}
          WHEN {% parameter measure_selector %} = 'Gross Revenue' THEN ${total_py2_gross_revenue}
          WHEN {% parameter measure_selector %} = 'Gallons' THEN ${total_py2_gallons}
          ELSE NULL
        END 

      
####################################
##### Unit Cases WD
####################################
    - measure: unit_cases_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_cy_measure}/${working_day_aggregations_templated.max_cy_working_days} 
      value_format_name: decimal_2
  
    - measure: measure_py1_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days} 
      value_format_name: decimal_2
  

####################################
##### Unit Cases vs PY
####################################
    - measure: measure_vs_py_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_cy_measure}/${working_day_aggregations_templated.max_cy_working_days} 
        - 
        ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days}
      value_format_name: decimal_2

    - measure: measure_vs_py_wd_percent
      view_label: Measures - Calculated
      type: number
      sql: |
        (
          ${total_cy_measure}/${working_day_aggregations_templated.max_cy_working_days} 
          - 
          ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days}
        )
        
        /
        
        (
          ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days}
        )
      value_format_name: percent_3
 
 
 ####################################
##### Unit Cases Cycling
####################################
    - measure: measure_cycling_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days} 
        - 
        ${total_py2_measure}/${working_day_aggregations_templated.max_py2_working_days}
      value_format_name: decimal_2

    - measure: measure_cycling_wd_percent
      view_label: Measures - Calculated
      type: number
      sql: |
        (
          ${total_py1_measure}/${working_day_aggregations_templated.max_py1_working_days} 
          - 
          ${total_py2_measure}/${working_day_aggregations_templated.max_py2_working_days}
        )
        
        /
        
        (
          ${total_py2_measure}/${working_day_aggregations_templated.max_py2_working_days}
        )
      value_format_name: percent_3