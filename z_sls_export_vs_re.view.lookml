- view: z_sls_export_vs_re
  sql_table_name: |
    [tccc-sbox-volume-south-latin:report.z_sls_export]
  extends: [cy_measures, 
            geography_by_bottler,
            date]
  
  fields:
  - filter: date_range
    type: date
    label: "Date Range"
    view_label: "  Report Filters"
    sql: | 
      {% condition date_range %} ${TABLE}.day_date {% endcondition %}  
  
  - dimension: has_rolling_estimate
    view_label: "  Report Filters"
    type: yesno
    sql: ${t_vol_wk_re.geo_lh1_l3_cd} IS NOT NULL
  
  
  - measure: unit_cases_vs_re
    label: "UC vs RE"
    view_label: " Measures - Unit Cases"
    type: number
    value_format_name: decimal_2
    sql: ${total_cy_unit_cases} - ${t_vol_wk_re.total_re_cp_unit_cases}
    
  - measure: unit_cases_vs_re_percent
    label: "UC vs RE (% difference)"
    view_label: " Measures - Unit Cases"
    type: number
    value_format_name: percent_2
    sql: |
      (${total_cy_unit_cases} - ${t_vol_wk_re.total_re_cp_unit_cases}) 
      / 
      NVL(${t_vol_wk_re.total_re_cp_unit_cases}, 0)
      
#######################
#### Hide geo hierarchies that aren't included in the projections
#######################


  - dimension: geo_lh1_l3_desc
    hidden: true

  - dimension: geo_lh1_l2_desc
    hidden: true

  - dimension: geo_lh1_l1_desc
    hidden: true
  
  
  
  