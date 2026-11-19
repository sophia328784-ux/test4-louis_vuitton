package com.sensorsdata.analytics.android.sdk.advert.scan;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.advert.oaid.SAOaidHelper;
import com.sensorsdata.analytics.android.sdk.advert.utils.SAAdvertUtils;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.util.ToastUtil;
import com.vuitton.android.R;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class WhiteListScanHelper implements IAdvertScanListener {
    private static void updateWhitelist(final Activity activity, final String str, final String str2, final String str3) {
        new Thread() { // from class: com.sensorsdata.analytics.android.sdk.advert.scan.WhiteListScanHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("android_oaid", SAOaidHelper.getOpenAdIdentifier(activity));
                    jSONObject.put("android_oaid_reflection", SAOaidHelper.getOpenAdIdentifierByReflection(activity));
                    jSONObject.put("android_id", SAAdvertUtils.getIdentifier(activity));
                    jSONObject.put("android_imei", SAAdvertUtils.getInstallSource(activity));
                    jSONObject.put("info_id", str2);
                    jSONObject.put("project_name", str3);
                    jSONObject.put("device_type", ContentTree.AUDIO_ID);
                    new RequestHelper.Builder(HttpMethod.POST, str).jsonData(jSONObject.toString()).callback(new HttpCallback.JsonCallback() { // from class: com.sensorsdata.analytics.android.sdk.advert.scan.WhiteListScanHelper.1.1
                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback.JsonCallback, com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onAfter() {
                            SensorsDataDialogUtils.startLaunchActivity(activity);
                        }

                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onFailure(int i2, String str4) {
                            Activity activity2 = activity;
                            ToastUtil.showLong(activity2, SADisplayUtil.getStringResource(activity2, R.string.sensors_analytics_ad_whitelist_request_falied));
                        }

                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onResponse(JSONObject jSONObject2) {
                            int iOptInt = jSONObject2.optInt(m.v, -1);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (iOptInt == 0) {
                                Activity activity2 = activity;
                                ToastUtil.showLong(activity2, SADisplayUtil.getStringResource(activity2, R.string.sensors_analytics_ad_whitelist_request_success));
                            } else {
                                Activity activity3 = activity;
                                ToastUtil.showLong(activity3, SADisplayUtil.getStringResource(activity3, R.string.sensors_analytics_ad_whitelist_request_falied));
                            }
                        }
                    }).execute();
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
        }.start();
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.scan.IAdvertScanListener
    public void handlerScanUri(Activity activity, Uri uri) {
        if (!ContentTree.AUDIO_ID.equals(uri.getQueryParameter("device_type"))) {
            ToastUtil.showLong(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_ad_whitelist_platform_error));
            SensorsDataDialogUtils.startLaunchActivity(activity);
            return;
        }
        String queryParameter = uri.getQueryParameter("apiurl");
        String queryParameter2 = uri.getQueryParameter("info_id");
        if (TextUtils.isEmpty(queryParameter) || TextUtils.isEmpty(queryParameter2)) {
            ToastUtil.showLong(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_ad_whitelist_request_falied));
            SensorsDataDialogUtils.startLaunchActivity(activity);
            return;
        }
        String queryParameter3 = uri.getQueryParameter("project");
        if (TextUtils.isEmpty(queryParameter3)) {
            queryParameter3 = "default";
        }
        if (queryParameter3.equals(new ServerUrl(SensorsDataAPI.sharedInstance().getServerUrl()).getProject())) {
            updateWhitelist(activity, queryParameter, queryParameter2, queryParameter3);
        } else {
            ToastUtil.showLong(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_ad_whitelist_project_error));
            SensorsDataDialogUtils.startLaunchActivity(activity);
        }
    }
}
