- view: date_picker
  label: "  Report Date"
  sql_table_name: |
    (SELECT * FROM report.t_cal_445 WHERE {% condition date_picker.date %} day_date {% endcondition %})
  fields:
  
  - filter: date
    label: Report Date
    type: date

  - dimension: day_id
    hidden: true
    
  - dimension: week_id
    hidden: true
  
  - dimension: month_id
    hidden: true
    
  - dimension: year_id
    hidden: true