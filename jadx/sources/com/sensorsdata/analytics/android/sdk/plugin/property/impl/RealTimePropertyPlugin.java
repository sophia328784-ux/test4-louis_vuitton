package com.sensorsdata.analytics.android.sdk.plugin.property.impl;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataGPSLocation;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;

/* JADX INFO: loaded from: classes3.dex */
public class RealTimePropertyPlugin extends SAPropertyPlugin {
    Context mContext;
    SAContextManager mContextManager;

    public RealTimePropertyPlugin(SAContextManager sAContextManager) {
        this.mContext = sAContextManager.getContext();
        this.mContextManager = sAContextManager;
    }

    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
    public boolean isMatchedWithFilter(SAPropertyFilter sAPropertyFilter) {
        return sAPropertyFilter.getType().isTrack() && "Android".equals(sAPropertyFilter.getEventJson(SAPropertyFilter.LIB).optString("$lib"));
    }

    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
    public void properties(SAPropertiesFetcher sAPropertiesFetcher) {
        try {
            String strNetworkType = NetworkUtils.networkType(this.mContext);
            sAPropertiesFetcher.getProperties().put("$wifi", "WIFI".equals(strNetworkType));
            sAPropertiesFetcher.getProperties().put("$network_type", strNetworkType);
            SensorsDataGPSLocation sensorsDataGPSLocation = this.mContextManager.getInternalConfigs().gpsLocation;
            if (sensorsDataGPSLocation != null) {
                sensorsDataGPSLocation.toJSON(sAPropertiesFetcher.getProperties());
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        try {
            String screenOrientation = SensorsDataAPI.sharedInstance().getScreenOrientation();
            if (TextUtils.isEmpty(screenOrientation)) {
                return;
            }
            sAPropertiesFetcher.getProperties().put("$screen_orientation", screenOrientation);
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }
}
