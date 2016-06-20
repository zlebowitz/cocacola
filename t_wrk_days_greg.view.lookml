- view: t_wrk_days_greg
  sql_table_name: report.t_wrk_days_greg
  fields:

  - dimension: bottler_id
    type: number
    sql: ${TABLE}.bottler_id

  - dimension: cy_consumption_day
    type: number
    sql: ${TABLE}.cy_consumption_day

  - dimension: cy_working_day
    type: number
    sql: ${TABLE}.cy_working_day

  - dimension_group: day
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.day_date

  - dimension: day_desc
    type: string
    sql: ${TABLE}.day_desc

  - dimension: day_id
    type: number
    sql: ${TABLE}.day_id

  - dimension: geo_lh1_l10_cd
    type: string
    sql: ${TABLE}.geo_lh1_l10_cd

  - dimension: geo_lh1_l10_desc
    type: string
    sql: ${TABLE}.geo_lh1_l10_desc

  - dimension: geo_lh1_l10_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l10_sort_order

  - dimension: geo_lh1_l11_cd
    type: string
    sql: ${TABLE}.geo_lh1_l11_cd

  - dimension: geo_lh1_l11_desc
    type: string
    sql: ${TABLE}.geo_lh1_l11_desc

  - dimension: geo_lh1_l11_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l11_sort_order

  - dimension: geo_lh1_l12_cd
    type: string
    sql: ${TABLE}.geo_lh1_l12_cd

  - dimension: geo_lh1_l12_desc
    type: string
    sql: ${TABLE}.geo_lh1_l12_desc

  - dimension: geo_lh1_l12_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l12_sort_order

  - dimension: geo_lh1_l13_cd
    type: string
    sql: ${TABLE}.geo_lh1_l13_cd

  - dimension: geo_lh1_l13_desc
    type: string
    sql: ${TABLE}.geo_lh1_l13_desc

  - dimension: geo_lh1_l13_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l13_sort_order

  - dimension: geo_lh1_l14_cd
    type: string
    sql: ${TABLE}.geo_lh1_l14_cd

  - dimension: geo_lh1_l14_desc
    type: string
    sql: ${TABLE}.geo_lh1_l14_desc

  - dimension: geo_lh1_l14_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l14_sort_order

  - dimension: geo_lh1_l15_cd
    type: string
    sql: ${TABLE}.geo_lh1_l15_cd

  - dimension: geo_lh1_l15_desc
    type: string
    sql: ${TABLE}.geo_lh1_l15_desc

  - dimension: geo_lh1_l15_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l15_sort_order

  - dimension: geo_lh1_l16_cd
    type: string
    sql: ${TABLE}.geo_lh1_l16_cd

  - dimension: geo_lh1_l16_desc
    type: string
    sql: ${TABLE}.geo_lh1_l16_desc

  - dimension: geo_lh1_l16_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l16_sort_order

  - dimension: geo_lh1_l1_cd
    type: string
    sql: ${TABLE}.geo_lh1_l1_cd

  - dimension: geo_lh1_l1_desc
    type: string
    sql: ${TABLE}.geo_lh1_l1_desc

  - dimension: geo_lh1_l1_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l1_sort_order

  - dimension: geo_lh1_l2_cd
    type: string
    sql: ${TABLE}.geo_lh1_l2_cd

  - dimension: geo_lh1_l2_desc
    type: string
    sql: ${TABLE}.geo_lh1_l2_desc

  - dimension: geo_lh1_l2_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l2_sort_order

  - dimension: geo_lh1_l3_cd
    type: string
    sql: ${TABLE}.geo_lh1_l3_cd

  - dimension: geo_lh1_l3_desc
    type: string
    sql: ${TABLE}.geo_lh1_l3_desc

  - dimension: geo_lh1_l3_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l3_sort_order

  - dimension: geo_lh1_l4_cd
    type: string
    sql: ${TABLE}.geo_lh1_l4_cd

  - dimension: geo_lh1_l4_desc
    type: string
    sql: ${TABLE}.geo_lh1_l4_desc

  - dimension: geo_lh1_l4_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l4_sort_order

  - dimension: geo_lh1_l5_cd
    type: string
    sql: ${TABLE}.geo_lh1_l5_cd

  - dimension: geo_lh1_l5_desc
    type: string
    sql: ${TABLE}.geo_lh1_l5_desc

  - dimension: geo_lh1_l5_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l5_sort_order

  - dimension: geo_lh1_l6_cd
    type: string
    sql: ${TABLE}.geo_lh1_l6_cd

  - dimension: geo_lh1_l6_desc
    type: string
    sql: ${TABLE}.geo_lh1_l6_desc

  - dimension: geo_lh1_l6_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l6_sort_order

  - dimension: geo_lh1_l7_cd
    type: string
    sql: ${TABLE}.geo_lh1_l7_cd

  - dimension: geo_lh1_l7_desc
    type: string
    sql: ${TABLE}.geo_lh1_l7_desc

  - dimension: geo_lh1_l7_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l7_sort_order

  - dimension: geo_lh1_l8_cd
    type: string
    sql: ${TABLE}.geo_lh1_l8_cd

  - dimension: geo_lh1_l8_desc
    type: string
    sql: ${TABLE}.geo_lh1_l8_desc

  - dimension: geo_lh1_l8_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l8_sort_order

  - dimension: geo_lh1_l9_cd
    type: string
    sql: ${TABLE}.geo_lh1_l9_cd

  - dimension: geo_lh1_l9_desc
    type: string
    sql: ${TABLE}.geo_lh1_l9_desc

  - dimension: geo_lh1_l9_sort_order
    type: number
    sql: ${TABLE}.geo_lh1_l9_sort_order

  - dimension: geo_lh1_total_desc
    type: string
    sql: ${TABLE}.geo_lh1_total_desc

  - dimension: geo_lh1_total_id
    type: number
    sql: ${TABLE}.geo_lh1_total_id

  - dimension: geo_lh2_l10_cd
    type: string
    sql: ${TABLE}.geo_lh2_l10_cd

  - dimension: geo_lh2_l10_desc
    type: string
    sql: ${TABLE}.geo_lh2_l10_desc

  - dimension: geo_lh2_l10_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l10_sort_order

  - dimension: geo_lh2_l11_cd
    type: string
    sql: ${TABLE}.geo_lh2_l11_cd

  - dimension: geo_lh2_l11_desc
    type: string
    sql: ${TABLE}.geo_lh2_l11_desc

  - dimension: geo_lh2_l11_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l11_sort_order

  - dimension: geo_lh2_l12_cd
    type: string
    sql: ${TABLE}.geo_lh2_l12_cd

  - dimension: geo_lh2_l12_desc
    type: string
    sql: ${TABLE}.geo_lh2_l12_desc

  - dimension: geo_lh2_l12_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l12_sort_order

  - dimension: geo_lh2_l13_cd
    type: string
    sql: ${TABLE}.geo_lh2_l13_cd

  - dimension: geo_lh2_l13_desc
    type: string
    sql: ${TABLE}.geo_lh2_l13_desc

  - dimension: geo_lh2_l13_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l13_sort_order

  - dimension: geo_lh2_l14_cd
    type: string
    sql: ${TABLE}.geo_lh2_l14_cd

  - dimension: geo_lh2_l14_desc
    type: string
    sql: ${TABLE}.geo_lh2_l14_desc

  - dimension: geo_lh2_l14_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l14_sort_order

  - dimension: geo_lh2_l15_cd
    type: string
    sql: ${TABLE}.geo_lh2_l15_cd

  - dimension: geo_lh2_l15_desc
    type: string
    sql: ${TABLE}.geo_lh2_l15_desc

  - dimension: geo_lh2_l15_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l15_sort_order

  - dimension: geo_lh2_l16_cd
    type: string
    sql: ${TABLE}.geo_lh2_l16_cd

  - dimension: geo_lh2_l16_desc
    type: string
    sql: ${TABLE}.geo_lh2_l16_desc

  - dimension: geo_lh2_l16_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l16_sort_order

  - dimension: geo_lh2_l1_cd
    type: string
    sql: ${TABLE}.geo_lh2_l1_cd

  - dimension: geo_lh2_l1_desc
    type: string
    sql: ${TABLE}.geo_lh2_l1_desc

  - dimension: geo_lh2_l1_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l1_sort_order

  - dimension: geo_lh2_l2_cd
    type: string
    sql: ${TABLE}.geo_lh2_l2_cd

  - dimension: geo_lh2_l2_desc
    type: string
    sql: ${TABLE}.geo_lh2_l2_desc

  - dimension: geo_lh2_l2_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l2_sort_order

  - dimension: geo_lh2_l3_cd
    type: string
    sql: ${TABLE}.geo_lh2_l3_cd

  - dimension: geo_lh2_l3_desc
    type: string
    sql: ${TABLE}.geo_lh2_l3_desc

  - dimension: geo_lh2_l3_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l3_sort_order

  - dimension: geo_lh2_l4_cd
    type: string
    sql: ${TABLE}.geo_lh2_l4_cd

  - dimension: geo_lh2_l4_desc
    type: string
    sql: ${TABLE}.geo_lh2_l4_desc

  - dimension: geo_lh2_l4_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l4_sort_order

  - dimension: geo_lh2_l5_cd
    type: string
    sql: ${TABLE}.geo_lh2_l5_cd

  - dimension: geo_lh2_l5_desc
    type: string
    sql: ${TABLE}.geo_lh2_l5_desc

  - dimension: geo_lh2_l5_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l5_sort_order

  - dimension: geo_lh2_l6_cd
    type: string
    sql: ${TABLE}.geo_lh2_l6_cd

  - dimension: geo_lh2_l6_desc
    type: string
    sql: ${TABLE}.geo_lh2_l6_desc

  - dimension: geo_lh2_l6_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l6_sort_order

  - dimension: geo_lh2_l7_cd
    type: string
    sql: ${TABLE}.geo_lh2_l7_cd

  - dimension: geo_lh2_l7_desc
    type: string
    sql: ${TABLE}.geo_lh2_l7_desc

  - dimension: geo_lh2_l7_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l7_sort_order

  - dimension: geo_lh2_l8_cd
    type: string
    sql: ${TABLE}.geo_lh2_l8_cd

  - dimension: geo_lh2_l8_desc
    type: string
    sql: ${TABLE}.geo_lh2_l8_desc

  - dimension: geo_lh2_l8_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l8_sort_order

  - dimension: geo_lh2_l9_cd
    type: string
    sql: ${TABLE}.geo_lh2_l9_cd

  - dimension: geo_lh2_l9_desc
    type: string
    sql: ${TABLE}.geo_lh2_l9_desc

  - dimension: geo_lh2_l9_sort_order
    type: number
    sql: ${TABLE}.geo_lh2_l9_sort_order

  - dimension: geo_lh2_total_desc
    type: string
    sql: ${TABLE}.geo_lh2_total_desc

  - dimension: geo_lh2_total_id
    type: number
    sql: ${TABLE}.geo_lh2_total_id

  - dimension: geo_lh3_l10_cd
    type: string
    sql: ${TABLE}.geo_lh3_l10_cd

  - dimension: geo_lh3_l10_desc
    type: string
    sql: ${TABLE}.geo_lh3_l10_desc

  - dimension: geo_lh3_l10_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l10_sort_order

  - dimension: geo_lh3_l11_cd
    type: string
    sql: ${TABLE}.geo_lh3_l11_cd

  - dimension: geo_lh3_l11_desc
    type: string
    sql: ${TABLE}.geo_lh3_l11_desc

  - dimension: geo_lh3_l11_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l11_sort_order

  - dimension: geo_lh3_l12_cd
    type: string
    sql: ${TABLE}.geo_lh3_l12_cd

  - dimension: geo_lh3_l12_desc
    type: string
    sql: ${TABLE}.geo_lh3_l12_desc

  - dimension: geo_lh3_l12_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l12_sort_order

  - dimension: geo_lh3_l13_cd
    type: string
    sql: ${TABLE}.geo_lh3_l13_cd

  - dimension: geo_lh3_l13_desc
    type: string
    sql: ${TABLE}.geo_lh3_l13_desc

  - dimension: geo_lh3_l13_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l13_sort_order

  - dimension: geo_lh3_l14_cd
    type: string
    sql: ${TABLE}.geo_lh3_l14_cd

  - dimension: geo_lh3_l14_desc
    type: string
    sql: ${TABLE}.geo_lh3_l14_desc

  - dimension: geo_lh3_l14_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l14_sort_order

  - dimension: geo_lh3_l15_cd
    type: string
    sql: ${TABLE}.geo_lh3_l15_cd

  - dimension: geo_lh3_l15_desc
    type: string
    sql: ${TABLE}.geo_lh3_l15_desc

  - dimension: geo_lh3_l15_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l15_sort_order

  - dimension: geo_lh3_l16_cd
    type: string
    sql: ${TABLE}.geo_lh3_l16_cd

  - dimension: geo_lh3_l16_desc
    type: string
    sql: ${TABLE}.geo_lh3_l16_desc

  - dimension: geo_lh3_l16_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l16_sort_order

  - dimension: geo_lh3_l1_cd
    type: string
    sql: ${TABLE}.geo_lh3_l1_cd

  - dimension: geo_lh3_l1_desc
    type: string
    sql: ${TABLE}.geo_lh3_l1_desc

  - dimension: geo_lh3_l1_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l1_sort_order

  - dimension: geo_lh3_l2_cd
    type: string
    sql: ${TABLE}.geo_lh3_l2_cd

  - dimension: geo_lh3_l2_desc
    type: string
    sql: ${TABLE}.geo_lh3_l2_desc

  - dimension: geo_lh3_l2_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l2_sort_order

  - dimension: geo_lh3_l3_cd
    type: string
    sql: ${TABLE}.geo_lh3_l3_cd

  - dimension: geo_lh3_l3_desc
    type: string
    sql: ${TABLE}.geo_lh3_l3_desc

  - dimension: geo_lh3_l3_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l3_sort_order

  - dimension: geo_lh3_l4_cd
    type: string
    sql: ${TABLE}.geo_lh3_l4_cd

  - dimension: geo_lh3_l4_desc
    type: string
    sql: ${TABLE}.geo_lh3_l4_desc

  - dimension: geo_lh3_l4_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l4_sort_order

  - dimension: geo_lh3_l5_cd
    type: string
    sql: ${TABLE}.geo_lh3_l5_cd

  - dimension: geo_lh3_l5_desc
    type: string
    sql: ${TABLE}.geo_lh3_l5_desc

  - dimension: geo_lh3_l5_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l5_sort_order

  - dimension: geo_lh3_l6_cd
    type: string
    sql: ${TABLE}.geo_lh3_l6_cd

  - dimension: geo_lh3_l6_desc
    type: string
    sql: ${TABLE}.geo_lh3_l6_desc

  - dimension: geo_lh3_l6_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l6_sort_order

  - dimension: geo_lh3_l7_cd
    type: string
    sql: ${TABLE}.geo_lh3_l7_cd

  - dimension: geo_lh3_l7_desc
    type: string
    sql: ${TABLE}.geo_lh3_l7_desc

  - dimension: geo_lh3_l7_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l7_sort_order

  - dimension: geo_lh3_l8_cd
    type: string
    sql: ${TABLE}.geo_lh3_l8_cd

  - dimension: geo_lh3_l8_desc
    type: string
    sql: ${TABLE}.geo_lh3_l8_desc

  - dimension: geo_lh3_l8_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l8_sort_order

  - dimension: geo_lh3_l9_cd
    type: string
    sql: ${TABLE}.geo_lh3_l9_cd

  - dimension: geo_lh3_l9_desc
    type: string
    sql: ${TABLE}.geo_lh3_l9_desc

  - dimension: geo_lh3_l9_sort_order
    type: number
    sql: ${TABLE}.geo_lh3_l9_sort_order

  - dimension: geo_lh3_total_desc
    type: string
    sql: ${TABLE}.geo_lh3_total_desc

  - dimension: geo_lh3_total_id
    type: number
    sql: ${TABLE}.geo_lh3_total_id

  - dimension: month_desc
    type: string
    sql: ${TABLE}.month_desc

  - dimension: month_id
    type: string
    sql: ${TABLE}.month_id

  - dimension: month_offset
    type: number
    sql: ${TABLE}.month_offset

  - dimension: py1_consumption_day
    type: number
    sql: ${TABLE}.py1_consumption_day

  - dimension: py1_working_day
    type: number
    sql: ${TABLE}.py1_working_day

  - dimension: py2_consumption_day
    type: number
    sql: ${TABLE}.py2_consumption_day

  - dimension: py2_working_day
    type: number
    sql: ${TABLE}.py2_working_day

  - dimension: quarter_desc
    type: string
    sql: ${TABLE}.quarter_desc

  - dimension: quarter_id
    type: string
    sql: ${TABLE}.quarter_id

  - dimension: quarter_offset
    type: number
    sql: ${TABLE}.quarter_offset

  - dimension: to_date_offset
    type: number
    sql: ${TABLE}.to_date_offset

  - dimension: week_desc
    type: string
    sql: ${TABLE}.week_desc

  - dimension: week_id
    type: string
    sql: ${TABLE}.week_id

  - dimension: week_offset
    type: number
    sql: ${TABLE}.week_offset

  - dimension: year_desc
    type: string
    sql: ${TABLE}.year_desc

  - dimension: year_id
    type: string
    sql: ${TABLE}.year_id

  - dimension: year_offset
    type: number
    sql: ${TABLE}.year_offset

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

