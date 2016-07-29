- view: sales_2016
  extends: [
            sales_2016_base,
            
            date,
            cy_measures, 
            py1_measures, 
            py2_measures,
            measures_custom_timeframe,
            time_series_measures
            ]
  fields:
  - filter: date_range
    type: date
    label: "Date Range"
    view_label: " Date Range"
    sql: | 
      {% condition date_range %} ${TABLE}.day_date {% endcondition %}



- view: sales_2016_td_measures
  extends: [
            sales_2016_base,
            
            cy_measures, 
            py1_measures, 
            py2_measures,
            td_measures
            ]

- view: sales_2016_base
  sql_table_name: report.t_sls_act_445_20160101
  view_label: Sales Dimensions
  extends: [channel_by_category, 
            channel_by_category_2, 
            customer_by_category, 
            geography_by_bottler, 
            geography_by_bottler_territory, 
            geography_slbu, 
            package_by_container, 
            package_by_serve, 
            package_by_size, 
            product_by_brand, 
            product_by_category, 
            product_by_trademark, 
          ]
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

