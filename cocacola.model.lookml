- connection: tccc_bq_sl_volume

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: z_sls_export_custom_timeframe
  label: Sales - Custom Timeframe
#   always_filter: 
#     date: 7 days
  joins: 
    - join: working_day_aggregations_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export_custom_timeframe.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}

- explore: td_sales
  from: td_measures
  label: Sales
  view: z_sls_export
  joins: 
    - join: working_day_aggregations
      fields: []
      relationship: many_to_one
      sql_on: 
            |
            ${z_sls_export.day_id} = ${working_day_aggregations.day_id} 
            AND ${z_sls_export.geo_lh1_l1_cd} = ${working_day_aggregations.bottler_id}

    - join: t_wrk_days_445
      fields: []
      relationship: many_to_one
      sql_on: |
            ${z_sls_export.day_id} = ${t_wrk_days_445.day_id} 
            AND ${z_sls_export.geo_lh1_l1_cd} = ${t_wrk_days_445.bottler_id}

- explore: z_sls_export_445_custom_timeframe
  label: Sales - 445 Custom Timeframe
  joins: 
    - join: working_day_aggregations_templated
      from: working_day_aggregations_445_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export_445_custom_timeframe.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}

    - join: t_cal_445
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export_445_custom_timeframe.day_id} = ${t_cal_445.day_id}
    
    
    
    
    
    
    