- view: package_by_serve
  fields: 

  - dimension: pack_lh3_l1_cd
    view_label: "Package by Serve"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh3_l1_cd

  - dimension: pack_lh3_l1_desc
    view_label: "Package by Serve"
    label: "1-Package"
    type: string
    sql: ${TABLE}.pack_lh3_l1_desc
    order_by_field: pack_lh3_l1_sort_order
    required_fields: [pack_lh3_l1_cd]

  - dimension: pack_lh3_l1_sort_order
    view_label: "Package by Serve"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh3_l1_sort_order

  - dimension: pack_lh3_l2_cd
    view_label: "Package by Serve"
    type: string
    hidden: true
    sql: ${TABLE}.pack_lh3_l2_cd

  - dimension: pack_lh3_l2_desc
    view_label: "Package by Serve"
    label: "2-Container"
    type: string
    required_fields: [pack_lh3_l2_cd]
    order_by_field: pack_lh3_l2_sort_order
    drill_fields: [pack_lh3_l1_desc]
    sql: ${TABLE}.pack_lh3_l2_desc

  - dimension: pack_lh3_l2_sort_order
    view_label: "Package by Serve"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh3_l2_sort_order

  - dimension: pack_lh3_l3_cd
    view_label: "Package by Serve"
    type: string
    hidden: true
    sql: ${TABLE}.pack_lh3_l3_cd

  - dimension: pack_lh3_l3_desc
    view_label: "Package by Serve"
    label: "3-Package Size"
    type: string
    required_fields: [pack_lh3_l3_cd]
    order_by_field: pack_lh3_l3_sort_order
    sql: ${TABLE}.pack_lh3_l3_desc

  - dimension: pack_lh3_l3_sort_order
    view_label: "Package by Serve"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh3_l3_sort_order

  - dimension: pack_lh3_l4_cd
    view_label: "Package by Serve"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh3_l4_cd

  - dimension: pack_lh3_l4_desc
    view_label: "Package by Serve"
    label: "4-Package Group"
    required_fields: [pack_lh3_l4_cd]
    order_by_field: pack_lh3_l4_sort_order
    type: string
    sql: ${TABLE}.pack_lh3_l4_desc

  - dimension: pack_lh3_l4_sort_order
    view_label: "Package by Serve"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh3_l4_sort_order

  - dimension: pack_lh3_l5_cd
    view_label: "Package by Serve"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh3_l5_cd

  - dimension: pack_lh3_l5_desc
    view_label: "Package by Serve"
    label: "5-Package Grouping"
    required_fields: [pack_lh3_l5_cd]
    order_by_field: pack_lh3_l5_sort_order
    type: string
    sql: ${TABLE}.pack_lh3_l5_desc

  - dimension: pack_lh3_l5_sort_order
    view_label: "Package by Serve"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh3_l5_sort_order

  - dimension: pack_lh3_l6_cd
    view_label: "Package by Serve"
    type: string
    hidden: true
    sql: ${TABLE}.pack_lh3_l6_cd

  - dimension: pack_lh3_l6_desc
    view_label: "Package by Serve"
    label: "6-Package Category"
    required_fields: [pack_lh3_l6_cd]
    order_by_field: pack_lh3_l6_sort_order
    type: string
    sql: ${TABLE}.pack_lh3_l6_desc

  - dimension: pack_lh3_l6_sort_order
    view_label: "Package by Serve"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh3_l6_sort_order



## Unused fields
#   - dimension: pack_lh3_l7_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l7_cd
# 
#   - dimension: pack_lh3_l7_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l7_desc
# 
#   - dimension: pack_lh3_l7_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l7_sort_order
# 
#   - dimension: pack_lh3_l8_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l8_cd
# 
#   - dimension: pack_lh3_l8_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l8_desc
# 
#   - dimension: pack_lh3_l8_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l8_sort_order
# 
#   - dimension: pack_lh3_l9_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l9_cd
# 
#   - dimension: pack_lh3_l9_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l9_desc
# 
#   - dimension: pack_lh3_l9_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l9_sort_order
# 
#   - dimension: pack_lh3_total_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_total_desc
# 
#   - dimension: pack_lh3_total_id
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_total_id
#   - dimension: pack_lh3_l10_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l10_cd
# 
#   - dimension: pack_lh3_l10_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l10_desc
# 
#   - dimension: pack_lh3_l10_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l10_sort_order
# 
#   - dimension: pack_lh3_l11_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l11_cd
# 
#   - dimension: pack_lh3_l11_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l11_desc
# 
#   - dimension: pack_lh3_l11_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l11_sort_order
# 
#   - dimension: pack_lh3_l12_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l12_cd
# 
#   - dimension: pack_lh3_l12_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l12_desc
# 
#   - dimension: pack_lh3_l12_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l12_sort_order
# 
#   - dimension: pack_lh3_l13_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l13_cd
# 
#   - dimension: pack_lh3_l13_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l13_desc
# 
#   - dimension: pack_lh3_l13_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l13_sort_order
# 
#   - dimension: pack_lh3_l14_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l14_cd
# 
#   - dimension: pack_lh3_l14_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l14_desc
# 
#   - dimension: pack_lh3_l14_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l14_sort_order
# 
#   - dimension: pack_lh3_l15_cd
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l15_cd
# 
#   - dimension: pack_lh3_l15_desc
#     view_label: "Package by Serve"
#     type: string
#     sql: ${TABLE}.pack_lh3_l15_desc
# 
#   - dimension: pack_lh3_l15_sort_order
#     view_label: "Package by Serve"
#     type: number
#     sql: ${TABLE}.pack_lh3_l15_sort_order