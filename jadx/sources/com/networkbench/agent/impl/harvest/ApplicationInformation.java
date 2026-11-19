package com.networkbench.agent.impl.harvest;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.e.b;
import com.networkbench.agent.impl.e.c;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class ApplicationInformation extends HarvestableArray {
    public static final String CHANNEL_ID_NAME = "NBS_CHANNEL";
    private PackageManager packageManager;
    private static final e log = f.a();
    public static final String CHANNEL_ID_DEFAULT_NAME = "TINGYUN_UNKNOWN";
    public static String customSetChannelId = CHANNEL_ID_DEFAULT_NAME;
    private String packageId = "";
    private String sdkBuildId = NBSAgent.getBuildId();
    private String appName = "";
    private String appVersion = "";
    private String channelId = customSetChannelId;

    public ApplicationInformation(Context context) {
        this.packageManager = context.getPackageManager();
    }

    private void configureJsonArrayWithAppInfo(JsonArray jsonArray) {
        jsonArray.add(new JsonPrimitive(this.packageId));
        jsonArray.add(new JsonPrimitive(this.appName));
        jsonArray.add(new JsonPrimitive(this.appVersion));
    }

    private void generateAppName() {
        try {
            this.appName = b.a(PrivacyDataType.PrivacyDataAppName);
        } catch (Throwable unused) {
            this.appName = "";
        }
    }

    private void generateAppVersion() {
        try {
            this.packageId = b.a(PrivacyDataType.PrivacyDataBundleId);
            this.appVersion = c.a();
        } catch (Throwable th) {
            log.f(th.toString());
        }
    }

    private void generateChannel() {
        String strTrim = getChannelIdStr().trim();
        this.channelId = strTrim;
        if (isValidChannelId(strTrim)) {
            return;
        }
        this.channelId = "";
    }

    private String getChannelIdFromManifest() {
        try {
            ApplicationInfo applicationInfo = this.packageManager.getApplicationInfo(r.u().J().getPackageName(), 128);
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                return bundle.getString(CHANNEL_ID_NAME) == null ? "" : applicationInfo.metaData.getString(CHANNEL_ID_NAME);
            }
            log.a(" not configure the channelID  in the AndroidManifest");
            return "";
        } catch (Throwable th) {
            log.f(th.toString());
        }
    }

    private String getChannelIdStr() {
        return this.channelId.equalsIgnoreCase(CHANNEL_ID_DEFAULT_NAME) ? getChannelIdFromManifest() : this.channelId;
    }

    private boolean isValidChannelId(String str) {
        if (!str.matches("[0-9]+") && str.length() <= 256 && !CHANNEL_ID_DEFAULT_NAME.equalsIgnoreCase(str)) {
            return true;
        }
        log.f("channelId is invalid:".concat(str));
        return false;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        configureJsonArrayWithAppInfo(jsonArray);
        jsonArray.add(new JsonPrimitive(this.sdkBuildId));
        optional(this.channelId);
        jsonArray.add(new JsonPrimitive(this.channelId));
        return jsonArray;
    }

    public JsonArray asSocketJsonArray() {
        JsonArray jsonArray = new JsonArray();
        configureJsonArrayWithAppInfo(jsonArray);
        jsonArray.add(new JsonPrimitive("agent-android"));
        jsonArray.add(new JsonPrimitive(NBSAgent.getVersion()));
        jsonArray.add(new JsonPrimitive(this.sdkBuildId));
        optional(this.channelId);
        jsonArray.add(new JsonPrimitive(this.channelId));
        return jsonArray;
    }

    public void generateAppInfo() {
        generateAppVersion();
        generateAppName();
        generateChannel();
    }

    public void generateData() {
        generateAppVersion();
        generateAppName();
    }

    public String getAppName() {
        return this.appName;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public String getPackageId() {
        return this.packageId;
    }
}
