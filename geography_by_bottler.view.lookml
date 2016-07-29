# Geography by Bottler geo_lh1_l1_
# Location
# Geography by Bottler geo_lh1_l2_
# Subdivision
# Geography by Bottler geo_lh1_l3_
# Division
# Geography by Bottler geo_lh1_l4_
# Bottler
# Geography by Bottler geo_lh1_l5_
# Country
# Geography by Bottler geo_lh1_l6_
# Franchise unit



- view: geography_by_bottler
  fields: 
   

  - dimension: geo_lh1_l1_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l1_cd

  - dimension: geo_lh1_l1_desc
    label: "1 - Location"
    view_label: "Geography"
    group_label: "Geography by Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l1_desc
    required_fields: [geo_lh1_l1_cd]

  - dimension: geo_lh1_l2_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l2_cd

  - dimension: geo_lh1_l2_desc
    view_label: "Geography"
    group_label: "Geography by Bottler"
    label: "2 - Subdivision"
    type: string
    sql: ${TABLE}.geo_lh1_l2_desc
    order_by_field: geo_lh1_l2_sort_order
    required_fields: [geo_lh1_l2_cd]
    drill_fields: [geo_lh1_l1_desc]
    
  - dimension: geo_lh1_l2_sort_order
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l2_sort_order

  - dimension: geo_lh1_l3_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l3_cd

  - dimension: geo_lh1_l3_desc
    group_label: "Geography by Bottler"
    view_label: "Geography"
    label: "3 - Division" 
    type: string
    sql: ${TABLE}.geo_lh1_l3_desc
    order_by_field: geo_lh1_l3_sort_order
    required_fields: [geo_lh1_l3_cd]
    drill_fields: [geo_lh1_l2_desc, geo_lh1_l1_desc]
    
  - dimension: geo_lh1_l3_sort_order
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l3_sort_order

  - dimension: geo_lh1_l4_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l4_cd

  - dimension: geo_lh1_l4_desc
    view_label: "Geography"
    group_label: "Geography by Bottler"
    label: "4 - Bottler"
    type: string
    sql: ${TABLE}.geo_lh1_l4_desc
    order_by_field: geo_lh1_l4_sort_order
    required_fields: [geo_lh1_l4_cd]
    drill_fields: [geo_lh1_l3_desc, geo_lh1_l2_desc, geo_lh1_l1_desc]

  - dimension: geo_lh1_l4_sort_order
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l4_sort_order

  - dimension: geo_lh1_l5_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l5_cd

  - dimension: geo_lh1_l5_desc
    view_label: "Geography"
    group_label: "Geography by Bottler"
    label: "5 - Country"
    type: string
    sql: ${TABLE}.geo_lh1_l5_desc
    order_by_field: geo_lh1_l5_sort_order
    required_fields: [geo_lh1_l5_cd]
    drill_fields: [geo_lh1_l4_desc, geo_lh1_l3_desc, geo_lh1_l2_desc, geo_lh1_l1_desc]
    map_layer: countries

  - dimension: geo_lh1_l5_sort_order
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l5_sort_order

  - dimension: geo_lh1_l6_cd
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l6_cd

  - dimension: geo_lh1_l6_desc
    view_label: "Geography"
    group_label: "Geography by Bottler"
    label: "6 - Franchise unit"
    type: string
    sql: ${TABLE}.geo_lh1_l6_desc
    order_by_field: geo_lh1_l6_sort_order
    required_fields: [geo_lh1_l6_cd]
    drill_fields: [geo_lh1_l5_desc, geo_lh1_l4_desc, geo_lh1_l3_desc, geo_lh1_l2_desc, geo_lh1_l1_desc]

  - dimension: geo_lh1_l6_sort_order
    view_label: "Geography"
    group_label: "Geography by Bottler"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh1_l6_sort_order

