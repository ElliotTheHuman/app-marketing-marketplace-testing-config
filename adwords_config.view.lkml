# Google Ads configuration for Marketing Analytics by Looker

# TODO: Update Google Ads schema
datagroup: adwords_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `google_ads.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}

view: adwords_config {
  extension: required

  # TODO: Update Google Ads schema
  dimension: adwords_schema {
    hidden: yes
    sql:google_ads;;
  }
}

view: ad_config {
  extends: [ad_adapter]
  # Customize: Add ad fields
}

view: keyword_config {
  extends: [keyword_adapter]
  # Customize: Add keyword fields
}

view: ad_group_config {
  extends: [ad_group_adapter]
  # Customize: Add ad group fields
}

view: campaign_config {
  extends: [campaign_adapter]
  # Customize: Add campaign fields
}

view: customer_config {
  extends: [customer_adapter]
  # Customize: Add customer fields
}

view: google_ad_metrics_base_config {
  extends: [google_ad_metrics_base_template]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: ad_impressions_config {
  extends: [ad_impressions_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_config {
  extends: [ad_impressions_template]
}

# Hourly Account Aggregation
explore: ad_impressions_hour_config {
  extends: [ad_impressions_hour_template]
}

view: ad_impressions_hour_config {
  extends: [ad_impressions_hour_template]
}

# Daily Campaign Aggregation
explore: ad_impressions_campaign_config {
  extends: [ad_impressions_campaign_template]
}

view: ad_impressions_campaign_config {
  extends: [ad_impressions_campaign_template]
}

# Hourly Campaign Aggregation
explore: ad_impressions_campaign_hour_config {
  extends: [ad_impressions_campaign_hour_template]
}

view: ad_impressions_campaign_hour_config {
  extends: [ad_impressions_campaign_hour_template]
}

# Daily Ad Group Aggregation
explore: ad_impressions_ad_group_config {
  extends: [ad_impressions_ad_group_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_ad_group_config {
  extends: [ad_impressions_ad_group_template]
}

# Hourly Ad Group Aggregation
explore: ad_impressions_ad_group_hour_config {
  extends: [ad_impressions_ad_group_hour_template]
}

view: ad_impressions_ad_group_hour_config {
  extends: [ad_impressions_ad_group_hour_template]
}

# Daily Keyword Aggregation
explore: ad_impressions_keyword_config {
  extends: [ad_impressions_keyword_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_keyword_config {
  extends: [ad_impressions_keyword_template]
}

# Daily Ad Aggregation
explore: ad_impressions_ad_config {
  hidden:  no
  extends: [ad_impressions_ad_template]
}

view: ad_impressions_ad_config {
  extends: [ad_impressions_ad_template]
}

# Daily Geo Aggregation
explore: ad_impressions_geo_config {
  extends: [ad_impressions_geo_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_geo_config {
  extends: [ad_impressions_geo_template]
}

# Daily Age Range Aggregation
explore: ad_impressions_age_range_config {
  extends: [ad_impressions_age_range_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_age_range_config {
  extends: [ad_impressions_age_range_template]
}

# Daily Gender Aggregation
explore: ad_impressions_gender_config {
  extends: [ad_impressions_gender_template]
}

view: ad_impressions_gender_config {
  extends: [ad_impressions_gender_template]
}

# Daily Audience Aggregation
explore: ad_impressions_audience_config {
  extends: [ad_impressions_audience_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_audience_config {
  extends: [ad_impressions_audience_template]
}

# Daily Parental Status Aggregation
explore: ad_impressions_parental_status_config {
  extends: [ad_impressions_parental_status_template]
}

view: ad_impressions_parental_status_config {
  extends: [ad_impressions_parental_status_template]
}

# Daily Video Aggregation
explore: ad_impressions_video_config {
  extends: [ad_impressions_video_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_video_config {
  extends: [ad_impressions_video_template]
}

explore: adwords_period_comparison_config {
  extends: [period_fact]
  hidden: no
}

view: adwords_period_comparison_config {
  extends: [period_fact]
}
