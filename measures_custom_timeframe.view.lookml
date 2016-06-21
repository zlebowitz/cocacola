- view: z_sls_export_workday_templated
  fields:

    - measure: unit_cases_vs_py_wd
      sql: |
        ${total_cy_unit_cases}/${working_day_aggregations_templated.max_cy_working_days} 
        - 
        ${total_py1_unit_cases}/${working_day_aggregations_templated.max_py1_working_days}
      value_format_name: decimal_2

    - measure: unit_cases_vs_py_wd_percent
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
 