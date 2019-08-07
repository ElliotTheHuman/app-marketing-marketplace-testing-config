# LinkedIn Ads configuration for Marketing Analytics by Looker

include: "/app-marketing-linkedin-ads-adapter/*.view"
include: "/app-marketing-linkedin-ads/*.view"
include: "/app-marketing-linkedin-ads/*.dashboard"

# TODO: Update LinkedIn Ads schema
datagroup: linkedin_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `linkedin_ads.ad_analytics_by_campaign` ;;
  max_cache_age: "24 hours"
}

view: linkedin_ads_config {
  extension: required

  # TODO: Update LinkedIn Ads schema
  dimension: linkedin_ads_schema {
    hidden: yes
    sql:linkedin_ads;;
  }
}

explore: li_period_comparison {
  extends: [li_period_fact]
  hidden: no
}

view: li_period_comparison {
  extends: [li_period_fact]
}

explore: linkedin_ad_impressions_campaign {
  extends: [linkedin_ad_impressions_campaign_template]
}

view: linkedin_ad_impressions_campaign {
  extends: [linkedin_ad_impressions_campaign_template]
}

explore: linkedin_ad_impressions_ad {
  extends: [linkedin_ad_impressions_ad_template]
}

view: linkedin_ad_impressions_ad {
  extends: [linkedin_ad_impressions_ad_template]
}
