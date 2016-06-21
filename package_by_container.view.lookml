# Package by Container pack_lh1_l1_ Volume size 
# Package by Container pack_lh1_l2_ Container
# Package by Container pack_lh1_l3_ Subpackage segment 
# Package by Container pack_lh1_l4_ Package_Segment-Ref/NRref 
# Package by Container pack_lh1_l5_ Package_Segment

- view: package_by_container
  fields: 

  - dimension: pack_lh1_l1_cd
    view_label: "Package by Container"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh1_l1_cd

  - dimension: pack_lh1_l1_desc
    label: "1 - Volume size"
    view_label: "Package by Container"
    type: string
    sql: ${TABLE}.pack_lh1_l1_desc
    required_fields: [pack_lh1_l1_cd]

  - dimension: pack_lh1_l2_cd
    view_label: "Package by Container"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh1_l2_cd

  - dimension: pack_lh1_l2_desc
    view_label: "Package by Container"
    label: "2 - Container"
    type: string
    sql: ${TABLE}.pack_lh1_l2_desc
    order_by_field: pack_lh1_l2_sort_order
    required_fields: [pack_lh1_l2_cd]
    drill_fields: [pack_lh1_l1_desc]
    
  - dimension: pack_lh1_l2_sort_order
    view_label: "Package by Container"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh1_l2_sort_order

  - dimension: pack_lh1_l3_cd
    view_label: "Package by Container"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh1_l3_cd

  - dimension: pack_lh1_l3_desc
    view_label: "Package by Container"
    label: "3 - Subpackage segment" 
    type: string
    sql: ${TABLE}.pack_lh1_l3_desc
    order_by_field: pack_lh1_l3_sort_order
    required_fields: [pack_lh1_l3_cd]
    drill_fields: [pack_lh1_l2_desc, pack_lh1_l1_desc]
    
  - dimension: pack_lh1_l3_sort_order
    view_label: "Package by Container"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh1_l3_sort_order

  - dimension: pack_lh1_l4_cd
    view_label: "Package by Container"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh1_l4_cd

  - dimension: pack_lh1_l4_desc
    view_label: "Package by Container"
    label: "4 - Package Segment"
    type: string
    sql: ${TABLE}.pack_lh1_l4_desc
    order_by_field: pack_lh1_l4_sort_order
    required_fields: [pack_lh1_l4_cd]
    drill_fields: [pack_lh1_l3_desc, pack_lh1_l2_desc, pack_lh1_l1_desc]

  - dimension: pack_lh1_l4_sort_order
    view_label: "Package by Container"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh1_l4_sort_order

  - dimension: pack_lh1_l5_cd
    view_label: "Package by Container"
    hidden: true
    type: string
    sql: ${TABLE}.pack_lh1_l5_cd

  - dimension: pack_lh1_l5_desc
    view_label: "Package by Container"
    label: "5 - Package Segment"
    type: string
    sql: ${TABLE}.pack_lh1_l5_desc
    order_by_field: pack_lh1_l5_sort_order
    required_fields: [pack_lh1_l5_cd]
    drill_fields: [pack_lh1_l4_desc, pack_lh1_l3_desc, pack_lh1_l2_desc, pack_lh1_l1_desc]

  - dimension: pack_lh1_l5_sort_order
    view_label: "Package by Container"
    hidden: true
    type: number
    sql: ${TABLE}.pack_lh1_l5_sort_order


