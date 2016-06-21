# 
# Channel by Category 2 2 chan_lh2_l1_ Sub Channel Channel by 
# Category 2 chan_lh2_l2_ Canal Channel by 
# Category 2 chan_lh2_l3_ Sub-grupo canal Channel by 
# Category 2 chan_lh2_l4_ Grupo Canales

- view: channel_by_category_2
  fields: 

  - dimension: chan_lh2_l1_cd
    view_label: "Channel by Category 2"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh2_l1_cd

  - dimension: chan_lh2_l1_desc
    label: "1 - Sub Channel"
    view_label: "Channel by Category 2"
    type: string
    sql: ${TABLE}.chan_lh2_l1_desc
    required_fields: [chan_lh2_l1_cd]

  - dimension: chan_lh2_l2_cd
    view_label: "Channel by Category 2"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh2_l2_cd

  - dimension: chan_lh2_l2_desc
    view_label: "Channel by Category 2"
    label: "2 - Canal"
    type: string
    sql: ${TABLE}.chan_lh2_l2_desc
    order_by_field: chan_lh2_l2_sort_order
    required_fields: [chan_lh2_l2_cd]
    drill_fields: [chan_lh2_l1_desc]
    
  - dimension: chan_lh2_l2_sort_order
    view_label: "Channel by Category 2"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh2_l2_sort_order

  - dimension: chan_lh2_l3_cd
    view_label: "Channel by Category 2"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh2_l3_cd

  - dimension: chan_lh2_l3_desc
    view_label: "Channel by Category 2"
    label: "3 - Sub-grupo" 
    type: string
    sql: ${TABLE}.chan_lh2_l3_desc
    order_by_field: chan_lh2_l3_sort_order
    required_fields: [chan_lh2_l3_cd]
    drill_fields: [chan_lh2_l2_desc, chan_lh2_l1_desc]
    
  - dimension: chan_lh2_l3_sort_order
    view_label: "Channel by Category 2"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh2_l3_sort_order

  - dimension: chan_lh2_l4_cd
    view_label: "Channel by Category 2"
    hidden: true
    type: string
    sql: ${TABLE}.chan_lh2_l4_cd

  - dimension: chan_lh2_l4_desc
    view_label: "Channel by Category 2"
    label: "4 - Grupo Canales"
    type: string
    sql: ${TABLE}.chan_lh2_l4_desc
    order_by_field: chan_lh2_l4_sort_order
    required_fields: [chan_lh2_l4_cd]
    drill_fields: [chan_lh2_l3_desc, chan_lh2_l2_desc, chan_lh2_l1_desc]

  - dimension: chan_lh2_l4_sort_order
    view_label: "Channel by Category 2"
    hidden: true
    type: number
    sql: ${TABLE}.chan_lh2_l4_sort_order

