
# 
# Customer by Category cust_lh1_l1_
# Tradename
# Customer by Category cust_lh1_l2_
# Customer
# Customer by Category cust_lh1_l3_
# KA Cluster
# Customer by Category cust_lh1_l4_
# Key account


- view: customer_by_category
  fields: 
  - dimension: cust_lh1_l1_cd
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: number
    sql: ${TABLE}.cust_lh1_l1_cd

  - dimension: cust_lh1_l1_desc
    label: "1 - Tradename"
    view_label: "Customer"
    group_label: "Customer by Category"
    type: string
    sql: ${TABLE}.cust_lh1_l1_desc
    required_fields: [cust_lh1_l1_cd]

  - dimension: cust_lh1_l2_cd
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: string
    sql: ${TABLE}.cust_lh1_l2_cd

  - dimension: cust_lh1_l2_desc
    view_label: "Customer"
    group_label: "Customer by Category"
    label: "2 - Customer"
    type: string
    sql: ${TABLE}.cust_lh1_l2_desc
    order_by_field: cust_lh1_l2_sort_order
    required_fields: [cust_lh1_l2_cd]
    drill_fields: [cust_lh1_l1_desc]
    
  - dimension: cust_lh1_l2_sort_order
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: number
    sql: ${TABLE}.cust_lh1_l2_sort_order

  - dimension: cust_lh1_l3_cd
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: string
    sql: ${TABLE}.cust_lh1_l3_cd

  - dimension: cust_lh1_l3_desc
    view_label: "Customer"
    group_label: "Customer by Category"
    label: "3 - KA Cluster" 
    type: string
    sql: ${TABLE}.cust_lh1_l3_desc
    order_by_field: cust_lh1_l3_sort_order
    required_fields: [cust_lh1_l3_cd]
    drill_fields: [cust_lh1_l2_desc, cust_lh1_l1_desc]
    
  - dimension: cust_lh1_l3_sort_order
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: number
    sql: ${TABLE}.cust_lh1_l3_sort_order

  - dimension: cust_lh1_l4_cd
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: string
    sql: ${TABLE}.cust_lh1_l4_cd

  - dimension: cust_lh1_l4_desc
    view_label: "Customer"
    group_label: "Customer by Category"
    label: "4 - Key Account"
    type: string
    sql: ${TABLE}.cust_lh1_l4_desc
    order_by_field: cust_lh1_l4_sort_order
    required_fields: [cust_lh1_l4_cd]
    drill_fields: [cust_lh1_l3_desc, cust_lh1_l2_desc, cust_lh1_l1_desc]

  - dimension: cust_lh1_l4_sort_order
    view_label: "Customer"
    group_label: "Customer by Category"
    hidden: true
    type: number
    sql: ${TABLE}.cust_lh1_l4_sort_order
