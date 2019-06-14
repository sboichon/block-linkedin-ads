# LinkedIn Ads configuration for Linkedin Ads Block by Looker

include: "/app-marketing-linkedin-ads-adapter/*.view"
include: "/app-marketing-linkedin-ads/*.view"
include: "/app-marketing-linkedin-ads/li_campaign_metrics_spend.dashboard"
include: "/app-marketing-linkedin-ads/li_campaign_metrics_clicks.dashboard"
include: "/app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard"
include: "/app-marketing-linkedin-ads/li_campaign_metrics_conversions.dashboard"
include: "/app-marketing-linkedin-ads/linkedin_overview.dashboard"
include: "/app-marketing-linkedin-ads/linkedin_ads_base.dashboard"

# TODO: Update LinkedIn Ads schema

datagroup: linkedin_ads_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `@{LINKEDIN_SCHEMA}.campaign_stats` ;;
  max_cache_age: "24 hours"
}

view: linkedin_ads_config {
  extension: required

  # TODO: Update LinkedIn Ads schema
  dimension: linkedin_ads_schema {
    hidden: yes
    sql:@{LINKEDIN_SCHEMA};;
  }
}

explore: li_period_comparison {
  extends: [li_period_fact]
  hidden: no
}

view: li_period_comparison {
  extends: [li_period_fact]
}
