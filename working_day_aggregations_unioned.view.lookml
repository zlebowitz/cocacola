- explore: sales_2016_unioned
  conditionally_filter:
    sales_2016_unioned.date_range: last 30 days
    unless: [week_id, month_id, year_id]
  joins: 
    - join: working_day_aggregations_unioned
      type: left_outer
      relationship: many_to_one
      sql_on: |
        ${sales_2016_unioned.geo_lh1_l1_cd} = ${working_day_aggregations_unioned.bottler_id}
        AND 
        ${sales_2016_unioned.day_id_raw} = ${working_day_aggregations_unioned.day_id}     

- view: sales_2016_unioned
  sql_table_name: report.t_sls_act_445
  
  extends: [
            hierarchies,
            
            date,
            date_ids,
            cy_measures, 
            py1_measures, 
            py2_measures,
#             measures_custom_timeframe,
          time_series_measures_union, 
          dates_for_unioned
          
            ]

  fields:
  - filter: date_range
    type: date
    label: "Date Range"
    view_label: " Date Range"
    sql: | 
      {% condition date_range %} ${TABLE}.day_date {% endcondition %}

- explore: working_day_aggregations_unioned


- view: dates_for_unioned
  fields:


  - dimension: period_order_by
    hidden: true
    sql: |
      case
        when {% parameter working_day_aggregations_unioned.period_level %} = 'date' then cast(${TABLE}.day_id as string)
        when {% parameter working_day_aggregations_unioned.period_level %} = 'week' then ${TABLE}.week_id
        when {% parameter working_day_aggregations_unioned.period_level %} = 'month' then ${TABLE}.month_id
        when {% parameter working_day_aggregations_unioned.period_level %} = 'year' then ${TABLE}.year_id
        else NULL 
      end
      
      
  - dimension: period
    view_label: "Date"
    label: "Period"
    type: string
    can_filter: false
    suggestions: [Date, Week, Month, Year]
    sql: |
      case
        when {% parameter working_day_aggregations_unioned.period_level %} = 'date' then ${TABLE}.day_desc
        when {% parameter working_day_aggregations_unioned.period_level %} = 'week' then ${TABLE}.week_desc
        when {% parameter working_day_aggregations_unioned.period_level %} = 'month' then ${TABLE}.month_desc
        when {% parameter working_day_aggregations_unioned.period_level %} = 'year' then ${TABLE}.year_desc
        else NULL 
      end
    order_by_field: period_order_by

    
    
  

- view: working_day_aggregations_unioned
  derived_table:
#     sql_trigger_value: SELECT current_date()
    sql: |
      SELECT *
      FROM
      (
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , cast(day_id as string) as period
      , 'day' as period_level
      , cy_working_day as cy_working_days
      , py1_working_day as py1_working_days
        FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445]  
      ),
      
      
      (
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , cast(week_id as string) as period
      , 'week' as period_level
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, week_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days
        FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445]  
        
      ),

      (
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , cast(month_id as string) as period
      , 'month' as period_level
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, month_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days
        FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445]  
        
      ),

      (
      SELECT 
        bottler_id
      , day_desc
      , day_id
      , cast(year_id as string) as period
      , 'year' as period_level
      , sum(cy_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as cy_working_days
      , sum(py1_working_day)
        OVER (
          PARTITION BY bottler_id, year_id
          RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
          ) 
        as py1_working_days
        FROM [tccc-sbox-volume-south-latin:report.t_wrk_days_445]   
      )

  fields:

  - filter: period_level
    type: string
#     label: "Date Range"
    view_label: " Period Level"
    sql: | 
      {% condition period_level %} ${TABLE}.period_level {% endcondition %}
    suggestions: [day, week, month, year]
  

  - dimension: bottler_id
    type: number
    # hidden: true
    sql: ${TABLE}.bottler_id

  - dimension: day_desc
    type: string
    # hidden: true
    sql: ${TABLE}.day_desc

  - dimension: day_id
    type: number
    # hidden: true
    sql: ${TABLE}.day_id
  
  - dimension: period
    type: number
    # hidden: true
    sql: ${TABLE}.period
    
  - dimension: cy_working_days
    type: number
    # hidden: true
    sql: ${TABLE}.cy_working_days

  - dimension: py1_working_days
    type: number
    # hidden: true
    sql: ${TABLE}.py1_working_days
    






- view: time_series_measures_union

  fields: 

##   Working Days ##
  - measure: max_cy_working_days
    type: max
#     hidden: true
    group_label: "WD"
    view_label: " Measures - Working Days"
    sql: ${working_day_aggregations_unioned.cy_working_days}

  - measure: max_py1_working_days
    type: max
#     hidden: true
    group_label: "WD"
    view_label: " Measures - Working Days"
    sql: ${working_day_aggregations_unioned.py1_working_days}


  - measure: cy_uc_per_wd
    type: number
    hidden: true
    sql: ${total_cy_unit_cases} / ${max_cy_working_days}
    value_format_name: decimal_2
    
  - measure: py1_uc_per_wd
    type: number
    hidden: true
    sql: ${total_py1_unit_cases}/${max_py1_working_days}
    value_format_name: decimal_2

    
  - measure: uc_vs_py1
    type: number
    group_label: "WD"
    view_label: " Measures - Unit Cases"
    sql: ${cy_uc_per_wd} - ${py1_uc_per_wd}
    value_format_name: decimal_2
    
  - measure: uc_vs_py1_percent_change
    type: number
    group_label: "WD"
    view_label: " Measures - Unit Cases"
    sql: ${uc_vs_py1} / ${py1_uc_per_wd}
    value_format_name: percent_2


