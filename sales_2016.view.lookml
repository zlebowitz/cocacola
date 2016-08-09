- view: sales_2016
  sql_table_name: report.t_sls_act_445
  extends: [
            hierarchies,
            
            date,
            cy_measures, 
            py1_measures, 
            py2_measures,
            measures_custom_timeframe,
            time_series_measures
            ]
  fields:
  - filter: date_range
    type: date
    label: "Date Range"
    view_label: " Date Range"
    sql: | 
      {% condition date_range %} ${TABLE}.day_date {% endcondition %}