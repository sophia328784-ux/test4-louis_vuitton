package com.sensorsdata.analytics.android.sdk.core.event.imp;

import android.text.TextUtils;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.event.Event;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.event.TrackEvent;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.exceptions.InvalidDataException;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import defpackage.d21;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class ItemEventAssemble extends BaseEventAssemble {
    private static final String TAG = "SA.ItemEventAssemble";

    public ItemEventAssemble(SAContextManager sAContextManager) {
        super(sAContextManager);
    }

    private void appendDefaultProperty(InputData inputData, TrackEvent trackEvent) {
        if (SADataHelper.assertPropertyKey(inputData.getItemType())) {
            trackEvent.setItemType(inputData.getItemType());
        }
        trackEvent.setItemId(inputData.getItemId());
        trackEvent.setType(inputData.getEventType().getEventType());
        trackEvent.setTime(inputData.getTime());
        try {
            trackEvent.setProperties(TimeUtils.formatDate(JSONUtils.cloneJsonObject(inputData.getProperties())));
        } catch (InvalidDataException e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void appendLibProperty(TrackEvent trackEvent) throws JSONException {
        SensorsDataAPI sensorsDataAPISharedInstance = SensorsDataAPI.sharedInstance();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("$lib", "Android");
        jSONObject.put("$lib_version", sensorsDataAPISharedInstance.getSDKVersion());
        jSONObject.put("$lib_method", m.v);
        jSONObject.put("$app_version", AppInfoUtils.getAppVersionName(sensorsDataAPISharedInstance.getSAContextManager().getContext()));
        JSONObject jSONObject2 = PersistentLoader.getInstance().getSuperPropertiesPst().get();
        if (jSONObject2 != null && jSONObject2.has("$app_version")) {
            jSONObject.put("$app_version", jSONObject2.get("$app_version"));
        }
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        if (stackTrace.length > 1) {
            StackTraceElement stackTraceElement = stackTrace[0];
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            int lineNumber = stackTraceElement.getLineNumber();
            StringBuilder sb = new StringBuilder();
            sb.append(className);
            sb.append("##");
            sb.append(methodName);
            sb.append("##");
            sb.append(fileName);
            String strF = d21.f(lineNumber, "##", sb);
            if (!TextUtils.isEmpty(strF)) {
                jSONObject.put("$lib_detail", strF);
            }
        }
        trackEvent.setLib(jSONObject);
    }

    private boolean isEventIgnore(InputData inputData) {
        try {
            SADataHelper.assertPropertyTypes(inputData.getProperties());
            SADataHelper.assertItemId(inputData.getItemId());
            return false;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return true;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.IAssembleData
    public Event assembleData(InputData inputData) {
        try {
            if (isEventIgnore(inputData)) {
                return null;
            }
            TrackEvent trackEvent = new TrackEvent();
            appendDefaultProperty(inputData, trackEvent);
            appendLibProperty(trackEvent);
            handlePropertyProtocols(trackEvent);
            if (!SALog.isLogEnabled()) {
                return trackEvent;
            }
            SALog.i(TAG, "track item event:\n" + JSONUtils.formatJson(trackEvent.toJSONObject().toString()));
            return trackEvent;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }
}
