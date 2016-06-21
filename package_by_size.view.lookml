- view: package_by_size
  fields: 

  - dimension: pack_lh2_l1_cd
    view_label: "Package by Size"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh2_l1_cd

  - dimension: pack_lh2_l1_desc
    view_label: "Package by Size"
    label: "1-Volume Size"
    type: string
    sql: ${TABLE}.pack_lh2_l1_desc
    order_by_field: pack_lh2_l1_sort_order
    required_fields: [pack_lh2_l1_cd]

  - dimension: pack_lh2_l1_sort_order
    view_label: "Package by Size"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh2_l1_sort_order

  - dimension: pack_lh2_l2_cd
    view_label: "Package by Size"
    type: string
    hidden: true
    sql: ${TABLE}.pack_lh2_l2_cd

  - dimension: pack_lh2_l2_desc
    view_label: "Package by Size"
    label: "2-Container"
    type: string
    required_fields: [pack_lh2_l2_cd]
    order_by_field: pack_lh2_l2_sort_order
    drill_fields: [pack_lh2_l1_desc]
    sql: ${TABLE}.pack_lh2_l2_desc

  - dimension: pack_lh2_l2_sort_order
    view_label: "Package by Size"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh2_l2_sort_order

  - dimension: pack_lh2_l3_cd
    view_label: "Package by Size"
    type: string
    hidden: true
    sql: ${TABLE}.pack_lh2_l3_cd

  - dimension: pack_lh2_l3_desc
    view_label: "Package by Size"
    label: "3-Refillability"
    type: string
    required_fields: [pack_lh2_l3_cd]
    order_by_field: pack_lh2_l3_sort_order
    sql: ${TABLE}.pack_lh2_l3_desc

  - dimension: pack_lh2_l3_sort_order
    view_label: "Package by Size"
    type: number
    hidden: true
    sql: ${TABLE}.pack_lh2_l3_sort_order

  - dimension: pack_lh2_l4_cd
    view_label: "Package by Size"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh2_l4_cd

  - dimension: pack_lh2_l4_desc
    view_label: "Package by Size"
    label: "4-Package Segment"
    required_fields: [pack_lh2_l4_cd]
    order_by_field: pack_lh2_l4_sort_order
    type: string
    sql: ${TABLE}.pack_lh2_l4_desc

  - dimension: pack_lh2_l4_sort_order
    view_label: "Package by Size"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh2_l4_sort_order


# ## unused fields
#   - dimension: pack_lh2_l5_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l5_cd
# 
#   - dimension: pack_lh2_l5_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l5_desc
# 
#   - dimension: pack_lh2_l5_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l5_sort_order
# 
#   - dimension: pack_lh2_l6_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l6_cd
# 
#   - dimension: pack_lh2_l6_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l6_desc
# 
#   - dimension: pack_lh2_l6_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l6_sort_order
# 
#   - dimension: pack_lh2_l7_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l7_cd
# 
#   - dimension: pack_lh2_l7_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l7_desc
# 
#   - dimension: pack_lh2_l7_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l7_sort_order
# 
#   - dimension: pack_lh2_l8_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l8_cd
# 
#   - dimension: pack_lh2_l8_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l8_desc
# 
#   - dimension: pack_lh2_l8_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l8_sort_order
# 
#   - dimension: pack_lh2_l9_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l9_cd
# 
#   - dimension: pack_lh2_l9_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l9_desc
# 
#   - dimension: pack_lh2_l9_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l9_sort_order
# 
#   - dimension: pack_lh2_total_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_total_desc
# 
#   - dimension: pack_lh2_total_id
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_total_id
#     
#   - dimension: pack_lh2_l10_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l10_cd
# 
#   - dimension: pack_lh2_l10_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l10_desc
# 
#   - dimension: pack_lh2_l10_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l10_sort_order
# 
#   - dimension: pack_lh2_l11_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l11_cd
# 
#   - dimension: pack_lh2_l11_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l11_desc
# 
#   - dimension: pack_lh2_l11_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l11_sort_order
# 
#   - dimension: pack_lh2_l12_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l12_cd
# 
#   - dimension: pack_lh2_l12_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l12_desc
# 
#   - dimension: pack_lh2_l12_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l12_sort_order
# 
#   - dimension: pack_lh2_l13_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l13_cd
# 
#   - dimension: pack_lh2_l13_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l13_desc
# 
#   - dimension: pack_lh2_l13_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l13_sort_order
# 
#   - dimension: pack_lh2_l14_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l14_cd
# 
#   - dimension: pack_lh2_l14_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l14_desc
# 
#   - dimension: pack_lh2_l14_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l14_sort_order
# 
#   - dimension: pack_lh2_l15_cd
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l15_cd
# 
#   - dimension: pack_lh2_l15_desc
#     view_label: "Package by Size"
#     type: string
#     sql: ${TABLE}.pack_lh2_l15_desc
# 
#   - dimension: pack_lh2_l15_sort_order
#     view_label: "Package by Size"
#     type: number
#     sql: ${TABLE}.pack_lh2_l15_sort_order