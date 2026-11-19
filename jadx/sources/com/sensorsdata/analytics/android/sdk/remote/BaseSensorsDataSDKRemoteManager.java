package com.sensorsdata.analytics.android.sdk.remote;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseSensorsDataSDKRemoteManager {
    protected static final String TAG = "SA.SensorsDataSDKRemoteConfigBase";
    protected static SensorsDataSDKRemoteConfig mSDKRemoteConfig;
    protected SAContextManager mContextManager;
    protected boolean mDisableDefaultRemoteConfig;
    protected SensorsDataAPI mSensorsDataAPI;

    public enum RandomTimeType {
        RandomTimeTypeWrite,
        RandomTimeTypeClean,
        RandomTimeTypeNone
    }

    public BaseSensorsDataSDKRemoteManager(SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        this.mSensorsDataAPI = sensorsDataAPI;
        this.mContextManager = sAContextManager;
        this.mDisableDefaultRemoteConfig = sensorsDataAPI.isDisableDefaultRemoteConfig();
    }

    public static boolean isSDKDisabledByRemote() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null) {
            return false;
        }
        return sensorsDataSDKRemoteConfig.isDisableSDK();
    }

    public abstract void applySDKConfigFromCache();

    public String buildRemoteUrl(boolean z) {
        String newVersion;
        String serverUrl = this.mSensorsDataAPI.getServerUrl();
        String oldVersion = null;
        String remoteConfigUrl = this.mContextManager.getInternalConfigs().saConfigOptions != null ? this.mContextManager.getInternalConfigs().saConfigOptions.getRemoteConfigUrl() : null;
        if (!TextUtils.isEmpty(remoteConfigUrl) && Patterns.WEB_URL.matcher(remoteConfigUrl).matches()) {
            SALog.i(TAG, "SAConfigOptions remote url is " + remoteConfigUrl);
        } else {
            if (TextUtils.isEmpty(serverUrl) || !Patterns.WEB_URL.matcher(serverUrl).matches()) {
                String str = TimeUtils.YYYY_MM_DD;
                SALog.i(TAG, "ServerUlr: " + serverUrl + ", SAConfigOptions remote url: " + remoteConfigUrl);
                SALog.i(TAG, "Remote config url verification failed");
                return null;
            }
            int iLastIndexOf = serverUrl.lastIndexOf("/");
            remoteConfigUrl = iLastIndexOf != -1 ? serverUrl.substring(0, iLastIndexOf).concat("/config/Android.conf") : null;
            SALog.i(TAG, "SensorsDataAPI remote url is " + remoteConfigUrl);
        }
        if (z && (SensorsDataUtils.checkVersionIsNew(this.mContextManager.getContext(), this.mSensorsDataAPI.getSDKVersion()) || !isSecretKeyValid())) {
            z = false;
        }
        if (TextUtils.isEmpty(remoteConfigUrl)) {
            SALog.i(TAG, "remote request url is empty");
            return "";
        }
        Uri uri = Uri.parse(remoteConfigUrl);
        Uri.Builder builderBuildUpon = uri.buildUpon();
        if (!TextUtils.isEmpty(remoteConfigUrl) && z) {
            SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
            if (sensorsDataSDKRemoteConfig != null) {
                oldVersion = sensorsDataSDKRemoteConfig.getOldVersion();
                newVersion = sensorsDataSDKRemoteConfig.getNewVersion();
                SALog.i(TAG, "The current config: " + sensorsDataSDKRemoteConfig);
            } else {
                newVersion = null;
            }
            if (!TextUtils.isEmpty(oldVersion) && TextUtils.isEmpty(uri.getQueryParameter("v"))) {
                builderBuildUpon.appendQueryParameter("v", oldVersion);
            }
            if (!TextUtils.isEmpty(newVersion) && TextUtils.isEmpty(uri.getQueryParameter("nv"))) {
                builderBuildUpon.appendQueryParameter("nv", newVersion);
            }
        }
        if (!TextUtils.isEmpty(serverUrl) && TextUtils.isEmpty(uri.getQueryParameter("project"))) {
            String queryParameter = Uri.parse(serverUrl).getQueryParameter("project");
            if (!TextUtils.isEmpty(queryParameter)) {
                builderBuildUpon.appendQueryParameter("project", queryParameter);
            }
        }
        if (TextUtils.isEmpty(uri.getQueryParameter("app_id"))) {
            builderBuildUpon.appendQueryParameter("app_id", AppInfoUtils.getProcessName(this.mContextManager.getContext()));
        }
        builderBuildUpon.build();
        String string = builderBuildUpon.toString();
        SALog.i(TAG, "Android remote config url is " + string);
        return string;
    }

    public boolean ignoreEvent(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig != null && sensorsDataSDKRemoteConfig.getEventBlacklist() != null) {
            try {
                int length = mSDKRemoteConfig.getEventBlacklist().length();
                for (int i2 = 0; i2 < length; i2++) {
                    if (str.equals(mSDKRemoteConfig.getEventBlacklist().get(i2))) {
                        SALog.i(TAG, "remote config: " + str + " is ignored by remote config");
                        return true;
                    }
                }
            } catch (JSONException e2) {
                SALog.printStackTrace(e2);
            }
        }
        return false;
    }

    public Boolean isAutoTrackEnabled() {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null) {
            return null;
        }
        if (sensorsDataSDKRemoteConfig.getAutoTrackMode() == 0) {
            SALog.i(TAG, "remote config: AutoTrackMode is closing by remote config");
            return Boolean.FALSE;
        }
        if (mSDKRemoteConfig.getAutoTrackMode() > 0) {
            return Boolean.TRUE;
        }
        return null;
    }

    public Boolean isAutoTrackEventTypeIgnored(int i2) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = mSDKRemoteConfig;
        if (sensorsDataSDKRemoteConfig == null || sensorsDataSDKRemoteConfig.getAutoTrackMode() == -1) {
            return null;
        }
        return mSDKRemoteConfig.getAutoTrackMode() == 0 ? Boolean.TRUE : Boolean.valueOf(mSDKRemoteConfig.isAutoTrackEventTypeIgnored(i2));
    }

    public boolean isSecretKeyValid() {
        if (!this.mContextManager.getInternalConfigs().saConfigOptions.isEnableEncrypt() || !SAModuleManager.getInstance().hasModuleByName(Modules.Encrypt.MODULE_NAME)) {
            return true;
        }
        String str = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_LOAD_SECRET_KEY, new Object[0]);
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has(ConfigurationName.KEY) && !TextUtils.isEmpty(jSONObject.optString(ConfigurationName.KEY));
        } catch (JSONException e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    public abstract void pullSDKConfigFromServer();

    public abstract void requestRemoteConfig(RandomTimeType randomTimeType, boolean z);

    public void requestRemoteConfig(boolean z, HttpCallback.StringCallback stringCallback) {
        try {
            String strBuildRemoteUrl = buildRemoteUrl(z);
            if (TextUtils.isEmpty(strBuildRemoteUrl)) {
                return;
            }
            new RequestHelper.Builder(HttpMethod.GET, strBuildRemoteUrl).callback(stringCallback).execute();
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public abstract void resetPullSDKConfigTimer();

    public abstract void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig);

    public SensorsDataSDKRemoteConfig toSDKRemoteConfig(String str) {
        SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig = new SensorsDataSDKRemoteConfig();
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                sensorsDataSDKRemoteConfig.setOldVersion(jSONObject.optString("v"));
                String strOptString = jSONObject.optString("configs");
                if (!TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    sensorsDataSDKRemoteConfig.setDisableDebugMode(jSONObject2.optBoolean("disableDebugMode", false));
                    sensorsDataSDKRemoteConfig.setDisableSDK(jSONObject2.optBoolean("disableSDK", false));
                    sensorsDataSDKRemoteConfig.setAutoTrackMode(jSONObject2.optInt("autoTrackMode", -1));
                    sensorsDataSDKRemoteConfig.setEventBlacklist(jSONObject2.optJSONArray("event_blacklist"));
                    sensorsDataSDKRemoteConfig.setNewVersion(jSONObject2.optString("nv", ""));
                    sensorsDataSDKRemoteConfig.setEffectMode(jSONObject2.optInt("effect_mode", 0));
                    return sensorsDataSDKRemoteConfig;
                }
                sensorsDataSDKRemoteConfig.setDisableDebugMode(false);
                sensorsDataSDKRemoteConfig.setDisableSDK(false);
                sensorsDataSDKRemoteConfig.setAutoTrackMode(-1);
                sensorsDataSDKRemoteConfig.setEventBlacklist(new JSONArray());
                sensorsDataSDKRemoteConfig.setNewVersion("");
                sensorsDataSDKRemoteConfig.setEffectMode(0);
            }
            return sensorsDataSDKRemoteConfig;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return sensorsDataSDKRemoteConfig;
        }
    }
}
