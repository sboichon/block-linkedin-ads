include: "/app-marketing-linkedin-ads-adapter/*.view"
include: "/app-marketing-linkedin-ads/*.view"
include: "//@{CONFIG_PROJECT_NAME}/*.view"
include: "//app-marketing-common/*.view"

view: linkedin_ads_config {
  extension: required

  # TODO: Update LinkedIn Ads schema
  dimension: linkedin_ads_schema {
    hidden: yes
    sql:@{LINKEDIN_SCHEMA};;
  }
}

view: ad_metrics_base {
  extends: [ad_metrics_base_config]
}

view: li_period_comparison {
  extends: [li_period_comparison_config]
}

view: linkedin_ad_impressions_campaign {
  extends: [linkedin_ad_impressions_campaign_config]
}

view: linkedin_ad_impressions_ad {
  extends: [linkedin_ad_impressions_ad_config]
}
