- connection: tccc_bq_sl_volume

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: z_sls_export
  label: Sales
  
- explore: working_day_aggregations


- explore: z_sls_export_custom_timeframe
  label: Sales - Custom Timeframe
  joins: 
    - join: working_day_aggregations_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export_custom_timeframe.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}