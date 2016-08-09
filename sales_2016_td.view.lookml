- view: sales_2016_td
  sql_table_name: report.t_sls_act_445
  extends: [
            hierarchies,
            
            cy_measures_hidden,
            py1_measures_hidden,
            py2_measures_hidden,
            
            td_measures
            ]

- view: cy_measures_hidden
  extends: cy_measures
  fields:
    - measure: total_cy_unit_cases
      hidden: true

- view: py1_measures_hidden
  extends: py1_measures
  fields:
    - measure: total_py1_unit_cases
      hidden: true

- view: py2_measures_hidden
  extends: py2_measures
  fields:
    - measure: total_py2_unit_cases
      hidden: true
  

