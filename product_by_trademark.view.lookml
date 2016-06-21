- view: product_by_trademark
  fields: 



  - dimension: prod_lh3_l1_cd
    view_label: "Product by Trademark"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh3_l1_cd

  - dimension: prod_lh3_l1_desc
    view_label: "Product by Trademark"
    label: "1-Beverage Product"
    type: string
    sql: ${TABLE}.prod_lh3_l1_desc
    order_by_field: prod_lh3_l1_sort_order
    required_fields: [prod_lh3_l1_cd]

  - dimension: prod_lh3_l1_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l1_sort_order

  - dimension: prod_lh3_l2_cd
    view_label: "Product by Trademark"
    type: string
    hidden: true
    sql: ${TABLE}.prod_lh3_l2_cd

  - dimension: prod_lh3_l2_desc
    view_label: "Product by Trademark"
    label: "2-Brand"
    type: string
    required_fields: [prod_lh3_l2_cd]
    order_by_field: prod_lh3_l2_sort_order
    drill_fields: [prod_lh3_l1_desc]
    sql: ${TABLE}.prod_lh3_l2_desc

  - dimension: prod_lh3_l2_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l2_sort_order

  - dimension: prod_lh3_l3_cd
    view_label: "Product by Trademark"
    type: string
    hidden: true
    sql: ${TABLE}.prod_lh3_l3_cd

  - dimension: prod_lh3_l3_desc
    view_label: "Product by Trademark"
    label: "3-Brand Group"
    type: string
    required_fields: [prod_lh3_l3_cd]
    order_by_field: prod_lh3_l3_sort_order
    sql: ${TABLE}.prod_lh3_l3_desc

  - dimension: prod_lh3_l3_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l3_sort_order

  - dimension: prod_lh3_l4_cd
    view_label: "Product by Trademark"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh3_l4_cd

  - dimension: prod_lh3_l4_desc
    view_label: "Product by Trademark"
    label: "4-Trademark"
    required_fields: [prod_lh3_l4_cd]
    order_by_field: prod_lh3_l4_sort_order
    type: string
    sql: ${TABLE}.prod_lh3_l4_desc

  - dimension: prod_lh3_l4_sort_order
    view_label: "Product by Trademark"
    hidden: true
    type: number
    sql: ${TABLE}.prod_lh3_l4_sort_order

  - dimension: prod_lh3_l5_cd
    view_label: "Product by Trademark"
    hidden: true
    type: string
    sql: ${TABLE}.prod_lh3_l5_cd

  - dimension: prod_lh3_l5_desc
    view_label: "Product by Trademark"
    label: "5-Brand Grouping"
    required_fields: [prod_lh3_l5_cd]
    order_by_field: prod_lh3_l5_sort_order
    type: string
    sql: ${TABLE}.prod_lh3_l5_desc

  - dimension: prod_lh3_l5_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l5_sort_order

  - dimension: prod_lh3_l6_cd
    view_label: "Product by Trademark"
    type: string
    hidden: true
    sql: ${TABLE}.prod_lh3_l6_cd

  - dimension: prod_lh3_l6_desc
    view_label: "Product by Trademark"
    label: "6-Sub Category"
    required_fields: [prod_lh3_l6_cd]
    order_by_field: prod_lh3_l6_sort_order
    type: string
    sql: ${TABLE}.prod_lh3_l6_desc

  - dimension: prod_lh3_l6_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l6_sort_order

  - dimension: prod_lh3_l7_cd
    view_label: "Product by Trademark"
    type: string
    hidden: true
    sql: ${TABLE}.prod_lh3_l7_cd

  - dimension: prod_lh3_l7_desc
    view_label: "Product by Trademark"
    label: "7-Category"
    required_fields: [prod_lh3_l7_cd]
    order_by_field: prod_lh3_l7_sort_order
    type: string
    sql: ${TABLE}.prod_lh3_l7_desc

  - dimension: prod_lh3_l7_sort_order
    view_label: "Product by Trademark"
    type: number
    hidden: true
    sql: ${TABLE}.prod_lh3_l7_sort_order


    
### Unused fields
#   - dimension: prod_lh3_total_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_total_desc
#     view_label: "Product by Trademark"
#   
#   - dimension: prod_lh3_total_id
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_total_id
# 
#   - dimension: prod_lh3_l10_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l10_cd
# 
#   - dimension: prod_lh3_l10_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l10_desc
# 
#   - dimension: prod_lh3_l10_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l10_sort_order
# 
#   - dimension: prod_lh3_l11_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l11_cd
# 
#   - dimension: prod_lh3_l11_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l11_desc
# 
#   - dimension: prod_lh3_l11_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l11_sort_order
# 
#   - dimension: prod_lh3_l12_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l12_cd
# 
#   - dimension: prod_lh3_l12_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l12_desc
# 
#   - dimension: prod_lh3_l12_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l12_sort_order
# 
#   - dimension: prod_lh3_l13_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l13_cd
# 
#   - dimension: prod_lh3_l13_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l13_desc
# 
#   - dimension: prod_lh3_l13_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l13_sort_order
# 
#   - dimension: prod_lh3_l14_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l14_cd
# 
#   - dimension: prod_lh3_l14_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l14_desc
# 
#   - dimension: prod_lh3_l14_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l14_sort_order
# 
#   - dimension: prod_lh3_l15_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l15_cd
# 
#   - dimension: prod_lh3_l15_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l15_desc
# 
#   - dimension: prod_lh3_l15_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l15_sort_order
#   - dimension: prod_lh3_l8_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l8_cd
# 
#   - dimension: prod_lh3_l8_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l8_desc
# 
#   - dimension: prod_lh3_l8_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l8_sort_order
# 
#   - dimension: prod_lh3_l9_cd
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l9_cd
# 
#   - dimension: prod_lh3_l9_desc
#     view_label: "Product by Trademark"
#     type: string
#     sql: ${TABLE}.prod_lh3_l9_desc
#     view_label: "Product by Trademark"
# 
#   - dimension: prod_lh3_l9_sort_order
#     view_label: "Product by Trademark"
#     type: number
#     sql: ${TABLE}.prod_lh3_l9_sort_order