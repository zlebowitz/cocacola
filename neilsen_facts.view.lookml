- explore: neilsen_facts
  hidden: true
  joins: 
  - join: nielsen_global_category_by_pack_size_hierarchy
    view_label: "Category by pack size"
    type: left_outer
    relationship: many_to_one
    sql_on: ${neilsen_facts.product_tag} = ${nielsen_global_category_by_pack_size_hierarchy.tag}
    
- view: neilsen_facts
  sql_table_name: |
    [nielsen_non_additive.nispstd_p12169_t1373649994_dTCCC_CSP_RU_G_38_ALL_06152016_1000]

  fields:


  - dimension: product_tag
    type: string
    sql: ${TABLE}.PRODUCT_TAG

  - dimension: product_display_order
    hidden: true
    type: number
    sql: ${TABLE}.PRODUCT_DISPLAY_ORDER
    

  - dimension: product_short
    type: string
    sql: ${TABLE}.PRODUCT_SHORT
    order_by_field: product_display_order

  - dimension: product_long
    type: string
    sql: ${TABLE}.PRODUCT_LONG
    order_by_field: product_display_order

  
  - dimension: product_hier_num
    hidden: true
    type: number
    sql: ${TABLE}.PRODUCT_HIER_NUM

  - dimension: product_hier_name
    label: "Product Hierarchy"
    type: string
    sql: ${TABLE}.PRODUCT_HIER_NAME
    required_fields: product_hier_num

  - dimension: product_hier_level_num
#     hidden: true
    type: number
    sql: ${TABLE}.PRODUCT_HIER_LEVEL_NUM

  - dimension: product_hier_level_name
    label: "Product Hierarchy Level"
    type: string
    sql: ${TABLE}.PRODUCT_HIER_LEVEL_NAME
    required_fields: product_hier_level_num


  - dimension: market_tag
    view_label: "Market"
    type: string
    sql: ${TABLE}.MARKET_TAG
    
  - dimension: market_display_order
    hidden: true
    type: number
    sql: ${TABLE}.MARKET_DISPLAY_ORDER

  - dimension: market_short
    view_label: "Market"
    type: string
    sql: ${TABLE}.MARKET_SHORT
    required_fields: market_tag
    order_by_field: market_display_order
    
  - dimension: market_long
    view_label: "Market"
    type: string
    sql: ${TABLE}.MARKET_LONG
    required_fields: market_tag
    order_by_field: market_display_order


###########################
####### PERIOD
###########################
  - dimension: period_tag
    view_label: "Period"
    type: string
    sql: ${TABLE}.PERIOD_TAG
    order_by_field: period_display_order

  - dimension: period_display_order
    hidden: true
    type: number
    sql: ${TABLE}.PERIOD_DISPLAY_ORDER
    
  - dimension: period_short
    view_label: "Period"
    type: string
    sql: ${TABLE}.PERIOD_SHORT
    required_fields: period_tag
    order_by_field: period_display_order

  - dimension: period_long
    view_label: "Period"
    type: string
    sql: ${TABLE}.PERIOD_LONG
    required_fields: period_tag
    order_by_field: period_display_order


  
  - dimension: vol
    type: number
    sql: ${TABLE}.VOL  
  
  
#   
#   
#   - measure: count
#     type: count
#     drill_fields: detail*
#     
# 
#   - dimension: product_parent_tag
#     type: string
#     sql: ${TABLE}.PRODUCT_PARENT_TAG
# 
#   - dimension: nartd
#     type: string
#     sql: ${TABLE}.NARTD
# 
#   - dimension: category
#     type: string
#     sql: ${TABLE}.CATEGORY
# 
#   - dimension: brand_owner
#     type: string
#     sql: ${TABLE}.BRAND_OWNER
# 
#   - dimension: trademark
#     type: string
#     sql: ${TABLE}.TRADEMARK
# 
#   - dimension: brand
#     type: string
#     sql: ${TABLE}.BRAND
# 
#   - dimension: segment_low_calorie_claim
#     type: string
#     sql: ${TABLE}.SEGMENT_LOW_CALORIE_CLAIM
# 
#   - dimension: beverage_product
#     type: string
#     sql: ${TABLE}.BEVERAGE_PRODUCT
# 
#   - dimension: container_material_container_type_refillable
#     type: string
#     sql: ${TABLE}.CONTAINER_MATERIAL_CONTAINER_TYPE_REFILLABLE
# 
#   - dimension: pack_size_units_per_package
#     type: string
#     sql: ${TABLE}.PACK_SIZE_UNITS_PER_PACKAGE
# 
#   - dimension: upc
#     type: string
#     sql: ${TABLE}.UPC
# 
#   - dimension: flavour
#     type: string
#     sql: ${TABLE}.FLAVOUR
# 
#   - dimension: ambient_chilled
#     type: string
#     sql: ${TABLE}.AMBIENT_CHILLED
# 
#   - dimension: caffeine_free_claim
#     type: string
#     sql: ${TABLE}.CAFFEINE_FREE_CLAIM
# 
#   - dimension: carbonation_indicator
#     type: string
#     sql: ${TABLE}.CARBONATION_INDICATOR
# 
#   - dimension: carbonation_level
#     type: string
#     sql: ${TABLE}.CARBONATION_LEVEL
# 
#   - dimension: container_material
#     type: string
#     sql: ${TABLE}.CONTAINER_MATERIAL
# 
#   - dimension: container_type
#     type: string
#     sql: ${TABLE}.CONTAINER_TYPE
# 
#   - dimension: distributor_id
#     type: string
#     sql: ${TABLE}.DISTRIBUTOR_ID
# 
#   - dimension: euro_segment
#     type: string
#     sql: ${TABLE}.EURO_SEGMENT
# 
#   - dimension: flavour_segment
#     type: string
#     sql: ${TABLE}.FLAVOUR_SEGMENT
# 
#   - dimension: frc_nfrc
#     type: string
#     sql: ${TABLE}.FRC_NFRC
# 
#   - dimension: ic_fc
#     type: string
#     sql: ${TABLE}.IC_FC
# 
#   - dimension: item
#     type: string
#     sql: ${TABLE}.ITEM
# 
#   - dimension: item_level
#     type: string
#     sql: ${TABLE}.ITEM_LEVEL
# 
#   - dimension: low_calorie_claim
#     type: string
#     sql: ${TABLE}.LOW_CALORIE_CLAIM
# 
#   - dimension: major_brand
#     type: string
#     sql: ${TABLE}.MAJOR_BRAND
# 
#   - dimension: pack_size
#     type: string
#     sql: ${TABLE}.PACK_SIZE
# 
#   - dimension: product_claim
#     type: string
#     sql: ${TABLE}.PRODUCT_CLAIM
# 
#   - dimension: product_range_sub_brand
#     type: string
#     sql: ${TABLE}.PRODUCT_RANGE_SUB_BRAND
# 
#   - dimension: refillable
#     type: string
#     sql: ${TABLE}.REFILLABLE
# 
#   - dimension: segment
#     type: string
#     sql: ${TABLE}.SEGMENT
# 
#   - dimension: segment_low_calorie_claim_tosplit
#     type: string
#     sql: ${TABLE}.SEGMENT_LOW_CALORIE_CLAIM_TOSPLIT
# 
#   - dimension: single_pack_multi_pack
#     type: string
#     sql: ${TABLE}.SINGLE_PACK_MULTI_PACK
# 
#   - dimension: single_serve_multi_serve
#     type: string
#     sql: ${TABLE}.SINGLE_SERVE_MULTI_SERVE
# 
#   - dimension: sports_cap
#     type: string
#     sql: ${TABLE}.SPORTS_CAP
# 
#   - dimension: type_of_consumption
#     type: string
#     sql: ${TABLE}.TYPE_OF_CONSUMPTION
# 
#   - dimension: units_per_package
#     type: string
#     sql: ${TABLE}.UNITS_PER_PACKAGE
# 
#   - dimension: upc_code
#     type: string
#     sql: ${TABLE}.UPC_CODE
# 
#   - dimension: segment_low_calorie_claim_code
#     type: string
#     sql: ${TABLE}.SEGMENT_LOW_CALORIE_CLAIM_CODE
# 
#   - dimension: product_range_sub_brand_code
#     type: string
#     sql: ${TABLE}.PRODUCT_RANGE_SUB_BRAND_CODE
# 
#   - dimension: as_pack_size_units_per_package_code
#     type: string
#     sql: ${TABLE}.AS_PACK_SIZE_UNITS_PER_PACKAGE_CODE
# 
#   - dimension: nartd_code
#     type: string
#     sql: ${TABLE}.NARTD_CODE
# 
#   - dimension: brand_owner_code
#     type: string
#     sql: ${TABLE}.BRAND_OWNER_CODE
# 
#   - dimension: container_material_container_type_refillable_code
#     type: string
#     sql: ${TABLE}.CONTAINER_MATERIAL_CONTAINER_TYPE_REFILLABLE_CODE
# 
#   - dimension: category_code
#     type: string
#     sql: ${TABLE}.CATEGORY_CODE
# 
#   - dimension: brand_code
#     type: string
#     sql: ${TABLE}.BRAND_CODE
# 
#   - dimension: flavour_code
#     type: string
#     sql: ${TABLE}.FLAVOUR_CODE
# 
#   - dimension: trademark_code
#     type: string
#     sql: ${TABLE}.TRADEMARK_CODE
# 
#   - dimension: type_of_consumption_code
#     type: string
#     sql: ${TABLE}.TYPE_OF_CONSUMPTION_CODE
# 
#   - dimension: carbonation_indicator_code
#     type: string
#     sql: ${TABLE}.CARBONATION_INDICATOR_CODE
# 
#   - dimension: product_claim_code
#     type: string
#     sql: ${TABLE}.PRODUCT_CLAIM_CODE
# 
#   - dimension: segment_code
#     type: string
#     sql: ${TABLE}.SEGMENT_CODE
# 
#   - dimension: low_calorie_claim_code
#     type: string
#     sql: ${TABLE}.LOW_CALORIE_CLAIM_CODE
# 
#   - dimension: container_material_code
#     type: string
#     sql: ${TABLE}.CONTAINER_MATERIAL_CODE
# 
#   - dimension: container_type_code
#     type: string
#     sql: ${TABLE}.CONTAINER_TYPE_CODE
# 
#   - dimension: refillable_code
#     type: string
#     sql: ${TABLE}.REFILLABLE_CODE
# 
#   - dimension: pack_size_code
#     type: string
#     sql: ${TABLE}.PACK_SIZE_CODE
# 
#   - dimension: units_per_package_code
#     type: string
#     sql: ${TABLE}.UNITS_PER_PACKAGE_CODE
# 
#   - dimension: ic_fc_code
#     type: string
#     sql: ${TABLE}.IC_FC_CODE
# 
#   - dimension: frc_nfrc_code
#     type: string
#     sql: ${TABLE}.FRC_NFRC_CODE
# 
#   - dimension: item_code
#     type: string
#     sql: ${TABLE}.ITEM_CODE
# 
#   - dimension: single_pack_multi_pack_code
#     type: string
#     sql: ${TABLE}.SINGLE_PACK_MULTI_PACK_CODE
# 
#   - dimension: caffeine_free_claim_code
#     type: string
#     sql: ${TABLE}.CAFFEINE_FREE_CLAIM_CODE
# 
#   - dimension: flavour_segment_code
#     type: string
#     sql: ${TABLE}.FLAVOUR_SEGMENT_CODE
# 
#   - dimension: carbonation_level_code
#     type: string
#     sql: ${TABLE}.CARBONATION_LEVEL_CODE
# 
#   - dimension: ambient_chilled_code
#     type: string
#     sql: ${TABLE}.AMBIENT_CHILLED_CODE
# 
#   - dimension: sports_cap_code
#     type: string
#     sql: ${TABLE}.SPORTS_CAP_CODE
# 
#   - dimension: item_level_code
#     type: string
#     sql: ${TABLE}.ITEM_LEVEL_CODE
# 
#   - dimension: major_brand_code
#     type: string
#     sql: ${TABLE}.MAJOR_BRAND_CODE
# 
#   - dimension: distributor_id_code
#     type: string
#     sql: ${TABLE}.DISTRIBUTOR_ID_CODE
# 
#   - dimension: single_serve_multi_serve_code
#     type: string
#     sql: ${TABLE}.SINGLE_SERVE_MULTI_SERVE_CODE
# 
#   - dimension: euro_segment_code
#     type: string
#     sql: ${TABLE}.EURO_SEGMENT_CODE
# 
#   - dimension: beverage_product_code
#     type: string
#     sql: ${TABLE}.BEVERAGE_PRODUCT_CODE
# 
#   - dimension: period_parent_tag
#     type: string
#     sql: ${TABLE}.PERIOD_PARENT_TAG
# 
#   - dimension: period_hier_num
#     type: number
#     sql: ${TABLE}.PERIOD_HIER_NUM
# 
#   - dimension: period_hier_name
#     type: string
#     sql: ${TABLE}.PERIOD_HIER_NAME
# 
#   - dimension: period_hier_level_num
#     type: number
#     sql: ${TABLE}.PERIOD_HIER_LEVEL_NUM
# 
#   - dimension: period_hier_level_name
#     type: string
#     sql: ${TABLE}.PERIOD_HIER_LEVEL_NAME
# 
#   - dimension: ytd
#     type: string
#     sql: ${TABLE}.YTD
# 
#   - dimension: mat
#     type: string
#     sql: ${TABLE}.MAT
# 
#   - dimension: rel_per
#     type: string
#     sql: ${TABLE}.REL_PER
# 
#   - dimension: period
#     type: string
#     sql: ${TABLE}.PERIOD
# 
#   - dimension: year
#     type: string
#     sql: ${TABLE}.YEAR
# 
#   - dimension: periodicity
#     type: string
#     sql: ${TABLE}.PERIODICITY
# 
#   - dimension: market_parent_tag
#     type: string
#     sql: ${TABLE}.MARKET_PARENT_TAG
# 
#   - dimension: market_hier_num
#     type: number
#     sql: ${TABLE}.MARKET_HIER_NUM
# 
#   - dimension: market_heir_name
#     type: string
#     sql: ${TABLE}.MARKET_HEIR_NAME
# 
#   - dimension: market_hier_level_num
#     type: number
#     sql: ${TABLE}.MARKET_HIER_LEVEL_NUM
# 
#   - dimension: market_hier_level_name
#     type: string
#     sql: ${TABLE}.MARKET_HIER_LEVEL_NAME
# 
#   - dimension: additive
#     type: string
#     sql: ${TABLE}.ADDITIVE
# 
#   - dimension: common_label
#     type: string
#     sql: ${TABLE}.COMMON_LABEL
# 
#   - dimension: entity_type
#     type: string
#     sql: ${TABLE}.ENTITY_TYPE
# 
#   - dimension: val
#     type: number
#     sql: ${TABLE}.VAL
# 
# 
#   - dimension: volscu
#     type: number
#     sql: ${TABLE}.VOLSCU
# 
#   - dimension: volsu
#     type: number
#     sql: ${TABLE}.VOLSU
# 
#   - dimension: fsl
#     type: number
#     sql: ${TABLE}.FSL
# 
#   - dimension: nshop
#     type: number
#     sql: ${TABLE}.NSHOP
# 
#   - dimension: ndist
#     type: number
#     sql: ${TABLE}.NDIST
# 
#   - dimension: wdist
#     type: number
#     sql: ${TABLE}.WDIST
# 
#   - dimension: oosdist
#     type: number
#     sql: ${TABLE}.OOSDIST
# 
#   - dimension: ddist
#     type: number
#     sql: ${TABLE}.DDIST
# 
#   - dimension: psv
#     type: number
#     sql: ${TABLE}.PSV
# 
#   - dimension: psl
#     type: number
#     sql: ${TABLE}.PSL
# 
#   sets:
#     detail:
#       - product_tag
#       - product_short
#       - product_long
#       - product_display_order
#       - product_parent_tag
#       - product_hier_num
#       - product_hier_name
#       - product_hier_level_num
#       - product_hier_level_name
#       - nartd
#       - category
#       - brand_owner
#       - trademark
#       - brand
#       - segment_low_calorie_claim
#       - beverage_product
#       - container_material_container_type_refillable
#       - pack_size_units_per_package
#       - upc
#       - flavour
#       - ambient_chilled
#       - caffeine_free_claim
#       - carbonation_indicator
#       - carbonation_level
#       - container_material
#       - container_type
#       - distributor_id
#       - euro_segment
#       - flavour_segment
#       - frc_nfrc
#       - ic_fc
#       - item
#       - item_level
#       - low_calorie_claim
#       - major_brand
#       - pack_size
#       - product_claim
#       - product_range_sub_brand
#       - refillable
#       - segment
#       - segment_low_calorie_claim_tosplit
#       - single_pack_multi_pack
#       - single_serve_multi_serve
#       - sports_cap
#       - type_of_consumption
#       - units_per_package
#       - upc_code
#       - segment_low_calorie_claim_code
#       - product_range_sub_brand_code
#       - as_pack_size_units_per_package_code
#       - nartd_code
#       - brand_owner_code
#       - container_material_container_type_refillable_code
#       - category_code
#       - brand_code
#       - flavour_code
#       - trademark_code
#       - type_of_consumption_code
#       - carbonation_indicator_code
#       - product_claim_code
#       - segment_code
#       - low_calorie_claim_code
#       - container_material_code
#       - container_type_code
#       - refillable_code
#       - pack_size_code
#       - units_per_package_code
#       - ic_fc_code
#       - frc_nfrc_code
#       - item_code
#       - single_pack_multi_pack_code
#       - caffeine_free_claim_code
#       - flavour_segment_code
#       - carbonation_level_code
#       - ambient_chilled_code
#       - sports_cap_code
#       - item_level_code
#       - major_brand_code
#       - distributor_id_code
#       - single_serve_multi_serve_code
#       - euro_segment_code
#       - beverage_product_code
#       - period_tag
#       - period_short
#       - period_long
#       - period_display_order
#       - period_parent_tag
#       - period_hier_num
#       - period_hier_name
#       - period_hier_level_num
#       - period_hier_level_name
#       - ytd
#       - mat
#       - rel_per
#       - period
#       - year
#       - periodicity
#       - market_tag
#       - market_short
#       - market_long
#       - market_display_order
#       - market_parent_tag
#       - market_hier_num
#       - market_heir_name
#       - market_hier_level_num
#       - market_hier_level_name
#       - additive
#       - common_label
#       - entity_type
#       - val
#       - vol
#       - volscu
#       - volsu
#       - fsl
#       - nshop
#       - ndist
#       - wdist
#       - oosdist
#       - ddist
#       - psv
#       - psl
# 
