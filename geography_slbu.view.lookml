# Geography SLBU geo_lh3_l1_
# Location
# Geography SLBU geo_lh3_l2_
# Subzone
# Geography SLBU geo_lh3_l3_
# Zone
# Geography SLBU geo_lh3_l4_
# Bottler
# Geography SLBU geo_lh3_l5_
# Country
# Geography SLBU geo_lh3_l6_
# Region
# Geography SLBU geo_lh3_l7_
# Region



- view: geography_slbu
  fields:
  

  - dimension: geo_lh3_l1_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l1_cd

  - dimension: geo_lh3_l1_desc
    label: "1 - Location"
    view_label: "Geography"
    group_label: "Geography SLBU"
    type: string
    sql: ${TABLE}.geo_lh3_l1_desc
    required_fields: [geo_lh3_l1_cd]

  - dimension: geo_lh3_l2_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l2_cd

  - dimension: geo_lh3_l2_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "2 - Subzone"
    type: string
    sql: ${TABLE}.geo_lh3_l2_desc
    order_by_field: geo_lh3_l2_sort_order
    required_fields: [geo_lh3_l2_cd]
    drill_fields: [geo_lh3_l1_desc]
    
  - dimension: geo_lh3_l2_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l2_sort_order

  - dimension: geo_lh3_l3_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l3_cd

  - dimension: geo_lh3_l3_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "3 - Zone" 
    type: string
    sql: ${TABLE}.geo_lh3_l3_desc
    order_by_field: geo_lh3_l3_sort_order
    required_fields: [geo_lh3_l3_cd]
    drill_fields: [geo_lh3_l2_desc, geo_lh3_l1_desc]
    
  - dimension: geo_lh3_l3_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l3_sort_order

  - dimension: geo_lh3_l4_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l4_cd

  - dimension: geo_lh3_l4_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "4 - Bottler"
    type: string
    sql: ${TABLE}.geo_lh3_l4_desc
    order_by_field: geo_lh3_l4_sort_order
    required_fields: [geo_lh3_l4_cd]
    drill_fields: [geo_lh3_l3_desc, geo_lh3_l2_desc, geo_lh3_l1_desc]

  - dimension: geo_lh3_l4_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l4_sort_order

  - dimension: geo_lh3_l5_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l5_cd

  - dimension: geo_lh3_l5_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "5 - Country"
    type: string
    sql: ${TABLE}.geo_lh3_l5_desc
    order_by_field: geo_lh3_l5_sort_order
    required_fields: [geo_lh3_l5_cd]
    drill_fields: [geo_lh3_l4_desc, geo_lh3_l3_desc, geo_lh3_l2_desc, geo_lh3_l1_desc]

  - dimension: geo_lh3_l5_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l5_sort_order

  - dimension: geo_lh3_l6_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l6_cd

  - dimension: geo_lh3_l6_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "6 - Region"
    type: string
    sql: ${TABLE}.geo_lh3_l6_desc
    order_by_field: geo_lh3_l6_sort_order
    required_fields: [geo_lh3_l6_cd]
    drill_fields: [geo_lh3_l5_desc, geo_lh3_l4_desc, geo_lh3_l3_desc, geo_lh3_l2_desc, geo_lh3_l1_desc]

  - dimension: geo_lh3_l6_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l6_sort_order

  - dimension: geo_lh3_l7_cd
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh3_l7_cd

  - dimension: geo_lh3_l7_desc
    view_label: "Geography"
    group_label: "Geography SLBU"
    label: "7 - Region"
    type: string
    sql: ${TABLE}.geo_lh3_l7_desc
    order_by_field: geo_lh3_l7_sort_order
    required_fields: [geo_lh3_l7_cd]
    drill_fields: [geo_lh3_l6_desc, geo_lh3_l5_desc, geo_lh3_l4_desc, geo_lh3_l3_desc, geo_lh3_l2_desc, geo_lh3_l1_desc]

  - dimension: geo_lh3_l7_sort_order
    view_label: "Geography"
    group_label: "Geography SLBU"
    hidden: true
    type: number
    sql: ${TABLE}.geo_lh3_l7_sort_order
