- view: z_sls_export
  sql_table_name: report.z_sls_export
  fields:

  - dimension: bpp_code
    type: string
    sql: ${TABLE}.bpp_code
    
#################################
##### CY Measures
#################################

  - dimension: cy_bottler_standard_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_bottler_standard_cases

  - dimension: cy_freight_revenue
    hidden: true
    type: number
    sql: ${TABLE}.cy_freight_revenue

  - dimension: cy_gallons
    hidden: true
    type: number
    sql: ${TABLE}.cy_gallons

  - dimension: cy_gross_revenue
    hidden: true
    type: number
    sql: ${TABLE}.cy_gross_revenue

  - dimension: cy_individual_transactions
    hidden: true
    type: number
    sql: ${TABLE}.cy_individual_transactions

  - dimension: cy_liters
    hidden: true
    type: number
    sql: ${TABLE}.cy_liters

  - dimension: cy_physical_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_physical_cases

  - dimension: cy_promotional_discount
    hidden: true
    type: number
    sql: ${TABLE}.cy_promotional_discount

  - dimension: cy_purchase_transactions
    hidden: true
    type: number
    sql: ${TABLE}.cy_purchase_transactions

  - dimension: cy_trade_discount
    hidden: true
    type: number
    sql: ${TABLE}.cy_trade_discount

  - dimension: cy_unit_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_unit_cases
    
  
 
  - measure: total_cy_bottler_standard_cases
    view_label: "CY Measures"
    type: sum
    sql: ${cy_bottler_standard_cases}

  - measure: total_cy_freight_revenue
    view_label: "CY Measures"
    type: sum
    sql: ${cy_freight_revenue}

  - measure: total_cy_gallons
    view_label: "CY Measures"
    type: sum
    sql: ${cy_gallons}

  - measure: total_cy_gross_revenue
    view_label: "CY Measures"
    type: sum
    sql: ${cy_gross_revenue}

  - measure: total_cy_individual_transactions
    view_label: "CY Measures"
    type: sum
    sql: ${cy_individual_transactions}

  - measure: total_cy_liters
    view_label: "CY Measures"
    type: sum
    sql: ${cy_liters}

  - measure: total_cy_physical_cases
    view_label: "CY Measures"
    type: sum
    sql: ${cy_physical_cases}

  - measure: total_cy_promotional_discount
    view_label: "CY Measures"
    type: sum
    sql: ${cy_promotional_discount}

  - measure: total_cy_purchase_transactions
    view_label: "CY Measures"
    type: sum
    sql: ${cy_purchase_transactions}

  - measure: total_cy_trade_discount
    view_label: "CY Measures"
    type: sum
    sql: ${cy_trade_discount}

  - measure: total_cy_unit_cases
    view_label: "CY Measures"
    type: sum
    sql: ${cy_unit_cases}
     
#################################
##### PY1 Measures
################################# 
 

  - dimension: py1_bottler_standard_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_bottler_standard_cases

  - dimension: py1_freight_revenue
    hidden: true
    type: number
    sql: ${TABLE}.py1_freight_revenue

  - dimension: py1_gallons
    hidden: true
    type: number
    sql: ${TABLE}.py1_gallons

  - dimension: py1_gross_revenue
    hidden: true
    type: number
    sql: ${TABLE}.py1_gross_revenue

  - dimension: py1_individual_transactions
    hidden: true
    type: number
    sql: ${TABLE}.py1_individual_transactions

  - dimension: py1_liters
    hidden: true
    type: number
    sql: ${TABLE}.py1_liters

  - dimension: py1_physical_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_physical_cases

  - dimension: py1_promotional_discount
    hidden: true
    type: number
    sql: ${TABLE}.py1_promotional_discount

  - dimension: py1_purchase_transactions
    hidden: true
    type: number
    sql: ${TABLE}.py1_purchase_transactions

  - dimension: py1_trade_discount
    hidden: true
    type: number
    sql: ${TABLE}.py1_trade_discount

  - dimension: py1_unit_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_unit_cases
    
  
 
  - measure: total_py1_bottler_standard_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_bottler_standard_cases}

  - measure: total_py1_freight_revenue
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_freight_revenue}

  - measure: total_py1_gallons
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_gallons}

  - measure: total_py1_gross_revenue
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_gross_revenue}

  - measure: total_py1_individual_transactions
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_individual_transactions}

  - measure: total_py1_liters
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_liters}

  - measure: total_py1_physical_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_physical_cases}

  - measure: total_py1_promotional_discount
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_promotional_discount}

  - measure: total_py1_purchase_transactions
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_purchase_transactions}

  - measure: total_py1_trade_discount
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_trade_discount}

  - measure: total_py1_unit_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_unit_cases}

#################################
##### Channel By Category
#################################

  - dimension: chan_lh1_l1_cd
    view_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l1_cd

  - dimension: chan_lh1_l1_desc
    label: "1 - Sub Channel"
    view_label: "Channel by Category"
    type: string
    sql: ${TABLE}.chan_lh1_l1_desc
    required_fields: [chan_lh1_l1_cd]

  - dimension: chan_lh1_l2_cd
    view_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l2_cd

  - dimension: chan_lh1_l2_desc
    view_label: "Channel by Category"
    label: "2 - Channel"
    type: string
    sql: ${TABLE}.chan_lh1_l2_desc
    order_by_field: chan_lh1_l2_sort_order
    required_fields: [chan_lh1_l2_cd]
    drill_fields: [chan_lh1_l1_desc]
    
  - dimension: chan_lh1_l2_sort_order
    view_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l2_sort_order

  - dimension: chan_lh1_l3_cd
    view_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l3_cd

  - dimension: chan_lh1_l3_desc
    view_label: "Channel by Category"
    label: "3 - Channel Sub Group" 
    type: string
    sql: ${TABLE}.chan_lh1_l3_desc
    order_by_field: chan_lh1_l3_sort_order
    required_fields: [chan_lh1_l3_cd]
    drill_fields: [chan_lh1_l2_desc, chan_lh1_l1_desc]
    
  - dimension: chan_lh1_l3_sort_order
    view_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l3_sort_order

  - dimension: chan_lh1_l4_cd
    view_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l4_cd

  - dimension: chan_lh1_l4_desc
    view_label: "Channel by Category"
    label: "4 - Channel Group"
    type: string
    sql: ${TABLE}.chan_lh1_l4_desc
    order_by_field: chan_lh1_l4_sort_order
    required_fields: [chan_lh1_l4_cd]
    drill_fields: [chan_lh1_l3_desc, chan_lh1_l2_desc, chan_lh1_l1_desc]

  - dimension: chan_lh1_l4_sort_order
    view_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l4_sort_order


#   - dimension: chan_lh1_total_desc
#     view_label: "Channel by Category"
#     type: string
#     sql: ${TABLE}.chan_lh1_total_desc
# 
#   - dimension: chan_lh1_total_id
#     view_label: "Channel by Category"
#     hidden: true
#     type: number
#     sql: ${TABLE}.chan_lh1_total_id

  # - dimension: chan_lh1_l10_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l10_cd

  # - dimension: chan_lh1_l10_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l10_desc

  # - dimension: chan_lh1_l10_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l10_sort_order

  # - dimension: chan_lh1_l11_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l11_cd

  # - dimension: chan_lh1_l11_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l11_desc

  # - dimension: chan_lh1_l11_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l11_sort_order

  # - dimension: chan_lh1_l12_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l12_cd

  # - dimension: chan_lh1_l12_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l12_desc

  # - dimension: chan_lh1_l12_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l12_sort_order

  # - dimension: chan_lh1_l13_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l13_cd

  # - dimension: chan_lh1_l13_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l13_desc

  # - dimension: chan_lh1_l13_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l13_sort_order

  # - dimension: chan_lh1_l14_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l14_cd

  # - dimension: chan_lh1_l14_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l14_desc

  # - dimension: chan_lh1_l14_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l14_sort_order

  # - dimension: chan_lh1_l15_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l15_cd

  # - dimension: chan_lh1_l15_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l15_desc

  # - dimension: chan_lh1_l15_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l15_sort_order

  # - dimension: chan_lh1_l16_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l16_cd

  # - dimension: chan_lh1_l16_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l16_desc

  # - dimension: chan_lh1_l16_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l16_sort_order

  # - dimension: chan_lh1_l5_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l5_cd

  # - dimension: chan_lh1_l5_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l5_desc

  # - dimension: chan_lh1_l5_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l5_sort_order

  # - dimension: chan_lh1_l6_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l6_cd

  # - dimension: chan_lh1_l6_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l6_desc

  # - dimension: chan_lh1_l6_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l6_sort_order

  # - dimension: chan_lh1_l7_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l7_cd

  # - dimension: chan_lh1_l7_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l7_desc

  # - dimension: chan_lh1_l7_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l7_sort_order

  # - dimension: chan_lh1_l8_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l8_cd

  # - dimension: chan_lh1_l8_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l8_desc

  # - dimension: chan_lh1_l8_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l8_sort_order

  # - dimension: chan_lh1_l9_cd
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l9_cd

  # - dimension: chan_lh1_l9_desc
  #   view_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l9_desc

  # - dimension: chan_lh1_l9_sort_order
  #   view_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l9_sort_order

  - dimension: chan_lh2_l10_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l10_cd

  - dimension: chan_lh2_l10_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l10_desc

  - dimension: chan_lh2_l10_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l10_sort_order

  - dimension: chan_lh2_l11_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l11_cd

  - dimension: chan_lh2_l11_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l11_desc

  - dimension: chan_lh2_l11_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l11_sort_order

  - dimension: chan_lh2_l12_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l12_cd

  - dimension: chan_lh2_l12_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l12_desc

  - dimension: chan_lh2_l12_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l12_sort_order

  - dimension: chan_lh2_l13_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l13_cd

  - dimension: chan_lh2_l13_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l13_desc

  - dimension: chan_lh2_l13_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l13_sort_order

  - dimension: chan_lh2_l14_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l14_cd

  - dimension: chan_lh2_l14_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l14_desc

  - dimension: chan_lh2_l14_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l14_sort_order

  - dimension: chan_lh2_l15_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l15_cd

  - dimension: chan_lh2_l15_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l15_desc

  - dimension: chan_lh2_l15_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l15_sort_order

  - dimension: chan_lh2_l16_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l16_cd

  - dimension: chan_lh2_l16_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l16_desc

  - dimension: chan_lh2_l16_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l16_sort_order

  - dimension: chan_lh2_l1_cd
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l1_cd

  - dimension: chan_lh2_l1_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l1_desc

  - dimension: chan_lh2_l2_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l2_cd

  - dimension: chan_lh2_l2_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l2_desc

  - dimension: chan_lh2_l2_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l2_sort_order

  - dimension: chan_lh2_l3_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l3_cd

  - dimension: chan_lh2_l3_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l3_desc

  - dimension: chan_lh2_l3_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l3_sort_order

  - dimension: chan_lh2_l4_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l4_cd

  - dimension: chan_lh2_l4_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l4_desc

  - dimension: chan_lh2_l4_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l4_sort_order

  - dimension: chan_lh2_l5_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l5_cd

  - dimension: chan_lh2_l5_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l5_desc

  - dimension: chan_lh2_l5_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l5_sort_order

  - dimension: chan_lh2_l6_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l6_cd

  - dimension: chan_lh2_l6_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l6_desc

  - dimension: chan_lh2_l6_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l6_sort_order

  - dimension: chan_lh2_l7_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l7_cd

  - dimension: chan_lh2_l7_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l7_desc

  - dimension: chan_lh2_l7_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l7_sort_order

  - dimension: chan_lh2_l8_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l8_cd

  - dimension: chan_lh2_l8_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l8_desc

  - dimension: chan_lh2_l8_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l8_sort_order

  - dimension: chan_lh2_l9_cd
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l9_cd

  - dimension: chan_lh2_l9_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l9_desc

  - dimension: chan_lh2_l9_sort_order
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_l9_sort_order

  - dimension: chan_lh2_total_desc
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_total_desc

  - dimension: chan_lh2_total_id
    view_label: "Channel by Category 2"
    type: number
    sql: ${TABLE}.chan_lh2_total_id

  - dimension: currency_id
    type: number
    sql: ${TABLE}.currency_id

  - dimension: cust_lh1_l10_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l10_cd

  - dimension: cust_lh1_l10_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l10_desc

  - dimension: cust_lh1_l10_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l10_sort_order

  - dimension: cust_lh1_l11_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l11_cd

  - dimension: cust_lh1_l11_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l11_desc

  - dimension: cust_lh1_l11_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l11_sort_order

  - dimension: cust_lh1_l12_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l12_cd

  - dimension: cust_lh1_l12_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l12_desc

  - dimension: cust_lh1_l12_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l12_sort_order

  - dimension: cust_lh1_l13_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l13_cd

  - dimension: cust_lh1_l13_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l13_desc

  - dimension: cust_lh1_l13_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l13_sort_order

  - dimension: cust_lh1_l14_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l14_cd

  - dimension: cust_lh1_l14_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l14_desc

  - dimension: cust_lh1_l14_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l14_sort_order

  - dimension: cust_lh1_l15_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l15_cd

  - dimension: cust_lh1_l15_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l15_desc

  - dimension: cust_lh1_l15_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l15_sort_order

  - dimension: cust_lh1_l16_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l16_cd

  - dimension: cust_lh1_l16_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l16_desc

  - dimension: cust_lh1_l16_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l16_sort_order

  - dimension: cust_lh1_l1_cd
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l1_cd

  - dimension: cust_lh1_l1_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l1_desc

  - dimension: cust_lh1_l2_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l2_cd

  - dimension: cust_lh1_l2_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l2_desc

  - dimension: cust_lh1_l2_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l2_sort_order

  - dimension: cust_lh1_l3_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l3_cd

  - dimension: cust_lh1_l3_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l3_desc

  - dimension: cust_lh1_l3_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l3_sort_order

  - dimension: cust_lh1_l4_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l4_cd

  - dimension: cust_lh1_l4_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l4_desc

  - dimension: cust_lh1_l4_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l4_sort_order

  - dimension: cust_lh1_l5_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l5_cd

  - dimension: cust_lh1_l5_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l5_desc

  - dimension: cust_lh1_l5_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l5_sort_order

  - dimension: cust_lh1_l6_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l6_cd

  - dimension: cust_lh1_l6_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l6_desc

  - dimension: cust_lh1_l6_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l6_sort_order

  - dimension: cust_lh1_l7_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l7_cd

  - dimension: cust_lh1_l7_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l7_desc

  - dimension: cust_lh1_l7_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l7_sort_order

  - dimension: cust_lh1_l8_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l8_cd

  - dimension: cust_lh1_l8_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l8_desc

  - dimension: cust_lh1_l8_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l8_sort_order

  - dimension: cust_lh1_l9_cd
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l9_cd

  - dimension: cust_lh1_l9_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l9_desc

  - dimension: cust_lh1_l9_sort_order
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_l9_sort_order

  - dimension: cust_lh1_total_desc
    view_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_total_desc

  - dimension: cust_lh1_total_id
    view_label: "Customer by Category"
    type: number
    sql: ${TABLE}.cust_lh1_total_id

  - dimension: cust_lh2_l10_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l10_cd

  - dimension: cust_lh2_l10_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l10_desc

  - dimension: cust_lh2_l10_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l10_sort_order

  - dimension: cust_lh2_l11_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l11_cd

  - dimension: cust_lh2_l11_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l11_desc

  - dimension: cust_lh2_l11_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l11_sort_order

  - dimension: cust_lh2_l12_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l12_cd

  - dimension: cust_lh2_l12_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l12_desc

  - dimension: cust_lh2_l12_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l12_sort_order

  - dimension: cust_lh2_l13_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l13_cd

  - dimension: cust_lh2_l13_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l13_desc

  - dimension: cust_lh2_l13_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l13_sort_order

  - dimension: cust_lh2_l14_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l14_cd

  - dimension: cust_lh2_l14_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l14_desc

  - dimension: cust_lh2_l14_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l14_sort_order

  - dimension: cust_lh2_l15_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l15_cd

  - dimension: cust_lh2_l15_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l15_desc

  - dimension: cust_lh2_l15_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l15_sort_order

  - dimension: cust_lh2_l16_cdv
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l16_cd

  - dimension: cust_lh2_l16_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l16_desc

  - dimension: cust_lh2_l16_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l16_sort_order

  - dimension: cust_lh2_l1_cd
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l1_cd

  - dimension: cust_lh2_l1_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l1_desc

  - dimension: cust_lh2_l2_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l2_cd

  - dimension: cust_lh2_l2_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l2_desc

  - dimension: cust_lh2_l2_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l2_sort_order

  - dimension: cust_lh2_l3_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l3_cd

  - dimension: cust_lh2_l3_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l3_desc

  - dimension: cust_lh2_l3_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l3_sort_order

  - dimension: cust_lh2_l4_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l4_cd

  - dimension: cust_lh2_l4_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l4_desc

  - dimension: cust_lh2_l4_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l4_sort_order

  - dimension: cust_lh2_l5_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l5_cd

  - dimension: cust_lh2_l5_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l5_desc

  - dimension: cust_lh2_l5_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l5_sort_order

  - dimension: cust_lh2_l6_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l6_cd

  - dimension: cust_lh2_l6_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l6_desc

  - dimension: cust_lh2_l6_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l6_sort_order

  - dimension: cust_lh2_l7_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l7_cd

  - dimension: cust_lh2_l7_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l7_desc

  - dimension: cust_lh2_l7_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l7_sort_order

  - dimension: cust_lh2_l8_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l8_cd

  - dimension: cust_lh2_l8_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l8_desc

  - dimension: cust_lh2_l8_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l8_sort_order

  - dimension: cust_lh2_l9_cd
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l9_cd

  - dimension: cust_lh2_l9_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_l9_desc

  - dimension: cust_lh2_l9_sort_order
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_l9_sort_order

  - dimension: cust_lh2_total_desc
    view_label: "Cust LH 2"
    type: string
    sql: ${TABLE}.cust_lh2_total_desc

  - dimension: cust_lh2_total_id
    view_label: "Cust LH 2"
    type: number
    sql: ${TABLE}.cust_lh2_total_id

  - dimension: cust_lh3_l10_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l10_cd

  - dimension: cust_lh3_l10_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l10_desc

  - dimension: cust_lh3_l10_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l10_sort_order

  - dimension: cust_lh3_l11_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l11_cd

  - dimension: cust_lh3_l11_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l11_desc

  - dimension: cust_lh3_l11_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l11_sort_order

  - dimension: cust_lh3_l12_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l12_cd
    view_label: "Cust LH 3"

  - dimension: cust_lh3_l12_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l12_desc

  - dimension: cust_lh3_l12_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l12_sort_order

  - dimension: cust_lh3_l13_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l13_cd

  - dimension: cust_lh3_l13_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l13_desc

  - dimension: cust_lh3_l13_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l13_sort_order

  - dimension: cust_lh3_l14_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l14_cd

  - dimension: cust_lh3_l14_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l14_desc

  - dimension: cust_lh3_l14_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l14_sort_order

  - dimension: cust_lh3_l15_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l15_cd

  - dimension: cust_lh3_l15_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l15_desc

  - dimension: cust_lh3_l15_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l15_sort_order

  - dimension: cust_lh3_l16_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l16_cd

  - dimension: cust_lh3_l16_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l16_desc

  - dimension: cust_lh3_l16_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l16_sort_order

  - dimension: cust_lh3_l1_cd
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l1_cd

  - dimension: cust_lh3_l1_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l1_desc

  - dimension: cust_lh3_l2_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l2_cd

  - dimension: cust_lh3_l2_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l2_desc

  - dimension: cust_lh3_l2_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l2_sort_order

  - dimension: cust_lh3_l3_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l3_cd

  - dimension: cust_lh3_l3_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l3_desc

  - dimension: cust_lh3_l3_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l3_sort_order

  - dimension: cust_lh3_l4_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l4_cd

  - dimension: cust_lh3_l4_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l4_desc

  - dimension: cust_lh3_l4_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l4_sort_order

  - dimension: cust_lh3_l5_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l5_cd

  - dimension: cust_lh3_l5_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l5_desc

  - dimension: cust_lh3_l5_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l5_sort_order

  - dimension: cust_lh3_l6_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l6_cd

  - dimension: cust_lh3_l6_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l6_desc

  - dimension: cust_lh3_l6_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l6_sort_order

  - dimension: cust_lh3_l7_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l7_cd

  - dimension: cust_lh3_l7_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l7_desc

  - dimension: cust_lh3_l7_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l7_sort_order

  - dimension: cust_lh3_l8_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l8_cd

  - dimension: cust_lh3_l8_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l8_desc

  - dimension: cust_lh3_l8_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l8_sort_order

  - dimension: cust_lh3_l9_cd
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l9_cd

  - dimension: cust_lh3_l9_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_l9_desc

  - dimension: cust_lh3_l9_sort_order
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_l9_sort_order

  - dimension: cust_lh3_total_desc
    view_label: "Cust LH 3"
    type: string
    sql: ${TABLE}.cust_lh3_total_desc

  - dimension: cust_lh3_total_id
    view_label: "Cust LH 3"
    type: number
    sql: ${TABLE}.cust_lh3_total_id

  - dimension_group: day
    view_label: "Date"
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.day_date

  - dimension: day_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.day_desc

  - dimension: day_id
    view_label: "Date"
    type: number
    sql: ${TABLE}.day_id

  - dimension: geo_lh1_l10_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l10_cd

  - dimension: geo_lh1_l10_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l10_desc

  - dimension: geo_lh1_l10_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l10_sort_order

  - dimension: geo_lh1_l11_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l11_cd

  - dimension: geo_lh1_l11_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l11_desc

  - dimension: geo_lh1_l11_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l11_sort_order

  - dimension: geo_lh1_l12_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l12_cd

  - dimension: geo_lh1_l12_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l12_desc

  - dimension: geo_lh1_l12_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l12_sort_order

  - dimension: geo_lh1_l13_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l13_cd

  - dimension: geo_lh1_l13_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l13_desc

  - dimension: geo_lh1_l13_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l13_sort_order

  - dimension: geo_lh1_l14_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l14_cd

  - dimension: geo_lh1_l14_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l14_desc

  - dimension: geo_lh1_l14_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l14_sort_order

  - dimension: geo_lh1_l15_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l15_cd

  - dimension: geo_lh1_l15_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l15_desc

  - dimension: geo_lh1_l15_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l15_sort_order

  - dimension: geo_lh1_l16_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l16_cd

  - dimension: geo_lh1_l16_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l16_desc

  - dimension: geo_lh1_l16_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l16_sort_order

  - dimension: geo_lh1_l1_cd
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l1_cd

  - dimension: geo_lh1_l1_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l1_desc

  - dimension: geo_lh1_l2_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l2_cd

  - dimension: geo_lh1_l2_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l2_desc

  - dimension: geo_lh1_l2_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l2_sort_order

  - dimension: geo_lh1_l3_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l3_cd

  - dimension: geo_lh1_l3_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l3_desc

  - dimension: geo_lh1_l3_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l3_sort_order

  - dimension: geo_lh1_l4_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l4_cd

  - dimension: geo_lh1_l4_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l4_desc

  - dimension: geo_lh1_l4_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l4_sort_order

  - dimension: geo_lh1_l5_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l5_cd

  - dimension: geo_lh1_l5_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l5_desc

  - dimension: geo_lh1_l5_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l5_sort_order

  - dimension: geo_lh1_l6_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l6_cd

  - dimension: geo_lh1_l6_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l6_desc

  - dimension: geo_lh1_l6_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l6_sort_order

  - dimension: geo_lh1_l7_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l7_cd

  - dimension: geo_lh1_l7_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l7_desc

  - dimension: geo_lh1_l7_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l7_sort_order

  - dimension: geo_lh1_l8_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l8_cd

  - dimension: geo_lh1_l8_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l8_desc

  - dimension: geo_lh1_l8_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l8_sort_order

  - dimension: geo_lh1_l9_cd
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l9_cd

  - dimension: geo_lh1_l9_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l9_desc

  - dimension: geo_lh1_l9_sort_order
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_l9_sort_order

  - dimension: geo_lh1_total_desc
    view_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_total_desc

  - dimension: geo_lh1_total_id
    view_label: "Geography by Bottler"
    type: number
    sql: ${TABLE}.geo_lh1_total_id

  - dimension: geo_lh2_l10_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l10_cd

  - dimension: geo_lh2_l10_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l10_desc

  - dimension: geo_lh2_l10_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l10_sort_order

  - dimension: geo_lh2_l11_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l11_cd

  - dimension: geo_lh2_l11_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l11_desc

  - dimension: geo_lh2_l11_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l11_sort_order

  - dimension: geo_lh2_l12_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l12_cd

  - dimension: geo_lh2_l12_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l12_desc

  - dimension: geo_lh2_l12_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l12_sort_order

  - dimension: geo_lh2_l13_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l13_cd

  - dimension: geo_lh2_l13_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l13_desc

  - dimension: geo_lh2_l13_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l13_sort_order

  - dimension: geo_lh2_l14_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l14_cd

  - dimension: geo_lh2_l14_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l14_desc

  - dimension: geo_lh2_l14_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l14_sort_order

  - dimension: geo_lh2_l15_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l15_cd

  - dimension: geo_lh2_l15_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l15_desc

  - dimension: geo_lh2_l15_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l15_sort_order

  - dimension: geo_lh2_l16_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l16_cd

  - dimension: geo_lh2_l16_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l16_desc

  - dimension: geo_lh2_l16_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l16_sort_order

  - dimension: geo_lh2_l1_cd
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l1_cd

  - dimension: geo_lh2_l1_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l1_desc

  - dimension: geo_lh2_l2_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l2_cd

  - dimension: geo_lh2_l2_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l2_desc

  - dimension: geo_lh2_l2_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l2_sort_order

  - dimension: geo_lh2_l3_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l3_cd

  - dimension: geo_lh2_l3_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l3_desc

  - dimension: geo_lh2_l3_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l3_sort_order

  - dimension: geo_lh2_l4_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l4_cd

  - dimension: geo_lh2_l4_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l4_desc

  - dimension: geo_lh2_l4_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l4_sort_order

  - dimension: geo_lh2_l5_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l5_cd

  - dimension: geo_lh2_l5_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l5_desc

  - dimension: geo_lh2_l5_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l5_sort_order

  - dimension: geo_lh2_l6_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l6_cd

  - dimension: geo_lh2_l6_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l6_desc

  - dimension: geo_lh2_l6_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l6_sort_order

  - dimension: geo_lh2_l7_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l7_cd

  - dimension: geo_lh2_l7_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l7_desc

  - dimension: geo_lh2_l7_sort_orderv
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l7_sort_order

  - dimension: geo_lh2_l8_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l8_cd

  - dimension: geo_lh2_l8_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l8_desc

  - dimension: geo_lh2_l8_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l8_sort_order

  - dimension: geo_lh2_l9_cd
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l9_cd

  - dimension: geo_lh2_l9_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l9_desc

  - dimension: geo_lh2_l9_sort_order
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_l9_sort_order

  - dimension: geo_lh2_total_desc
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_total_desc

  - dimension: geo_lh2_total_id
    view_label: "Geography by Bottler Territory"
    type: number
    sql: ${TABLE}.geo_lh2_total_id

  - dimension: geo_lh3_l10_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l10_cd

  - dimension: geo_lh3_l10_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l10_desc

  - dimension: geo_lh3_l10_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l10_sort_order

  - dimension: geo_lh3_l11_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l11_cd

  - dimension: geo_lh3_l11_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l11_desc

  - dimension: geo_lh3_l11_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l11_sort_order

  - dimension: geo_lh3_l12_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l12_cd

  - dimension: geo_lh3_l12_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l12_desc

  - dimension: geo_lh3_l12_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l12_sort_order

  - dimension: geo_lh3_l13_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l13_cd

  - dimension: geo_lh3_l13_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l13_desc

  - dimension: geo_lh3_l13_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l13_sort_order

  - dimension: geo_lh3_l14_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l14_cd

  - dimension: geo_lh3_l14_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l14_desc

  - dimension: geo_lh3_l14_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l14_sort_order

  - dimension: geo_lh3_l15_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l15_cd

  - dimension: geo_lh3_l15_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l15_desc

  - dimension: geo_lh3_l15_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l15_sort_order

  - dimension: geo_lh3_l16_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l16_cd

  - dimension: geo_lh3_l16_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l16_desc

  - dimension: geo_lh3_l16_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l16_sort_order

  - dimension: geo_lh3_l1_cd
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l1_cd

  - dimension: geo_lh3_l1_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l1_desc

  - dimension: geo_lh3_l2_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l2_cd

  - dimension: geo_lh3_l2_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l2_desc

  - dimension: geo_lh3_l2_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l2_sort_order

  - dimension: geo_lh3_l3_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l3_cd

  - dimension: geo_lh3_l3_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l3_desc

  - dimension: geo_lh3_l3_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l3_sort_order

  - dimension: geo_lh3_l4_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l4_cd

  - dimension: geo_lh3_l4_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l4_desc

  - dimension: geo_lh3_l4_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l4_sort_order

  - dimension: geo_lh3_l5_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l5_cd

  - dimension: geo_lh3_l5_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l5_desc

  - dimension: geo_lh3_l5_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l5_sort_order

  - dimension: geo_lh3_l6_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l6_cd

  - dimension: geo_lh3_l6_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l6_desc

  - dimension: geo_lh3_l6_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l6_sort_order

  - dimension: geo_lh3_l7_cd
    type: string
    sql: ${TABLE}.geo_lh3_l7_cd

  - dimension: geo_lh3_l7_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l7_desc

  - dimension: geo_lh3_l7_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l7_sort_order

  - dimension: geo_lh3_l8_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l8_cd

  - dimension: geo_lh3_l8_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l8_desc

  - dimension: geo_lh3_l8_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l8_sort_order

  - dimension: geo_lh3_l9_cd
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l9_cd

  - dimension: geo_lh3_l9_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l9_desc

  - dimension: geo_lh3_l9_sort_order
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_l9_sort_order

  - dimension: geo_lh3_total_desc
    view_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_total_desc

  - dimension: geo_lh3_total_id
    view_label: "Geography SLBU"
    type: number
    sql: ${TABLE}.geo_lh3_total_id

  - dimension: month_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_desc

  - dimension: month_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.month_id

  - dimension: outlet_desc
    type: string
    sql: ${TABLE}.outlet_desc

  - dimension: outlet_id
    type: number
    sql: ${TABLE}.outlet_id

  - dimension: pack_lh1_l10_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l10_cd

  - dimension: pack_lh1_l10_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l10_desc

  - dimension: pack_lh1_l10_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l10_sort_order

  - dimension: pack_lh1_l11_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l11_cd

  - dimension: pack_lh1_l11_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l11_desc

  - dimension: pack_lh1_l11_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l11_sort_order

  - dimension: pack_lh1_l12_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l12_cd

  - dimension: pack_lh1_l12_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l12_desc

  - dimension: pack_lh1_l12_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l12_sort_order

  - dimension: pack_lh1_l13_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l13_cd

  - dimension: pack_lh1_l13_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l13_desc

  - dimension: pack_lh1_l13_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l13_sort_order

  - dimension: pack_lh1_l14_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l14_cd

  - dimension: pack_lh1_l14_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l14_desc

  - dimension: pack_lh1_l14_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l14_sort_order

  - dimension: pack_lh1_l15_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l15_cd

  - dimension: pack_lh1_l15_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l15_desc

  - dimension: pack_lh1_l15_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l15_sort_order

  - dimension: pack_lh1_l1_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l1_cd

  - dimension: pack_lh1_l1_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l1_desc

  - dimension: pack_lh1_l1_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l1_sort_order

  - dimension: pack_lh1_l2_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l2_cd

  - dimension: pack_lh1_l2_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l2_desc

  - dimension: pack_lh1_l2_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l2_sort_order

  - dimension: pack_lh1_l3_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l3_cd

  - dimension: pack_lh1_l3_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l3_desc

  - dimension: pack_lh1_l3_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l3_sort_order

  - dimension: pack_lh1_l4_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l4_cd

  - dimension: pack_lh1_l4_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l4_desc

  - dimension: pack_lh1_l4_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l4_sort_order

  - dimension: pack_lh1_l5_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l5_cd

  - dimension: pack_lh1_l5_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l5_desc

  - dimension: pack_lh1_l5_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l5_sort_order

  - dimension: pack_lh1_l6_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l6_cd

  - dimension: pack_lh1_l6_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l6_desc

  - dimension: pack_lh1_l6_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l6_sort_order

  - dimension: pack_lh1_l7_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l7_cd

  - dimension: pack_lh1_l7_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l7_desc

  - dimension: pack_lh1_l7_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l7_sort_order

  - dimension: pack_lh1_l8_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l8_cd

  - dimension: pack_lh1_l8_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l8_desc

  - dimension: pack_lh1_l8_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l8_sort_order

  - dimension: pack_lh1_l9_cd
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l9_cd

  - dimension: pack_lh1_l9_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l9_desc

  - dimension: pack_lh1_l9_sort_order
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_l9_sort_order

  - dimension: pack_lh1_total_desc
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_total_desc

  - dimension: pack_lh1_total_id
    view_label: "Package by Container"
    type: number
    sql: ${TABLE}.pack_lh1_total_id

  - dimension: pack_lh2_l10_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l10_cd

  - dimension: pack_lh2_l10_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l10_desc

  - dimension: pack_lh2_l10_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l10_sort_order

  - dimension: pack_lh2_l11_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l11_cd

  - dimension: pack_lh2_l11_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l11_desc

  - dimension: pack_lh2_l11_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l11_sort_order

  - dimension: pack_lh2_l12_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l12_cd

  - dimension: pack_lh2_l12_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l12_desc

  - dimension: pack_lh2_l12_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l12_sort_order

  - dimension: pack_lh2_l13_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l13_cd

  - dimension: pack_lh2_l13_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l13_desc

  - dimension: pack_lh2_l13_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l13_sort_order

  - dimension: pack_lh2_l14_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l14_cd

  - dimension: pack_lh2_l14_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l14_desc

  - dimension: pack_lh2_l14_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l14_sort_order

  - dimension: pack_lh2_l15_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l15_cd

  - dimension: pack_lh2_l15_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l15_desc

  - dimension: pack_lh2_l15_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l15_sort_order

  - dimension: pack_lh2_l1_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l1_cd

  - dimension: pack_lh2_l1_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l1_desc

  - dimension: pack_lh2_l1_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l1_sort_order

  - dimension: pack_lh2_l2_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l2_cd

  - dimension: pack_lh2_l2_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l2_desc

  - dimension: pack_lh2_l2_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l2_sort_order

  - dimension: pack_lh2_l3_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l3_cd

  - dimension: pack_lh2_l3_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l3_desc

  - dimension: pack_lh2_l3_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l3_sort_order

  - dimension: pack_lh2_l4_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l4_cd

  - dimension: pack_lh2_l4_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l4_desc

  - dimension: pack_lh2_l4_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l4_sort_order

  - dimension: pack_lh2_l5_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l5_cd

  - dimension: pack_lh2_l5_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l5_desc

  - dimension: pack_lh2_l5_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l5_sort_order

  - dimension: pack_lh2_l6_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l6_cd

  - dimension: pack_lh2_l6_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l6_desc

  - dimension: pack_lh2_l6_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l6_sort_order

  - dimension: pack_lh2_l7_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l7_cd

  - dimension: pack_lh2_l7_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l7_desc

  - dimension: pack_lh2_l7_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l7_sort_order

  - dimension: pack_lh2_l8_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l8_cd

  - dimension: pack_lh2_l8_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l8_desc

  - dimension: pack_lh2_l8_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l8_sort_order

  - dimension: pack_lh2_l9_cd
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l9_cd

  - dimension: pack_lh2_l9_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_l9_desc

  - dimension: pack_lh2_l9_sort_order
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_l9_sort_order

  - dimension: pack_lh2_total_desc
    view_label: "Package by Size"
    type: string
    sql: ${TABLE}.pack_lh2_total_desc

  - dimension: pack_lh2_total_id
    view_label: "Package by Size"
    type: number
    sql: ${TABLE}.pack_lh2_total_id

  - dimension: pack_lh3_l10_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l10_cd

  - dimension: pack_lh3_l10_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l10_desc

  - dimension: pack_lh3_l10_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l10_sort_order

  - dimension: pack_lh3_l11_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l11_cd

  - dimension: pack_lh3_l11_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l11_desc

  - dimension: pack_lh3_l11_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l11_sort_order

  - dimension: pack_lh3_l12_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l12_cd

  - dimension: pack_lh3_l12_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l12_desc

  - dimension: pack_lh3_l12_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l12_sort_order

  - dimension: pack_lh3_l13_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l13_cd

  - dimension: pack_lh3_l13_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l13_desc

  - dimension: pack_lh3_l13_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l13_sort_order

  - dimension: pack_lh3_l14_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l14_cd

  - dimension: pack_lh3_l14_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l14_desc

  - dimension: pack_lh3_l14_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l14_sort_order

  - dimension: pack_lh3_l15_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l15_cd

  - dimension: pack_lh3_l15_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l15_desc

  - dimension: pack_lh3_l15_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l15_sort_order

  - dimension: pack_lh3_l1_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l1_cd

  - dimension: pack_lh3_l1_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l1_desc

  - dimension: pack_lh3_l1_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l1_sort_order

  - dimension: pack_lh3_l2_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l2_cd

  - dimension: pack_lh3_l2_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l2_desc

  - dimension: pack_lh3_l2_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l2_sort_order

  - dimension: pack_lh3_l3_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l3_cd

  - dimension: pack_lh3_l3_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l3_desc

  - dimension: pack_lh3_l3_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l3_sort_order

  - dimension: pack_lh3_l4_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l4_cd

  - dimension: pack_lh3_l4_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l4_desc

  - dimension: pack_lh3_l4_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l4_sort_order

  - dimension: pack_lh3_l5_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l5_cd

  - dimension: pack_lh3_l5_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l5_desc

  - dimension: pack_lh3_l5_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l5_sort_order

  - dimension: pack_lh3_l6_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l6_cd

  - dimension: pack_lh3_l6_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l6_desc

  - dimension: pack_lh3_l6_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l6_sort_order

  - dimension: pack_lh3_l7_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l7_cd

  - dimension: pack_lh3_l7_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l7_desc

  - dimension: pack_lh3_l7_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l7_sort_order

  - dimension: pack_lh3_l8_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l8_cd

  - dimension: pack_lh3_l8_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l8_desc

  - dimension: pack_lh3_l8_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l8_sort_order

  - dimension: pack_lh3_l9_cd
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l9_cd

  - dimension: pack_lh3_l9_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_l9_desc

  - dimension: pack_lh3_l9_sort_order
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_l9_sort_order

  - dimension: pack_lh3_total_desc
    view_label: "Package by Serve"
    type: string
    sql: ${TABLE}.pack_lh3_total_desc

  - dimension: pack_lh3_total_id
    view_label: "Package by Serve"
    type: number
    sql: ${TABLE}.pack_lh3_total_id

  - dimension: prod_lh1_l10_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l10_cd

  - dimension: prod_lh1_l10_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l10_desc

  - dimension: prod_lh1_l10_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l10_sort_order

  - dimension: prod_lh1_l11_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l11_cd

  - dimension: prod_lh1_l11_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l11_desc

  - dimension: prod_lh1_l11_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l11_sort_order

  - dimension: prod_lh1_l12_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l12_cd

  - dimension: prod_lh1_l12_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l12_desc

  - dimension: prod_lh1_l12_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l12_sort_order

  - dimension: prod_lh1_l13_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l13_cd

  - dimension: prod_lh1_l13_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l13_desc

  - dimension: prod_lh1_l13_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l13_sort_order

  - dimension: prod_lh1_l14_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l14_cd

  - dimension: prod_lh1_l14_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l14_desc

  - dimension: prod_lh1_l14_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l14_sort_order

  - dimension: prod_lh1_l15_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l15_cd

  - dimension: prod_lh1_l15_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l15_desc

  - dimension: prod_lh1_l15_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l15_sort_order

  - dimension: prod_lh1_l1_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l1_cd

  - dimension: prod_lh1_l1_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l1_desc

  - dimension: prod_lh1_l1_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l1_sort_order

  - dimension: prod_lh1_l2_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l2_cd

  - dimension: prod_lh1_l2_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l2_desc

  - dimension: prod_lh1_l2_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l2_sort_order

  - dimension: prod_lh1_l3_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l3_cd

  - dimension: prod_lh1_l3_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l3_desc

  - dimension: prod_lh1_l3_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l3_sort_order

  - dimension: prod_lh1_l4_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l4_cd

  - dimension: prod_lh1_l4_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l4_desc

  - dimension: prod_lh1_l4_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l4_sort_order

  - dimension: prod_lh1_l5_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l5_cd

  - dimension: prod_lh1_l5_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l5_desc

  - dimension: prod_lh1_l5_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l5_sort_order

  - dimension: prod_lh1_l6_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l6_cd

  - dimension: prod_lh1_l6_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l6_desc

  - dimension: prod_lh1_l6_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l6_sort_order

  - dimension: prod_lh1_l7_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l7_cd

  - dimension: prod_lh1_l7_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l7_desc

  - dimension: prod_lh1_l7_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l7_sort_order

  - dimension: prod_lh1_l8_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l8_cd

  - dimension: prod_lh1_l8_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l8_desc

  - dimension: prod_lh1_l8_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l8_sort_order

  - dimension: prod_lh1_l9_cd
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l9_cd

  - dimension: prod_lh1_l9_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l9_desc

  - dimension: prod_lh1_l9_sort_order
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_l9_sort_order

  - dimension: prod_lh1_total_desc
    view_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_total_desc

  - dimension: prod_lh1_total_id
    view_label: "Product by Brand"
    type: number
    sql: ${TABLE}.prod_lh1_total_id

  - dimension: prod_lh2_l10_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l10_cd

  - dimension: prod_lh2_l10_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l10_desc

  - dimension: prod_lh2_l10_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l10_sort_order

  - dimension: prod_lh2_l11_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l11_cd

  - dimension: prod_lh2_l11_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l11_desc

  - dimension: prod_lh2_l11_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l11_sort_order

  - dimension: prod_lh2_l12_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l12_cd

  - dimension: prod_lh2_l12_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l12_desc

  - dimension: prod_lh2_l12_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l12_sort_order

  - dimension: prod_lh2_l13_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l13_cd

  - dimension: prod_lh2_l13_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l13_desc

  - dimension: prod_lh2_l13_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l13_sort_order

  - dimension: prod_lh2_l14_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l14_cd

  - dimension: prod_lh2_l14_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l14_desc

  - dimension: prod_lh2_l14_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l14_sort_order

  - dimension: prod_lh2_l15_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l15_cd

  - dimension: prod_lh2_l15_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l15_desc

  - dimension: prod_lh2_l15_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l15_sort_order

  - dimension: prod_lh2_l1_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l1_cd

  - dimension: prod_lh2_l1_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l1_desc

  - dimension: prod_lh2_l1_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l1_sort_order

  - dimension: prod_lh2_l2_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l2_cd
    view_label: "Product by Category"

  - dimension: prod_lh2_l2_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l2_desc

  - dimension: prod_lh2_l2_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l2_sort_order

  - dimension: prod_lh2_l3_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l3_cd

  - dimension: prod_lh2_l3_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l3_desc

  - dimension: prod_lh2_l3_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l3_sort_order

  - dimension: prod_lh2_l4_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l4_cd

  - dimension: prod_lh2_l4_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l4_desc

  - dimension: prod_lh2_l4_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l4_sort_order

  - dimension: prod_lh2_l5_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l5_cd

  - dimension: prod_lh2_l5_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l5_desc

  - dimension: prod_lh2_l5_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l5_sort_order

  - dimension: prod_lh2_l6_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l6_cd

  - dimension: prod_lh2_l6_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l6_desc

  - dimension: prod_lh2_l6_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l6_sort_order

  - dimension: prod_lh2_l7_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l7_cd
    view_label: "Product by Category"

  - dimension: prod_lh2_l7_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l7_desc

  - dimension: prod_lh2_l7_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l7_sort_order

  - dimension: prod_lh2_l8_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l8_cd

  - dimension: prod_lh2_l8_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l8_desc

  - dimension: prod_lh2_l8_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l8_sort_order

  - dimension: prod_lh2_l9_cd
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l9_cd

  - dimension: prod_lh2_l9_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l9_desc

  - dimension: prod_lh2_l9_sort_order
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_l9_sort_order

  - dimension: prod_lh2_total_desc
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_total_desc

  - dimension: prod_lh2_total_id
    view_label: "Product by Category"
    type: number
    sql: ${TABLE}.prod_lh2_total_id

  - dimension: prod_lh3_l10_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l10_cd

  - dimension: prod_lh3_l10_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l10_desc

  - dimension: prod_lh3_l10_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l10_sort_order

  - dimension: prod_lh3_l11_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l11_cd

  - dimension: prod_lh3_l11_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l11_desc

  - dimension: prod_lh3_l11_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l11_sort_order

  - dimension: prod_lh3_l12_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l12_cd

  - dimension: prod_lh3_l12_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l12_desc

  - dimension: prod_lh3_l12_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l12_sort_order

  - dimension: prod_lh3_l13_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l13_cd

  - dimension: prod_lh3_l13_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l13_desc

  - dimension: prod_lh3_l13_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l13_sort_order

  - dimension: prod_lh3_l14_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l14_cd

  - dimension: prod_lh3_l14_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l14_desc

  - dimension: prod_lh3_l14_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l14_sort_order

  - dimension: prod_lh3_l15_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l15_cd

  - dimension: prod_lh3_l15_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l15_desc

  - dimension: prod_lh3_l15_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l15_sort_order

  - dimension: prod_lh3_l1_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l1_cd

  - dimension: prod_lh3_l1_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l1_desc

  - dimension: prod_lh3_l1_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l1_sort_order

  - dimension: prod_lh3_l2_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l2_cd

  - dimension: prod_lh3_l2_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l2_desc

  - dimension: prod_lh3_l2_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l2_sort_order

  - dimension: prod_lh3_l3_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l3_cd

  - dimension: prod_lh3_l3_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l3_desc

  - dimension: prod_lh3_l3_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l3_sort_order

  - dimension: prod_lh3_l4_cdv
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l4_cd

  - dimension: prod_lh3_l4_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l4_desc

  - dimension: prod_lh3_l4_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l4_sort_order

  - dimension: prod_lh3_l5_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l5_cd

  - dimension: prod_lh3_l5_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l5_desc

  - dimension: prod_lh3_l5_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l5_sort_order

  - dimension: prod_lh3_l6_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l6_cd

  - dimension: prod_lh3_l6_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l6_desc

  - dimension: prod_lh3_l6_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l6_sort_order

  - dimension: prod_lh3_l7_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l7_cd
    view_label: "Product by Trademark"

  - dimension: prod_lh3_l7_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l7_desc

  - dimension: prod_lh3_l7_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l7_sort_order

  - dimension: prod_lh3_l8_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l8_cd

  - dimension: prod_lh3_l8_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l8_desc

  - dimension: prod_lh3_l8_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l8_sort_order

  - dimension: prod_lh3_l9_cd
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l9_cd

  - dimension: prod_lh3_l9_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_l9_desc
    view_label: "Product by Trademark"

  - dimension: prod_lh3_l9_sort_order
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_l9_sort_order

  - dimension: prod_lh3_total_desc
    view_label: "Product by Trademark"
    type: string
    sql: ${TABLE}.prod_lh3_total_desc
    view_label: "Product by Trademark"

  - dimension: prod_lh3_total_id
    view_label: "Product by Trademark"
    type: number
    sql: ${TABLE}.prod_lh3_total_id

  - dimension: product_desc
    type: string
    sql: ${TABLE}.product_desc

  - dimension: product_id
    type: number
    sql: ${TABLE}.product_id

  - dimension: py2_bottler_standard_cases
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_bottler_standard_cases

  - dimension: py2_freight_revenue
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_freight_revenue

  - dimension: py2_gallons
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_gallons

  - dimension: py2_gross_revenue
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_gross_revenue

  - dimension: py2_individual_transactions
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_individual_transactions

  - dimension: py2_liters
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_liters

  - dimension: py2_physical_cases
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_physical_cases

  - dimension: py2_promotional_discount
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_promotional_discount

  - dimension: py2_purchase_transactions
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_purchase_transactions

  - dimension: py2_trade_discount
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_trade_discount

  - dimension: py2_unit_cases
    view_label: "PY2 Measures"
    type: number
    sql: ${TABLE}.py2_unit_cases

  - dimension: quarter_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.quarter_desc

  - dimension: quarter_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.quarter_id

  - dimension: sales_type_desc
    type: string
    sql: ${TABLE}.sales_type_desc

  - dimension: sales_type_id
    type: number
    sql: ${TABLE}.sales_type_id

  - dimension: to_date_offset
    view_label: "Date"
    type: number
    sql: ${TABLE}.to_date_offset

  - dimension: volume_type_desc
    type: string
    sql: ${TABLE}.volume_type_desc

  - dimension: volume_type_id
    type: number
    sql: ${TABLE}.volume_type_id

  - dimension: week_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.week_desc

  - dimension: week_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.week_id

  - dimension: year_desc
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_desc

  - dimension: year_id
    view_label: "Date"
    type: string
    sql: ${TABLE}.year_id

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

