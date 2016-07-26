- view: py2_measures
  fields: 
  
  - dimension: py2_bottler_standard_cases
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_bottler_standard_cases

  - dimension: py2_freight_revenue
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_freight_revenue

  - dimension: py2_gallons
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_gallons

  - dimension: py2_gross_revenue
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_gross_revenue

  - dimension: py2_individual_transactions
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_individual_transactions

  - dimension: py2_liters
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_liters

  - dimension: py2_physical_cases
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_physical_cases

  - dimension: py2_promotional_discount
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_promotional_discount

  - dimension: py2_purchase_transactions
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_purchase_transactions

  - dimension: py2_trade_discount
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_trade_discount

  - dimension: py2_unit_cases
    hidden: true
    view_label: "Sales Measures - PY2"
    type: number
    sql: ${TABLE}.py2_unit_cases

  - measure: total_py2_bottler_standard_cases
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_bottler_standard_cases}

  - measure: total_py2_freight_revenue
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_freight_revenue}

  - measure: total_py2_gallons
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_gallons}

  - measure: total_py2_gross_revenue
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_gross_revenue}

  - measure: total_py2_individual_transactions
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_individual_transactions}

  - measure: total_py2_liters
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_liters}

  - measure: total_py2_physical_cases
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_physical_cases}

  - measure: total_py2_promotional_discount
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_promotional_discount}

  - measure: total_py2_purchase_transactions
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_purchase_transactions}

  - measure: total_py2_trade_discount
    view_label: "Sales Measures - PY2"
    type: sum
    sql: ${py2_trade_discount}

  - measure: total_py2_unit_cases
    view_label: "Measures - Unit Cases"
    label: "PY2 Unit Cases"
    type: sum
    sql: ${py2_unit_cases}