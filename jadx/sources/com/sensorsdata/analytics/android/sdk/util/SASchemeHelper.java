package com.sensorsdata.analytics.android.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.core.business.visual.SAVisualTools;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager;
import com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug;

/* JADX INFO: loaded from: classes3.dex */
public class SASchemeHelper {
    private static final String TAG = "SA.SASchemeUtil";

    public static void handleSchemeUrl(Activity activity, Intent intent) {
        Uri data;
        if (SensorsDataAPI.isSDKDisabled()) {
            SALog.i(TAG, "SDK is disabled,scan code function has been turned off");
            return;
        }
        if (SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation) {
            SALog.i(TAG, "SDK is not init");
            return;
        }
        if (activity == null || intent == null) {
            data = null;
        } else {
            try {
                data = intent.getData();
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
                return;
            }
        }
        SALog.i(TAG, "handleSchemeUrl uri = " + data + ", intent = " + intent);
        if (data != null) {
            SensorsDataAPI sensorsDataAPISharedInstance = SensorsDataAPI.sharedInstance();
            String host = data.getHost();
            if (!"channeldebug".equals(host) && !"adsScanDeviceInfo".equals(host)) {
                if ("heatmap".equals(host)) {
                    SAVisualTools.showOpenHeatMapDialog(activity, data.getQueryParameter("feature_code"), data.getQueryParameter(ConfigurationName.DOWNLOAD_PLUGIN_URL));
                    intent.setData(null);
                    return;
                }
                if ("debugmode".equals(host)) {
                    SensorsDataDialogUtils.showDebugModeSelectDialog(activity, data.getQueryParameter("info_id"), data.getQueryParameter("sf_push_distinct_id"), data.getQueryParameter("project"));
                    intent.setData(null);
                    return;
                }
                if ("visualized".equals(host)) {
                    SAVisualTools.showOpenVisualizedAutoTrackDialog(activity, data.getQueryParameter("feature_code"), data.getQueryParameter(ConfigurationName.DOWNLOAD_PLUGIN_URL));
                    intent.setData(null);
                    return;
                }
                if ("popupwindow".equals(host)) {
                    SensorsDataDialogUtils.showPopupWindowDialog(activity, data);
                    intent.setData(null);
                    return;
                }
                if ("encrypt".equals(host)) {
                    String stringResource = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_VERIFY_SECRET_KEY, data);
                    if (TextUtils.isEmpty(stringResource)) {
                        stringResource = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_encrypt_sdk_fail);
                    }
                    ToastUtil.showLong(activity, stringResource);
                    SensorsDataDialogUtils.startLaunchActivity(activity);
                    intent.setData(null);
                    return;
                }
                if ("abtest".equals(host)) {
                    try {
                        ReflectUtil.callStaticMethod(Class.forName("com.sensorsdata.abtest.core.SensorsABTestSchemeHandler"), "handleSchemeUrl", data.toString());
                    } catch (Exception e3) {
                        SALog.printStackTrace(e3);
                    }
                    SensorsDataDialogUtils.startLaunchActivity(activity);
                    intent.setData(null);
                    return;
                }
                if ("sensorsdataremoteconfig".equals(host)) {
                    SensorsDataAPI.sharedInstance().enableLog(true);
                    BaseSensorsDataSDKRemoteManager remoteManager = sensorsDataAPISharedInstance.getSAContextManager().getRemoteManager();
                    if (remoteManager != null) {
                        remoteManager.resetPullSDKConfigTimer();
                    }
                    SensorsDataRemoteManagerDebug sensorsDataRemoteManagerDebug = new SensorsDataRemoteManagerDebug(sensorsDataAPISharedInstance, activity.getBaseContext());
                    sensorsDataAPISharedInstance.getSAContextManager().setRemoteManager(sensorsDataRemoteManagerDebug);
                    SALog.i(TAG, "Start debugging remote config");
                    sensorsDataRemoteManagerDebug.checkRemoteConfig(data, activity);
                    intent.setData(null);
                    return;
                }
                if (!"assistant".equals(host)) {
                    SensorsDataDialogUtils.startLaunchActivity(activity);
                    return;
                }
                SAConfigOptions configOptions = SensorsDataAPI.getConfigOptions();
                if ((configOptions == null || !configOptions.isDisableDebugAssistant()) && "pairingCode".equals(data.getQueryParameter("service"))) {
                    SAVisualTools.showPairingCodeInputDialog(activity);
                    return;
                }
                return;
            }
            SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_HANDLER_SCAN_URI, activity, data);
            intent.setData(null);
        }
    }
}
