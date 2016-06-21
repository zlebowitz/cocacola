- connection: tccc_bq_sl_volume

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: z_sls_export
  label: Sales
  joins: 
    - join: working_day_aggregations_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${z_sls_export.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}

- explore: working_day_aggregations

- explore: td_sales
  from: td_measures
  view: z_sls_export
  joins: 
    - join: working_day_aggregations
      relationship: many_to_one
      sql_on: 
            |
            ${z_sls_export.day_id} = ${working_day_aggregations.day_id} 
            AND ${z_sls_export.geo_lh1_l1_cd} = ${working_day_aggregations.bottler_id}