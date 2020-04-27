connection: "@{CONNECTION_NAME}"
include: "//@{CONFIG_PROJECT_NAME}/*.view"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

include: "//app-marketing-common/*.view"
include: "*.view"
include: "*.dashboard"


explore: li_period_comparison {
  extends: [li_period_comparison_config]
  hidden: no
}

explore: linkedin_ad_impressions_campaign {
  extends: [linkedin_ad_impressions_campaign_config]
  group_label: "Block LinkenIn Ads"
}

explore: linkedin_ad_impressions_ad {
  extends: [linkedin_ad_impressions_ad_config]
  group_label: "Block LinkenIn Ads"
}
