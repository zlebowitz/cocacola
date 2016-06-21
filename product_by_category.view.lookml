- view: product_by_category
  fields: 


  - dimension: prod_lh2_l1_cd
    view_label: "Product by Category"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh2_l1_cd

  - dimension: prod_lh2_l1_desc
    label: "1 - Beverage Product"
    view_label: "Product by Category"
    type: string
    sql: ${TABLE}.prod_lh2_l1_desc
    required_fields: [prod_lh2_l1_cd]

  - dimension: prod_lh2_l2_cd
    view_label: "Product by Category"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh2_l2_cd

  - dimension: prod_lh2_l2_desc
    view_label: "Product by Category"
    label: "2 - Local Brand"
    type: string
    sql: ${TABLE}.prod_lh2_l2_desc
    order_by_field: prod_lh2_l2_sort_order
    required_fields: [prod_lh2_l2_cd]
    drill_fields: [prod_lh2_l1_desc]
    
  - dimension: prod_lh2_l2_sort_order
    view_label: "Product by Category"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh2_l2_sort_order

  - dimension: prod_lh2_l3_cd
    view_label: "Product by Category"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh2_l3_cd

  - dimension: prod_lh2_l3_desc
    view_label: "Product by Category"
    label: "3 - Price Segment" 
    type: string
    sql: ${TABLE}.prod_lh2_l3_desc
    order_by_field: prod_lh2_l3_sort_order
    required_fields: [prod_lh2_l3_cd]
    drill_fields: [prod_lh2_l2_desc, prod_lh2_l1_desc]
    
  - dimension: prod_lh2_l3_sort_order
    view_label: "Product by Category"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh2_l3_sort_order

  - dimension: prod_lh2_l4_cd
    view_label: "Product by Category"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh2_l4_cd

  - dimension: prod_lh2_l4_desc
    view_label: "Product by Category"
    label: "4 - Category"
    type: string
    sql: ${TABLE}.prod_lh2_l4_desc
    order_by_field: prod_lh2_l4_sort_order
    required_fields: [prod_lh2_l4_cd]
    drill_fields: [prod_lh2_l3_desc, prod_lh2_l2_desc, prod_lh2_l1_desc]

  - dimension: prod_lh2_l4_sort_order
    view_label: "Product by Category"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh2_l4_sort_order


    
## unused fields ##
#   - dimension: prod_lh2_l5_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l5_cd
# 
#   - dimension: prod_lh2_l5_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l5_desc
# 
#   - dimension: prod_lh2_l5_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l5_sort_order
# 
#   - dimension: prod_lh2_l6_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l6_cd
# 
#   - dimension: prod_lh2_l6_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l6_desc
# 
#   - dimension: prod_lh2_l6_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l6_sort_order
# 
#   - dimension: prod_lh2_l7_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l7_cd
#     view_label: "Product by Category"
# 
#   - dimension: prod_lh2_l7_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l7_desc
# 
#   - dimension: prod_lh2_l7_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l7_sort_order
# 
#   - dimension: prod_lh2_l8_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l8_cd
# 
#   - dimension: prod_lh2_l8_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l8_desc
# 
#   - dimension: prod_lh2_l8_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l8_sort_order
# 
#   - dimension: prod_lh2_l9_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l9_cd
# 
#   - dimension: prod_lh2_l9_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l9_desc
# 
#   - dimension: prod_lh2_l9_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l9_sort_order
# 
#   - dimension: prod_lh2_total_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_total_desc
# 
#   - dimension: prod_lh2_total_id
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_total_id
#   - dimension: prod_lh2_l10_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l10_cd
# 
#   - dimension: prod_lh2_l10_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l10_desc
# 
#   - dimension: prod_lh2_l10_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l10_sort_order
# 
#   - dimension: prod_lh2_l11_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l11_cd
# 
#   - dimension: prod_lh2_l11_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l11_desc
# 
#   - dimension: prod_lh2_l11_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l11_sort_order
# 
#   - dimension: prod_lh2_l12_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l12_cd
# 
#   - dimension: prod_lh2_l12_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l12_desc
# 
#   - dimension: prod_lh2_l12_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l12_sort_order
# 
#   - dimension: prod_lh2_l13_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l13_cd
# 
#   - dimension: prod_lh2_l13_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l13_desc
# 
#   - dimension: prod_lh2_l13_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l13_sort_order
# 
#   - dimension: prod_lh2_l14_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l14_cd
# 
#   - dimension: prod_lh2_l14_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l14_desc
# 
#   - dimension: prod_lh2_l14_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l14_sort_order
# 
#   - dimension: prod_lh2_l15_cd
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l15_cd
# 
#   - dimension: prod_lh2_l15_desc
#     view_label: "Product by Category"
#     type: string
#     sql: ${TABLE}.prod_lh2_l15_desc
# 
#   - dimension: prod_lh2_l15_sort_order
#     view_label: "Product by Category"
#     type: number
#     sql: ${TABLE}.prod_lh2_l15_sort_order