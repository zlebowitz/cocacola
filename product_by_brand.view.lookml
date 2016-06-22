- view: product_by_brand
  fields: 
  - dimension: prod_lh1_l1_cd
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh1_l1_cd

  - dimension: prod_lh1_l1_desc
    view_label: "Product"
    label: "1 - Beverage Product"
    group_label: "Product by Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l1_desc
    required_fields: [prod_lh1_l1_cd]

  - dimension: prod_lh1_l2_cd
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh1_l2_cd

  - dimension: prod_lh1_l2_desc
    view_label: "Product"
    group_label: "Product by Brand"
    label: "2 - Brand"
    type: string
    sql: ${TABLE}.prod_lh1_l2_desc
    order_by_field: prod_lh1_l2_sort_order
    required_fields: [prod_lh1_l2_cd]
    drill_fields: [prod_lh1_l1_desc]
    
  - dimension: prod_lh1_l2_sort_order
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh1_l2_sort_order

  - dimension: prod_lh1_l3_cd
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh1_l3_cd

  - dimension: prod_lh1_l3_desc
    view_label: "Product"
    group_label: "Product by Brand"
    label: "3 - Brand Group" 
    type: string
    sql: ${TABLE}.prod_lh1_l3_desc
    order_by_field: prod_lh1_l3_sort_order
    required_fields: [prod_lh1_l3_cd]
    drill_fields: [prod_lh1_l2_desc, prod_lh1_l1_desc]
    
  - dimension: prod_lh1_l3_sort_order
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh1_l3_sort_order

  - dimension: prod_lh1_l4_cd
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh1_l4_cd

  - dimension: prod_lh1_l4_desc
    view_label: "Product"
    group_label: "Product by Brand"
    label: "4 - Subcategory"
    type: string
    sql: ${TABLE}.prod_lh1_l4_desc
    order_by_field: prod_lh1_l4_sort_order
    required_fields: [prod_lh1_l4_cd]
    drill_fields: [prod_lh1_l3_desc, prod_lh1_l2_desc, prod_lh1_l1_desc]

  - dimension: prod_lh1_l4_sort_order
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh1_l4_sort_order

  - dimension: prod_lh1_l5_cd
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh1_l5_cd

  - dimension: prod_lh1_l5_desc
    view_label: "Product"
    group_label: "Product by Brand"
    label: "5 - Category"
    type: string
    sql: ${TABLE}.prod_lh1_l5_desc
    order_by_field: prod_lh1_l5_sort_order
    required_fields: [prod_lh1_l5_cd]
    drill_fields: [prod_lh1_l4_desc, prod_lh1_l3_desc, prod_lh1_l2_desc, prod_lh1_l1_desc]

  - dimension: prod_lh1_l5_sort_order
    view_label: "Product"
    group_label: "Product by Brand"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh1_l5_sort_order 
## Unused fields
#   - dimension: prod_lh1_l6_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l6_cd
# 
#   - dimension: prod_lh1_l6_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l6_desc
# 
#   - dimension: prod_lh1_l6_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l6_sort_order
# 
#   - dimension: prod_lh1_l7_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l7_cd
# 
#   - dimension: prod_lh1_l7_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l7_desc
# 
#   - dimension: prod_lh1_l7_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l7_sort_order
# 
#   - dimension: prod_lh1_l8_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l8_cd
# 
#   - dimension: prod_lh1_l8_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l8_desc
# 
#   - dimension: prod_lh1_l8_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l8_sort_order
# 
#   - dimension: prod_lh1_l9_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l9_cd
# 
#   - dimension: prod_lh1_l9_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l9_desc
# 
#   - dimension: prod_lh1_l9_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l9_sort_order
# 
#   - dimension: prod_lh1_total_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_total_desc
# 
#   - dimension: prod_lh1_total_id
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_total_id
# 
#   - dimension: prod_lh1_l10_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l10_cd
# 
#   - dimension: prod_lh1_l10_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l10_desc
# 
#   - dimension: prod_lh1_l10_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l10_sort_order
# 
#   - dimension: prod_lh1_l11_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l11_cd
# 
#   - dimension: prod_lh1_l11_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l11_desc
# 
#   - dimension: prod_lh1_l11_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l11_sort_order
# 
#   - dimension: prod_lh1_l12_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l12_cd
# 
#   - dimension: prod_lh1_l12_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l12_desc
# 
#   - dimension: prod_lh1_l12_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l12_sort_order
# 
#   - dimension: prod_lh1_l13_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l13_cd
# 
#   - dimension: prod_lh1_l13_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l13_desc
# 
#   - dimension: prod_lh1_l13_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l13_sort_order
# 
#   - dimension: prod_lh1_l14_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l14_cd
# 
#   - dimension: prod_lh1_l14_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l14_desc
# 
#   - dimension: prod_lh1_l14_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l14_sort_order
# 
#   - dimension: prod_lh1_l15_cd
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l15_cd
# 
#   - dimension: prod_lh1_l15_desc
#     group_label: "Product by Brand"
#     type: string
#     sql: ${TABLE}.prod_lh1_l15_desc
# 
#   - dimension: prod_lh1_l15_sort_order
#     group_label: "Product by Brand"
#     type: number
#     sql: ${TABLE}.prod_lh1_l15_sort_order