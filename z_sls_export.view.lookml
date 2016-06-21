- view: z_sls_export
  sql_table_name: report.z_sls_export
  view_label: Sales
  extends: [channel_by_category, channel_by_category_2, customer_by_category, cy_measures, geography_by_bottler, geography_by_bottler_territory, geography_slbu, package_by_container, package_by_serve, package_by_size, product_by_brand, product_by_category, product_by_trademark, py1_measures, py2_measures]
  fields:

  - filter: report_week
    type: string
    
  - dimension: bpp_code
    type: string
    sql: ${TABLE}.bpp_code

  - dimension: currency_id
    type: number
    sql: ${TABLE}.currency_id

  - dimension: outlet_desc
    type: string
    sql: ${TABLE}.outlet_desc

  - dimension: outlet_id
    type: number
    sql: ${TABLE}.outlet_id

  - dimension: product_desc
    type: string
    sql: ${TABLE}.product_desc

  - dimension: product_id
    type: number
    sql: ${TABLE}.product_id

  - dimension: sales_type_desc
    type: string
    sql: ${TABLE}.sales_type_desc

  - dimension: sales_type_id
    type: number
    sql: ${TABLE}.sales_type_id

  - dimension: volume_type_desc
    type: string
    sql: ${TABLE}.volume_type_desc

  - dimension: volume_type_id
    type: number
    sql: ${TABLE}.volume_type_id


