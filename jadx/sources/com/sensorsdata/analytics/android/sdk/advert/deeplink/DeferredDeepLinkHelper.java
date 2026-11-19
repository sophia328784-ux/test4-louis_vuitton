package com.sensorsdata.analytics.android.sdk.advert.deeplink;

import android.text.TextUtils;
import com.linkplay.medialib.FinalDataUtil;
import com.linkplay.network.SecurityConstants;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.advert.SAAdvertConstants;
import com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.deeplink.SADeepLinkObject;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeferredDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import com.vuitton.android.R;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class DeferredDeepLinkHelper {
    public static void request(final JSONObject jSONObject, final SensorsDataDeferredDeepLinkCallback sensorsDataDeferredDeepLinkCallback, String str, final boolean z) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z2 = !TextUtils.isEmpty(str) && (str.startsWith(FinalDataUtil.HTTP_HEAD) || str.startsWith("https://"));
        final SensorsDataAPI sensorsDataAPISharedInstance = SensorsDataAPI.sharedInstance();
        if (z2 || (!TextUtils.isEmpty(sensorsDataAPISharedInstance.getServerUrl()) && sensorsDataAPISharedInstance.getServerUrl().startsWith(SecurityConstants.SECURITY_NONE))) {
            HttpMethod httpMethod = HttpMethod.POST;
            if (!z2) {
                str = sensorsDataAPISharedInstance.getServerUrl();
            }
            new RequestHelper.Builder(httpMethod, NetworkUtils.getRequestUrl(str, "slink/ddeeplink")).jsonData(jSONObject.toString()).callback(new HttpCallback.JsonCallback() { // from class: com.sensorsdata.analytics.android.sdk.advert.deeplink.DeferredDeepLinkHelper.1
                private String adChannel;
                private String adSlinkId;
                private String adSlinkTemplateId;
                private String adSlinkType;
                private JSONObject customParams;
                private String errorMsg;
                private boolean isSuccess = false;
                private String parameter;

                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback.JsonCallback, com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onAfter() {
                    if (z) {
                        ChannelUtils.saveDeepLinkInfo();
                    }
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    final JSONObject jSONObject2 = new JSONObject();
                    try {
                        if (!TextUtils.isEmpty(this.parameter)) {
                            jSONObject2.put(SAAdvertConstants.Properties.DEEPLINK_OPTIONS, this.parameter);
                        }
                        if (!TextUtils.isEmpty(this.errorMsg)) {
                            jSONObject2.put(SAAdvertConstants.Properties.MATCH_FAIL_REASON, this.errorMsg);
                        }
                        if (!TextUtils.isEmpty(this.adChannel)) {
                            jSONObject2.put(SAAdvertConstants.Properties.CHANNEL_INFO, this.adChannel);
                        }
                        if (!TextUtils.isEmpty(this.adSlinkId)) {
                            jSONObject2.put(SAAdvertConstants.Properties.SLINK_ID, this.adSlinkId);
                        }
                        jSONObject2.put(SAAdvertConstants.Properties.MATCH_TYPE, "deferred deeplink");
                        jSONObject2.put("$event_duration", TimeUtils.duration(jCurrentTimeMillis2));
                        jSONObject2.put(SAAdvertConstants.Properties.DEVICE_INFO, jSONObject.get("ids"));
                        if (!TextUtils.isEmpty(this.adSlinkTemplateId)) {
                            jSONObject2.put(SAAdvertConstants.Properties.SLINK_TEMPLATE_ID, this.adSlinkTemplateId);
                        }
                        if (!TextUtils.isEmpty(this.adSlinkType)) {
                            jSONObject2.put(SAAdvertConstants.Properties.SLINK_TYPE, this.adSlinkType);
                        }
                        JSONObject jSONObject3 = this.customParams;
                        if (jSONObject3 != null && jSONObject3.length() > 0) {
                            jSONObject2.put(SAAdvertConstants.Properties.SLINK_CUSTOM_PARAMS, this.customParams.toString());
                        }
                        SensorsDataDeferredDeepLinkCallback sensorsDataDeferredDeepLinkCallback2 = sensorsDataDeferredDeepLinkCallback;
                        if (sensorsDataDeferredDeepLinkCallback2 != null) {
                            try {
                                if (sensorsDataDeferredDeepLinkCallback2.onReceive(new SADeepLinkObject(this.parameter, this.customParams, this.adChannel, this.isSuccess, jCurrentTimeMillis2)) && this.isSuccess) {
                                    final JSONObject jSONObject4 = new JSONObject();
                                    jSONObject4.put(SAAdvertConstants.Properties.DEEPLINK_OPTIONS, this.parameter);
                                    if (!TextUtils.isEmpty(this.adSlinkId)) {
                                        jSONObject4.put(SAAdvertConstants.Properties.SLINK_ID, this.adSlinkId);
                                    }
                                    JSONObject jSONObject5 = this.customParams;
                                    if (jSONObject5 != null && jSONObject5.length() > 0) {
                                        jSONObject4.put(SAAdvertConstants.Properties.SLINK_CUSTOM_PARAMS, this.customParams.toString());
                                    }
                                    if (!TextUtils.isEmpty(this.adSlinkTemplateId)) {
                                        jSONObject2.put(SAAdvertConstants.Properties.SLINK_TEMPLATE_ID, this.adSlinkTemplateId);
                                    }
                                    if (!TextUtils.isEmpty(this.adSlinkType)) {
                                        jSONObject2.put(SAAdvertConstants.Properties.SLINK_TYPE, this.adSlinkType);
                                    }
                                    JSONUtils.mergeJSONObject(ChannelUtils.getUtmProperties(), jSONObject4);
                                    SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.deeplink.DeferredDeepLinkHelper.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.TRACK).setEventName(SAAdvertConstants.EventName.DEFERRED_DEEPLINK_JUMP).setProperties(jSONObject4));
                                        }
                                    });
                                }
                            } catch (Exception e2) {
                                SALog.printStackTrace(e2);
                            }
                        } else if (this.isSuccess) {
                            jSONObject2.put(SAAdvertConstants.Properties.MATCH_FAIL_REASON, SADisplayUtil.getStringResource(sensorsDataAPISharedInstance.getSAContextManager().getContext(), R.string.sensors_analytics_ad_listener));
                        }
                        JSONUtils.mergeJSONObject(ChannelUtils.getUtmProperties(), jSONObject2);
                        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.advert.deeplink.DeferredDeepLinkHelper.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SACoreHelper.getInstance().trackEvent(new InputData().setEventType(EventType.TRACK).setEventName(SAAdvertConstants.EventName.MATCH_RESULT).setProperties(jSONObject2));
                            }
                        });
                    } catch (Exception e3) {
                        SALog.printStackTrace(e3);
                    }
                }

                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onFailure(int i2, String str2) {
                    this.errorMsg = str2;
                }

                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onResponse(JSONObject jSONObject2) {
                    if (jSONObject2 == null) {
                        this.errorMsg = "response is null";
                        return;
                    }
                    if (jSONObject2.optInt(m.v) != 0) {
                        this.errorMsg = jSONObject2.optString("msg");
                        return;
                    }
                    this.isSuccess = true;
                    ChannelUtils.parseParams(JSONUtils.json2Map(jSONObject2.optJSONObject("channel_params")));
                    this.parameter = jSONObject2.optString("parameter");
                    this.adChannel = jSONObject2.optString("ad_channel");
                    this.adSlinkId = jSONObject2.optString("ad_slink_id");
                    this.adSlinkTemplateId = jSONObject2.optString("slink_template_id");
                    this.adSlinkType = jSONObject2.optString("slink_type");
                    this.customParams = jSONObject2.optJSONObject("custom_params");
                }
            }).execute();
        }
    }
}
