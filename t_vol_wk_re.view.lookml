- explore: t_vol_wk_re
- view: t_vol_wk_re
  sql_table_name: (SELECT * FROM report.t_vol_wk_re WHERE version = 'RE 1+11')
  fields:

  - dimension: geo_lh1_l3_cd
    hidden: true
    type: string
    sql: ${TABLE}.geo_lh1_l3_cd

  - dimension: week_id
    hidden: true
    type: string
    sql: ${TABLE}.week_id
    
#   - dimension: version
#     type: string
#     sql: ${TABLE}.version

  - dimension: pk
    hidden: true
    primary_key: true
    sql: |
      concat(cast(${geo_lh1_l3_cd} as string), ' - ', CAST(${week_id} as string))



  - dimension: cp_unit_cases
    hidden: true
    type: number
    sql: ${TABLE}.cp_unit_cases
    
  - measure: total_re_cp_unit_cases
    label: RE Unit Cases
    view_label: Sales Measures - CY
    type: sum
    sql: ${cp_unit_cases}

    


#################################
#### Unused Fields
#################################
# 
# 
#   - dimension: month_desc
#     type: string
#     sql: ${TABLE}.month_desc
# 
#   - dimension: month_id
#     type: string
#     sql: ${TABLE}.month_id
# 
#   - dimension: mtd_unit_cases
#     type: number
#     sql: ${TABLE}.mtd_unit_cases
# 
#   - dimension: qtd_unit_cases
#     type: number
#     sql: ${TABLE}.qtd_unit_cases
# 
#   - dimension: quarter_desc
#     type: string
#     sql: ${TABLE}.quarter_desc
# 
#   - dimension: quarter_id
#     type: string
#     sql: ${TABLE}.quarter_id
# 
#   - dimension: week_desc
#     type: string
#     sql: ${TABLE}.week_desc
# 
#   - dimension: year_desc
#     type: string
#     sql: ${TABLE}.year_desc
# 
#   - dimension: ytd_unit_cases
#     type: number
#     sql: ${TABLE}.ytd_unit_cases
# 
# 
# 
#   - dimension: geo_lh1_l3_desc
#     type: string
#     sql: ${TABLE}.geo_lh1_l3_desc
# 
#   - dimension: geo_lh1_l3_sort_order
#     type: number
#     sql: ${TABLE}.geo_lh1_l3_sort_order
# 
#   - dimension: geo_lh1_l4_cd
#     type: string
#     sql: ${TABLE}.geo_lh1_l4_cd
# 
#   - dimension: geo_lh1_l4_desc
#     type: string
#     sql: ${TABLE}.geo_lh1_l4_desc
# 
#   - dimension: geo_lh1_l4_sort_order
#     type: number
#     sql: ${TABLE}.geo_lh1_l4_sort_order
# 
#   - dimension: geo_lh1_l5_cd
#     type: string
#     sql: ${TABLE}.geo_lh1_l5_cd
# 
#   - dimension: geo_lh1_l5_desc
#     type: string
#     sql: ${TABLE}.geo_lh1_l5_desc
# 
#   - dimension: geo_lh1_l5_sort_order
#     type: number
#     sql: ${TABLE}.geo_lh1_l5_sort_order
# 
#   - dimension: geo_lh1_total_desc
#     type: string
#     sql: ${TABLE}.geo_lh1_total_desc
# 
#   - dimension: geo_lh1_total_id
#     type: number
#     sql: ${TABLE}.geo_lh1_total_id
# 
#   - dimension: geography_cd
#     type: string
#     sql: ${TABLE}.geography_cd
# 
#   - dimension: geography_desc
#     type: string
#     sql: ${TABLE}.geography_desc


