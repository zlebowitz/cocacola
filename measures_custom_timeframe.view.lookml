- view: measures_custom_timeframe
  fields:

####################################
##### Unit Cases vs PY
####################################
    - measure: unit_cases_vs_py_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_cy_unit_cases}/${working_day_aggregations_templated.max_cy_working_days} 
        - 
        ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days}
      value_format_name: decimal_2

    - measure: unit_cases_vs_py_wd_percent
      view_label: Measures - Calculated
      type: number
      sql: |
        (
          ${total_cy_unit_cases}/${working_day_aggregations_templated.max_cy_working_days} 
          - 
          ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days}
        )
        
        /
        
        (
          ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days}
        )
      value_format_name: percent_3
 
 
 ####################################
##### Unit Cases Cycling
####################################
    - measure: unit_cases_cycling_wd
      view_label: Measures - Calculated
      type: number
      sql: |
        ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days} 
        - 
        ${total_py2_unit_cases}/${working_day_aggregations_templated.max_py2_working_days}
      value_format_name: decimal_2

    - measure: unit_cases_cycling_wd_percent
      view_label: Measures - Calculated
      type: number
      sql: |
        (
          ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days} 
          - 
          ${total_py2_unit_cases}/${working_day_aggregations_templated.max_py2_working_days}
        )
        
        /
        
        (
          ${total_py2_unit_cases}/${working_day_aggregations_templated.max_py2_working_days}
        )
      value_format_name: percent_3