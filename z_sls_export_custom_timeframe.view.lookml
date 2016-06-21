- view: z_sls_export_custom_timeframe
  extends: [z_sls_export, measures_custom_timeframe]
  fields:
    - dimension: date_range
      type: date
      sql: ${TABLE}.day_date
      