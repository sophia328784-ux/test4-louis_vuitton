package com.sensorsdata.analytics.android.sdk.core.event.imp;

import android.text.TextUtils;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.timer.EventTimer;
import com.sensorsdata.analytics.android.sdk.core.business.timer.EventTimerManager;
import com.sensorsdata.analytics.android.sdk.core.event.Event;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.event.TrackEvent;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.InternalCustomPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.useridentity.Identities;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import defpackage.d21;
import java.security.SecureRandom;
import net.rtccloud.sdk.Call;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class TrackEventAssemble extends BaseEventAssemble {
    private static final String TAG = "SA.TrackEventAssemble";
    private final SAContextManager mContextManager;

    public TrackEventAssemble(SAContextManager sAContextManager) {
        super(sAContextManager);
        this.mContextManager = sAContextManager;
    }

    private void appendDefaultProperty(InputData inputData, TrackEvent trackEvent) {
        try {
            trackEvent.setTime(inputData.getTime());
            trackEvent.setEventName(inputData.getEventName());
            trackEvent.setType(inputData.getEventType().getEventType());
            trackEvent.setTrackId(new SecureRandom().nextInt());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void appendEventDuration(TrackEvent trackEvent) {
        try {
            String eventName = trackEvent.getEventName();
            if (TextUtils.isEmpty(eventName)) {
                return;
            }
            EventTimer eventTimer = EventTimerManager.getInstance().getEventTimer(eventName);
            if (eventTimer != null) {
                float fDuration = eventTimer.duration();
                if (fDuration > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    trackEvent.getProperties().put("event_duration", Float.valueOf(fDuration));
                }
            }
            if (!eventName.endsWith("_SATimer") || eventName.length() <= 45) {
                return;
            }
            String strSubstring = eventName.substring(0, eventName.length() - 45);
            trackEvent.setEventName(strSubstring);
            SALog.i(TAG, "trigger event name = ".concat(strSubstring));
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void appendLibProperty(EventType eventType, TrackEvent trackEvent) throws JSONException {
        SensorsDataAPI.AutoTrackEventType autoTrackEventTypeAutoTrackEventTypeFromEventName;
        JSONObject jSONObject = new JSONObject();
        JSONObject properties = trackEvent.getProperties();
        String strF = null;
        if (properties != null) {
            if (eventType.isTrack()) {
                String strOptString = trackEvent.getProperties().optString("$lib_method", m.v);
                jSONObject.put("$lib_method", strOptString);
                properties.put("$lib_method", strOptString);
            } else {
                jSONObject.put("$lib_method", m.v);
            }
            if (properties.has("$lib_detail")) {
                strF = properties.optString("$lib_detail");
                properties.remove("$lib_detail");
            }
        } else {
            jSONObject.put("$lib_method", m.v);
            if (eventType.isTrack()) {
                properties = new JSONObject();
                properties.put("$lib_method", m.v);
            }
        }
        jSONObject.put("$lib", "Android");
        jSONObject.put("$lib_version", this.mContextManager.getSensorsDataAPI().getSDKVersion());
        jSONObject.put("$app_version", AppInfoUtils.getAppVersionName(this.mContextManager.getContext()));
        JSONObject jSONObject2 = PersistentLoader.getInstance().getSuperPropertiesPst().get();
        if (jSONObject2 != null && jSONObject2.has("$app_version")) {
            jSONObject.put("$app_version", jSONObject2.get("$app_version"));
        }
        if (this.mContextManager.getSensorsDataAPI().isAutoTrackEnabled() && properties != null && isAutoTrackType(trackEvent.getEventName()) && (autoTrackEventTypeAutoTrackEventTypeFromEventName = autoTrackEventTypeFromEventName(trackEvent.getEventName())) != null && !this.mContextManager.getSensorsDataAPI().isAutoTrackEventTypeIgnored(autoTrackEventTypeAutoTrackEventTypeFromEventName) && trackEvent.getProperties().has("$screen_name")) {
            String string = properties.getString("$screen_name");
            if (!TextUtils.isEmpty(string)) {
                String[] strArrSplit = string.split("\\|");
                if (strArrSplit.length > 0) {
                    strF = d21.j(strArrSplit[0], "######");
                }
            }
        }
        if (TextUtils.isEmpty(strF)) {
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
                strF = d21.f(lineNumber, "##", sb);
            }
        }
        jSONObject.put("$lib_detail", strF);
        trackEvent.setLib(jSONObject);
        trackEvent.setProperties(properties);
    }

    private void appendPluginProperties(EventType eventType, JSONObject jSONObject, TrackEvent trackEvent) throws JSONException {
        SAPropertyFilter sAPropertyFilter = new SAPropertyFilter();
        sAPropertyFilter.setEvent(trackEvent.getEventName());
        sAPropertyFilter.setTime(trackEvent.getTime());
        sAPropertyFilter.setEventJson(SAPropertyFilter.LIB, trackEvent.getLib());
        if (trackEvent.getIdentities() != null) {
            sAPropertyFilter.setEventJson("identities", new JSONObject(trackEvent.getIdentities().toString()));
        }
        sAPropertyFilter.setProperties(trackEvent.getProperties());
        sAPropertyFilter.setType(eventType);
        SAPropertyPlugin propertyPlugin = this.mContextManager.getPluginManager().getPropertyPlugin(InternalCustomPropertyPlugin.class.getName());
        if (propertyPlugin instanceof InternalCustomPropertyPlugin) {
            ((InternalCustomPropertyPlugin) propertyPlugin).saveCustom(jSONObject);
        }
        SAPropertiesFetcher sAPropertiesFetcherPropertiesHandler = this.mContextManager.getPluginManager().propertiesHandler(sAPropertyFilter);
        if (sAPropertiesFetcherPropertiesHandler != null) {
            trackEvent.setProperties(sAPropertiesFetcherPropertiesHandler.getProperties());
            trackEvent.setLib(sAPropertiesFetcherPropertiesHandler.getEventJson(SAPropertyFilter.LIB));
        }
    }

    private void appendUserIDs(InputData inputData, TrackEvent trackEvent) throws JSONException {
        String distinctId = this.mContextManager.getUserIdentityAPI().getDistinctId();
        String loginId = this.mContextManager.getUserIdentityAPI().getLoginId();
        String anonymousId = this.mContextManager.getUserIdentityAPI().getAnonymousId();
        try {
            if ("$PlanPopupDisplay".equals(trackEvent.getEventName())) {
                if (trackEvent.getProperties().has("$sf_internal_anonymous_id")) {
                    anonymousId = trackEvent.getProperties().optString("$sf_internal_anonymous_id");
                    trackEvent.getProperties().remove("$sf_internal_anonymous_id");
                    inputData.getProperties().remove("$sf_internal_anonymous_id");
                }
                if (trackEvent.getProperties().has("$sf_internal_login_id")) {
                    loginId = trackEvent.getProperties().optString("$sf_internal_login_id");
                    trackEvent.getProperties().remove("$sf_internal_login_id");
                    inputData.getProperties().remove("$sf_internal_login_id");
                }
                distinctId = !TextUtils.isEmpty(loginId) ? loginId : anonymousId;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        EventType eventType = inputData.getEventType();
        JSONObject identities = this.mContextManager.getUserIdentityAPI().getIdentities(eventType);
        EventType eventType2 = EventType.TRACK_ID_UNBIND;
        if (!eventType2.getEventType().equals(trackEvent.getType())) {
            if (identities != null) {
                if (TextUtils.isEmpty(anonymousId)) {
                    anonymousId = identities.optString(Identities.ANONYMOUS_ID);
                } else {
                    identities.put(Identities.ANONYMOUS_ID, anonymousId);
                }
                boolean zIsEmpty = TextUtils.isEmpty(loginId);
                SAContextManager sAContextManager = this.mContextManager;
                if (zIsEmpty) {
                    loginId = identities.optString(sAContextManager.getUserIdentityAPI().getIdentitiesInstance().getLoginIDKey());
                } else {
                    identities.put(sAContextManager.getUserIdentityAPI().getIdentitiesInstance().getLoginIDKey(), loginId);
                }
            }
            if (!TextUtils.isEmpty(loginId)) {
                trackEvent.setLoginId(loginId);
            }
            trackEvent.setAnonymousId(anonymousId);
        }
        trackEvent.setDistinctId(distinctId);
        trackEvent.setIdentities(identities);
        if (eventType == EventType.TRACK || eventType == EventType.TRACK_ID_BIND || eventType == eventType2) {
            trackEvent.getProperties().put("$is_first_day", this.mContextManager.isFirstDay(trackEvent.getTime()));
        } else if (eventType == EventType.TRACK_SIGNUP) {
            trackEvent.setOriginalId(trackEvent.getAnonymousId());
        }
    }

    public static SensorsDataAPI.AutoTrackEventType autoTrackEventTypeFromEventName(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        switch (str) {
            case "$AppViewScreen":
                return SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN;
            case "$AppEnd":
                return SensorsDataAPI.AutoTrackEventType.APP_END;
            case "$AppClick":
                return SensorsDataAPI.AutoTrackEventType.APP_CLICK;
            case "$AppStart":
                return SensorsDataAPI.AutoTrackEventType.APP_START;
            default:
                return null;
        }
    }

    public static boolean isAutoTrackType(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.getClass();
            switch (str) {
                case "$AppViewScreen":
                case "$AppEnd":
                case "$AppClick":
                case "$AppStart":
                    return true;
            }
        }
        return false;
    }

    private boolean isEventIgnore(String str, EventType eventType, SAContextManager sAContextManager) {
        if (eventType.isTrack()) {
            SADataHelper.assertEventName(str);
            if (!TextUtils.isEmpty(str) && sAContextManager.getRemoteManager() != null && sAContextManager.getRemoteManager().ignoreEvent(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.IAssembleData
    public Event assembleData(InputData inputData) {
        try {
            EventType eventType = inputData.getEventType();
            JSONObject jSONObjectCloneJsonObject = JSONUtils.cloneJsonObject(inputData.getProperties());
            if (jSONObjectCloneJsonObject == null) {
                jSONObjectCloneJsonObject = new JSONObject();
            }
            if (isEventIgnore(inputData.getEventName(), eventType, this.mContextManager)) {
                return null;
            }
            TrackEvent trackEvent = new TrackEvent();
            trackEvent.setProperties(jSONObjectCloneJsonObject);
            appendDefaultProperty(inputData, trackEvent);
            appendEventDuration(trackEvent);
            appendLibProperty(eventType, trackEvent);
            appendUserIDs(inputData, trackEvent);
            appendSessionId(eventType, trackEvent);
            appendPluginProperties(eventType, inputData.getProperties(), trackEvent);
            handlePropertyProtocols(trackEvent);
            if (!handleEventCallback(eventType, trackEvent)) {
                return null;
            }
            appendPluginVersion(eventType, trackEvent);
            overrideDeviceId(eventType, trackEvent, this.mContextManager);
            SADataHelper.assertPropertyTypes(trackEvent.getProperties());
            handleEventListener(eventType, trackEvent, this.mContextManager);
            if (SALog.isLogEnabled()) {
                SALog.i(TAG, "track event:\n" + JSONUtils.formatJson(trackEvent.toJSONObject().toString()));
            }
            return trackEvent;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }
}
