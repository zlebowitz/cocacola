- view: z_sls_export_445_custom_timeframe
  extends: [z_sls_export, measures_custom_timeframe]
  fields:
    - dimension: day_id
      sql: ${TABLE}.day_id
      hidden: true