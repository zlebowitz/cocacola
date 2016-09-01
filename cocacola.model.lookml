- connection: tccc_bq_sl_volume

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

- explore: sales_2016
  label: "Volume"
  always_filter:
    sales_2016.date_range: last 30 days
  joins: 
    - join: working_day_aggregations_time_series
      type: left_outer
      relationship: many_to_one
      sql_on: |
        ${sales_2016.geo_lh1_l1_cd} = ${working_day_aggregations_time_series.bottler_id}
        AND 
        ${sales_2016.day_id} = ${working_day_aggregations_time_series.day_id}         

    - join: working_day_aggregations_templated
      type: left_outer
      relationship: many_to_one
      sql_on: ${sales_2016.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}

- explore: sales_2016_td
  label: "Volume - TD"
  always_filter:
    date_picker.date: '2016-02-16'
  joins: 
    - join: working_day_aggregations_td
      relationship: many_to_one
      sql_on: 
            |
            ${sales_2016_td.day_id} = ${working_day_aggregations_td.day_id} 
            AND ${sales_2016_td.geo_lh1_l1_cd} = ${working_day_aggregations_td.bottler_id}
            
    - join: date_picker
      type: cross
      relationship: many_to_one


- explore: z_sls_export_vs_re
  sql_table_name: report.t_sls_act_445
  label: "Volume - vs RE"
  label: Volume vs RE
  always_filter: 
    has_rolling_estimate: Yes
    date_range: this year
  joins: 
  - join: t_vol_wk_re
    type: left_outer
    relationship: many_to_one
    sql_on: |
            ${z_sls_export_vs_re.week_id} = ${t_vol_wk_re.week_id} 
            AND ${z_sls_export_vs_re.geo_lh1_l4_cd} = ${t_vol_wk_re.geo_lh1_l3_cd}




# - explore: z_sls_export_time_series
#   hidden: true
#   label: Sales - Time Series
#   joins: 
#     - join: working_day_aggregations_time_series
#       type: left_outer
#       relationship: many_to_one
#       sql_on: |
#         ${z_sls_export_time_series.geo_lh1_l1_cd} = ${working_day_aggregations_time_series.bottler_id}
#         AND 
#         ${z_sls_export_time_series.day_id} = ${working_day_aggregations_time_series.day_id}         




# - explore: z_sls_export_custom_timeframe
#   label: Sales - Custom Timeframe
# #   always_filter: 
# #     date: 7 days
#   joins: 
#     - join: working_day_aggregations_templated
#       type: left_outer
#       relationship: many_to_one
#       sql_on: ${z_sls_export_custom_timeframe.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}

# Broke all of this code whey rebuilding as sales_2016_td
# - explore: td_sales
#   hidden: true
#   from: td_measures
#   label: Sales
#   view: z_sls_export
#   joins: 
#     - join: working_day_aggregations
#       fields: []
#       relationship: many_to_one
#       sql_on: 
#             |
#             ${z_sls_export.day_id} = ${working_day_aggregations.day_id} 
#             AND ${z_sls_export.geo_lh1_l1_cd} = ${working_day_aggregations.bottler_id}
# 
#     - join: t_wrk_days_445
#       fields: []
#       relationship: many_to_one
#       sql_on: |
#             ${z_sls_export.day_id} = ${t_wrk_days_445.day_id} 
#             AND ${z_sls_export.geo_lh1_l1_cd} = ${t_wrk_days_445.bottler_id}

# Replaced this with the sales_2016 explore
# - explore: z_sls_export_445_custom_timeframe
#   hidden: true
#   label: Sales - 445 Custom Timeframe
#   joins: 
#     - join: working_day_aggregations_templated
#       from: working_day_aggregations_445_templated
#       type: left_outer
#       relationship: many_to_one
#       sql_on: ${z_sls_export_445_custom_timeframe.geo_lh1_l1_cd} = ${working_day_aggregations_templated.bottler_id}
# 
#     - join: t_cal_445
#       type: left_outer
#       relationship: many_to_one
#       sql_on: ${z_sls_export_445_custom_timeframe.day_id} = ${t_cal_445.day_id}
    

    
    
    
    
    
    