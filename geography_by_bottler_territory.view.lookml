# Geography by Bottler Territory Territory geo_lh2_l1_
# Location
# Geography by Bottler Territory Territory geo_lh2_l2_
# Territory
# Geography by Bottler Territory Territory geo_lh2_l3_
# Division
# Geography by Bottler Territory Territory geo_lh2_l4_
# Bottler
# Geography by Bottler Territory Territory geo_lh2_l5_
# Country
# Geography by Bottler Territory Territory geo_lh2_l6_
# Franchise_unit


- view: geography_by_bottler_territory
  fields: 
  
 
  - dimension: geo_lh2_l1_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l1_cd

  - dimension: geo_lh2_l1_desc
    label: "1 - Location"
    view_label: "Geography by Bottler Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l1_desc
    required_fields: [geo_lh2_l1_cd]

  - dimension: geo_lh2_l2_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh2_l2_cd

  - dimension: geo_lh2_l2_desc
    view_label: "Geography by Bottler Territory"
    label: "2 - Territory"
    type: string
    sql: ${TABLE}.geo_lh2_l2_desc
    order_by_field: geo_lh2_l2_sort_order
    required_fields: [geo_lh2_l2_cd]
    drill_fields: [geo_lh2_l1_desc]
    
  - dimension: geo_lh2_l2_sort_order
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l2_sort_order

  - dimension: geo_lh2_l3_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh2_l3_cd

  - dimension: geo_lh2_l3_desc
    view_label: "Geography by Bottler Territory"
    label: "3 - Division" 
    type: string
    sql: ${TABLE}.geo_lh2_l3_desc
    order_by_field: geo_lh2_l3_sort_order
    required_fields: [geo_lh2_l3_cd]
    drill_fields: [geo_lh2_l2_desc, geo_lh2_l1_desc]
    
  - dimension: geo_lh2_l3_sort_order
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l3_sort_order

  - dimension: geo_lh2_l4_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh2_l4_cd

  - dimension: geo_lh2_l4_desc
    view_label: "Geography by Bottler Territory"
    label: "4 - Bottler"
    type: string
    sql: ${TABLE}.geo_lh2_l4_desc
    order_by_field: geo_lh2_l4_sort_order
    required_fields: [geo_lh2_l4_cd]
    drill_fields: [geo_lh2_l3_desc, geo_lh2_l2_desc, geo_lh2_l1_desc]

  - dimension: geo_lh2_l4_sort_order
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l4_sort_order

  - dimension: geo_lh2_l5_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh2_l5_cd

  - dimension: geo_lh2_l5_desc
    view_label: "Geography by Bottler Territory"
    label: "5 - Country"
    type: string
    sql: ${TABLE}.geo_lh2_l5_desc
    order_by_field: geo_lh2_l5_sort_order
    required_fields: [geo_lh2_l5_cd]
    drill_fields: [geo_lh2_l4_desc, geo_lh2_l3_desc, geo_lh2_l2_desc, geo_lh2_l1_desc]

  - dimension: geo_lh2_l5_sort_order
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l5_sort_order

  - dimension: geo_lh2_l6_cd
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh2_l6_cd

  - dimension: geo_lh2_l6_desc
    view_label: "Geography by Bottler Territory"
    label: "6 - Franchise unit"
    type: string
    sql: ${TABLE}.geo_lh2_l6_desc
    order_by_field: geo_lh2_l6_sort_order
    required_fields: [geo_lh2_l6_cd]
    drill_fields: [geo_lh2_l5_desc, geo_lh2_l4_desc, geo_lh2_l3_desc, geo_lh2_l2_desc, geo_lh2_l1_desc]

  - dimension: geo_lh2_l6_sort_order
    view_label: "Geography by Bottler Territory"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh2_l6_sort_order

