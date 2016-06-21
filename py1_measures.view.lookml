- view: py1_measures
  fields: 
 
  - dimension: py1_bottler_standard_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_bottler_standard_cases

  - dimension: py1_freight_revenue
    hidden: true
    type: number
    sql: ${TABLE}.py1_freight_revenue

  - dimension: py1_gallons
    hidden: true
    type: number
    sql: ${TABLE}.py1_gallons

  - dimension: py1_gross_revenue
    hidden: true
    type: number
    sql: ${TABLE}.py1_gross_revenue

  - dimension: py1_individual_transactions
    hidden: true
    type: number
    sql: ${TABLE}.py1_individual_transactions

  - dimension: py1_liters
    hidden: true
    type: number
    sql: ${TABLE}.py1_liters

  - dimension: py1_physical_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_physical_cases

  - dimension: py1_promotional_discount
    hidden: true
    type: number
    sql: ${TABLE}.py1_promotional_discount

  - dimension: py1_purchase_transactions
    hidden: true
    type: number
    sql: ${TABLE}.py1_purchase_transactions

  - dimension: py1_trade_discount
    hidden: true
    type: number
    sql: ${TABLE}.py1_trade_discount

  - dimension: py1_unit_cases
    hidden: true
    type: number
    sql: ${TABLE}.py1_unit_cases
    
  
 
  - measure: total_py1_bottler_standard_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_bottler_standard_cases}

  - measure: total_py1_freight_revenue
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_freight_revenue}

  - measure: total_py1_gallons
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_gallons}

  - measure: total_py1_gross_revenue
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_gross_revenue}

  - measure: total_py1_individual_transactions
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_individual_transactions}

  - measure: total_py1_liters
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_liters}

  - measure: total_py1_physical_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_physical_cases}

  - measure: total_py1_promotional_discount
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_promotional_discount}

  - measure: total_py1_purchase_transactions
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_purchase_transactions}

  - measure: total_py1_trade_discount
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_trade_discount}

  - measure: total_py1_unit_cases
    view_label: "PY1 Measures"
    type: sum
    sql: ${py1_unit_cases}
