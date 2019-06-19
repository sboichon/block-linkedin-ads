# LinkedIn Ads Block

This repository contains views and explores used for the LinkedIn Ads Block dashboards. There are 5 dashboards that come with this block: LinkedIn Ads Overview, LinkedIn Ads - Clicks, LinkedIn Ads - Conversions, LinkedIn Ads - Impressions and LinkedIn Ads - Spend. Each of the dashboards provides in-depth analysis of ad/campaign performance over a given timeframe.

This project is remotely included through the LinkedIn Ads Block Config project. 
To pull updates from this project, update the `ref:` parameter in the manifest file. It should point to the latest commit in [block-linkedin-ads](https://github.com/looker/block-linkedin-ads/commits/master).

The LookML constants are used to specify the name of the schema and connection. 
They are defined in the LinkedIn Ads Block Config project.

### Block Info

This Block is modeled on the schema from Fivetrans's [LinkedIn Ads ETL](https://fivetran.com/directory/linkedin-ads).

The schema documentation for LinkedIn Ads can be found in [LinkedIn's docs](https://developer.linkedin.com/docs/ref/v2/ads/adcampaigns).
