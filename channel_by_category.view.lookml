- view: channel_by_category
  fields: 
#################################
##### Channel By Category
#################################

  - dimension: chan_lh1_l1_cd
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l1_cd

  - dimension: chan_lh1_l1_desc
    view_label: "Channel"
    label: "1 - Sub Channel"
    group_label: "Channel by Category"
    type: string
    sql: ${TABLE}.chan_lh1_l1_desc
    required_fields: [chan_lh1_l1_cd]

  - dimension: chan_lh1_l2_cd
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l2_cd

  - dimension: chan_lh1_l2_desc
    view_label: "Channel"
    group_label: "Channel by Category"
    label: "2 - Channel"
    type: string
    sql: ${TABLE}.chan_lh1_l2_desc
    order_by_field: chan_lh1_l2_sort_order
    required_fields: [chan_lh1_l2_cd]
    drill_fields: [chan_lh1_l1_desc]
    
  - dimension: chan_lh1_l2_sort_order
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l2_sort_order

  - dimension: chan_lh1_l3_cd
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l3_cd

  - dimension: chan_lh1_l3_desc
    view_label: "Channel"
    group_label: "Channel by Category"
    label: "3 - Channel Sub Group" 
    type: string
    sql: ${TABLE}.chan_lh1_l3_desc
    order_by_field: chan_lh1_l3_sort_order
    required_fields: [chan_lh1_l3_cd]
    drill_fields: [chan_lh1_l2_desc, chan_lh1_l1_desc]
    
  - dimension: chan_lh1_l3_sort_order
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l3_sort_order

  - dimension: chan_lh1_l4_cd
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh1_l4_cd

  - dimension: chan_lh1_l4_desc
    view_label: "Channel"
    group_label: "Channel by Category"
    label: "4 - Channel Group"
    type: string
    sql: ${TABLE}.chan_lh1_l4_desc
    order_by_field: chan_lh1_l4_sort_order
    required_fields: [chan_lh1_l4_cd]
    drill_fields: [chan_lh1_l3_desc, chan_lh1_l2_desc, chan_lh1_l1_desc]

  - dimension: chan_lh1_l4_sort_order
    view_label: "Channel"
    group_label: "Channel by Category"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh1_l4_sort_order


#   - dimension: chan_lh1_total_desc
#     group_label: "Channel by Category"
#     type: string
#     sql: ${TABLE}.chan_lh1_total_desc
# 
#   - dimension: chan_lh1_total_id
#     group_label: "Channel by Category"
#     hidden: true
#     type: number
#     sql: ${TABLE}.chan_lh1_total_id

  # - dimension: chan_lh1_l10_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l10_cd

  # - dimension: chan_lh1_l10_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l10_desc

  # - dimension: chan_lh1_l10_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l10_sort_order

  # - dimension: chan_lh1_l11_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l11_cd

  # - dimension: chan_lh1_l11_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l11_desc

  # - dimension: chan_lh1_l11_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l11_sort_order

  # - dimension: chan_lh1_l12_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l12_cd

  # - dimension: chan_lh1_l12_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l12_desc

  # - dimension: chan_lh1_l12_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l12_sort_order

  # - dimension: chan_lh1_l13_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l13_cd

  # - dimension: chan_lh1_l13_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l13_desc

  # - dimension: chan_lh1_l13_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l13_sort_order

  # - dimension: chan_lh1_l14_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l14_cd

  # - dimension: chan_lh1_l14_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l14_desc

  # - dimension: chan_lh1_l14_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l14_sort_order

  # - dimension: chan_lh1_l15_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l15_cd

  # - dimension: chan_lh1_l15_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l15_desc

  # - dimension: chan_lh1_l15_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l15_sort_order

  # - dimension: chan_lh1_l16_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l16_cd

  # - dimension: chan_lh1_l16_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l16_desc

  # - dimension: chan_lh1_l16_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l16_sort_order

  # - dimension: chan_lh1_l5_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l5_cd

  # - dimension: chan_lh1_l5_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l5_desc

  # - dimension: chan_lh1_l5_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l5_sort_order

  # - dimension: chan_lh1_l6_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l6_cd

  # - dimension: chan_lh1_l6_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l6_desc

  # - dimension: chan_lh1_l6_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l6_sort_order

  # - dimension: chan_lh1_l7_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l7_cd

  # - dimension: chan_lh1_l7_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l7_desc

  # - dimension: chan_lh1_l7_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l7_sort_order

  # - dimension: chan_lh1_l8_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l8_cd

  # - dimension: chan_lh1_l8_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l8_desc

  # - dimension: chan_lh1_l8_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l8_sort_order

  # - dimension: chan_lh1_l9_cd
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l9_cd

  # - dimension: chan_lh1_l9_desc
  #   group_label: "Channel by Category"
  #   type: string
  #   sql: ${TABLE}.chan_lh1_l9_desc

  # - dimension: chan_lh1_l9_sort_order
  #   group_label: "Channel by Category"
  #   type: number
  #   sql: ${TABLE}.chan_lh1_l9_sort_order