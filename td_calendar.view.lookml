
- view: td_calendar
  derived_table:
    sql: |
      select period, trans_date_id
      from
      (select 'WTD' as period, week_to_date.day_id as trans_date_id FROM
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          where day_id = 11375
          ) as today
        CROSS JOIN  -- because BQ doesn't support inequality joins
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          ) as week_to_date
        WHERE
        today.day_id >= week_to_date.day_id
        AND today.week_id = week_to_date.week_id
      ) as week_to_date
      ,
      (select 'MTD' as period, month_to_date.day_id as trans_date_id
      FROM    
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          where day_id = 11375
          ) as today
        CROSS JOIN  -- because BQ doesn't support inequality joins
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          ) as month_to_date
        WHERE
        today.day_id >= month_to_date.day_id
        AND today.month_id = month_to_date.month_id
      ) as month_to_date
      ,
      (select 'YTD' as period, year_to_date.day_id as trans_date_id 
      FROM  
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          where day_id = 11375
          ) as today
        CROSS JOIN  -- because BQ doesn't support inequality joins
          (select day_id, week_id, month_id, year_id
          from report.t_cal_445
          ) as year_to_date
        WHERE
        today.day_id >= year_to_date.day_id
        AND today.year_id = year_to_date.year_id
      ) as year_to_date

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: period
    type: string
    sql: ${TABLE}.period

  - dimension: trans_date_id
    type: number
    sql: ${TABLE}.trans_date_id

  sets:
    detail:
      - period
      - trans_date_id

