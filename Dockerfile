# Installing Hadoop on linux
FROM ubuntu:16.04
LABEL maintainer "rickwtj@gmail.com"
RUN apt-get update && apt-get install default-jre default-jdk && \
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64 && \
export PATH=$PATH:$JAVA_HOME/bin && \
source ~/.profile && \
wget wget http://www-eu.apache.org/dist/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz && \
tar -xzvf hadoop-3.1.1.tar.gz && mv hadoop-3.1.1 /usr/local/hadoop
# ssh-keygen then run cp ~/.ssh/id_rsa.pub authorized_keys

# Installing HBase
RUN wget http://www-us.apache.org/dist/hbase/1.2.6.1/hbase-1.2.6.1-bin.tar.gz

# dfp_key_metrics:Dimension.DATE,
# dfp_key_metrics:Dimension.ADVERTISER_ID,
# dfp_key_metrics:Dimension.ADVERTISER_NAME,
# dfp_key_metrics:Dimension.ORDER_NAME,
# dfp_key_metrics:Dimension.LINE_ITEM_ID,
# dfp_key_metrics:Dimension.LINE_ITEM_NAME,
# dfp_key_metrics:Dimension.LINE_ITEM_TYPE,
# dfp_key_metrics:Dimension.CREATIVE_NAME,
# dfp_key_metrics:Dimension.CREATIVE_TYPE,
# dfp_key_metrics:Dimension.CREATIVE_SIZE,
# dfp_key_metrics:Dimension.MASTER_COMPANION_CREATIVE_ID,
# dfp_key_metrics:Dimension.MASTER_COMPANION_CREATIVE_NAME,
# dfp_key_metrics:Dimension.AD_UNIT_NAME,Dimension.ORDER_ID,
# dfp_key_metrics:Dimension.CREATIVE_ID,Dimension.AD_UNIT_ID,
# dfp_key_metrics:DimensionAttribute.LINE_ITEM_GOAL_QUANTITY,
# dfp_key_metrics:DimensionAttribute.LINE_ITEM_START_DATE_TIME,
# dfp_key_metrics:DimensionAttribute.LINE_ITEM_END_DATE_TIME,
# dfp_key_metrics:DimensionAttribute.LINE_ITEM_CONTRACTED_QUANTITY,
# dfp_key_metrics:DimensionAttribute.LINE_ITEM_SPONSORSHIP_GOAL_PERCENTAGE,
# dfp_key_metrics:DimensionAttribute.CREATIVE_CLICK_THROUGH_URL,
# dfp_key_metrics:DimensionAttribute.MASTER_COMPANION_TYPE,
# dfp_key_metrics:DimensionAttribute.CREATIVE_OR_CREATIVE_SET,
# dfp_key_metrics:Column.AD_SERVER_ALL_REVENUE,
# dfp_key_metrics:Column.AD_SERVER_CLICKS,
# dfp_key_metrics:Column.AD_SERVER_CPD_REVENUE,
# dfp_key_metrics:Column.AD_SERVER_CPM_AND_CPC_REVENUE,
# dfp_key_metrics:Column.AD_SERVER_IMPRESSIONS,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_AUTO_PLAYS,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_CLICK_TO_PLAYS,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_COMPLETE,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_FIRST_QUARTILE,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_MIDPOINT,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_START,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_THIRD_QUARTILE,
# dfp_key_metrics:Column.VIDEO_VIEWERSHIP_VIDEO_LENGTH,
# dfp_key_metrics:Column.TOTAL_INVENTORY_LEVEL_ALL_REVENUE,
# dfp_key_metrics:Column.TOTAL_INVENTORY_LEVEL_CLICKS,
# dfp_key_metrics:Column.TOTAL_INVENTORY_LEVEL_CPM_AND_CPC_REVENUE,
# dfp_key_metrics:Column.TOTAL_INVENTORY_LEVEL_IMPRESSIONS,
# dfp_key_metrics:Column.TOTAL_LINE_ITEM_LEVEL_ALL_REVENUE,
# dfp_key_metrics:Column.TOTAL_LINE_ITEM_LEVEL_CLICKS,
# dfp_key_metrics:Column.TOTAL_LINE_ITEM_LEVEL_CPM_AND_CPC_REVENUE