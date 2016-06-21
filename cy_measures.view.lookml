- view: cy_measures
  fields: 
  
  - dimension: cy_bottler_standard_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_bottler_standard_cases

  - dimension: cy_freight_revenue
    hidden: true
    type: number
    sql: ${TABLE}.cy_freight_revenue

  - dimension: cy_gallons
    hidden: true
    type: number
    sql: ${TABLE}.cy_gallons

  - dimension: cy_gross_revenue
    hidden: true
    type: number
    sql: ${TABLE}.cy_gross_revenue

  - dimension: cy_individual_transactions
    hidden: true
    type: number
    sql: ${TABLE}.cy_individual_transactions

  - dimension: cy_liters
    hidden: true
    type: number
    sql: ${TABLE}.cy_liters

  - dimension: cy_physical_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_physical_cases

  - dimension: cy_promotional_discount
    hidden: true
    type: number
    sql: ${TABLE}.cy_promotional_discount

  - dimension: cy_purchase_transactions
    hidden: true
    type: number
    sql: ${TABLE}.cy_purchase_transactions

  - dimension: cy_trade_discount
    hidden: true
    type: number
    sql: ${TABLE}.cy_trade_discount

  - dimension: cy_unit_cases
    hidden: true
    type: number
    sql: ${TABLE}.cy_unit_cases
    
  
 
  - measure: total_cy_bottler_standard_cases
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_bottler_standard_cases}

  - measure: total_cy_freight_revenue
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_freight_revenue}

  - measure: total_cy_gallons
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_gallons}

  - measure: total_cy_gross_revenue
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_gross_revenue}

  - measure: total_cy_individual_transactions
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_individual_transactions}

  - measure: total_cy_liters
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_liters}

  - measure: total_cy_physical_cases
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_physical_cases}

  - measure: total_cy_promotional_discount
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_promotional_discount}

  - measure: total_cy_purchase_transactions
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_purchase_transactions}

  - measure: total_cy_trade_discount
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_trade_discount}

  - measure: total_cy_unit_cases
    view_label: "Sales Measures - CY"
    type: sum
    sql: ${cy_unit_cases}