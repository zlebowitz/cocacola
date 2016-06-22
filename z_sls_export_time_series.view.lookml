- explore: z_sls_export_time_series
  label: Sales - Time Series
  joins: 
    - join: working_day_aggregations_time_series
      type: left_outer
      relationship: many_to_one
      sql_on: |
        ${z_sls_export_time_series.geo_lh1_l1_cd} = ${working_day_aggregations_time_series.bottler_id}
        AND 
        ${z_sls_export_time_series.day_id} = ${working_day_aggregations_time_series.day_id}         


- view: z_sls_export_time_series
  sql_table_name: report.z_sls_export
  view_label: Sales
  extends: [channel_by_category, 
            channel_by_category_2, 
            customer_by_category, 
            cy_measures, 
            geography_by_bottler, 
            geography_by_bottler_territory, 
            geography_slbu, 
            package_by_container, 
            package_by_serve, 
            package_by_size, 
            product_by_brand, 
            product_by_category, 
            product_by_trademark, 
            py1_measures, 
            py2_measures,
            time_series_measures,
            date]
  fields:
    
  - dimension: bpp_code
    type: string
    hidden: true
    sql: ${TABLE}.bpp_code

  - dimension: currency_id
    type: number
    hidden: true
    sql: ${TABLE}.currency_id

  - dimension: outlet_desc
    type: string
    sql: ${TABLE}.outlet_desc

  - dimension: outlet_id
    type: number
    sql: ${TABLE}.outlet_id

  - dimension: product_desc
    type: string
    hidden: true
    sql: ${TABLE}.product_desc

  - dimension: product_id
    type: number
    sql: ${TABLE}.product_id

  - dimension: sales_type_desc
    type: string
    label: "Sales Type"
    sql: ${TABLE}.sales_type_desc

  - dimension: sales_type_id
    type: number
    hidden: true
    sql: ${TABLE}.sales_type_id

  - dimension: volume_type_desc
    label: "Volume Type"
    type: string
    sql: ${TABLE}.volume_type_desc

  - dimension: volume_type_id
    type: number
    hidden: true
    sql: ${TABLE}.volume_type_id

