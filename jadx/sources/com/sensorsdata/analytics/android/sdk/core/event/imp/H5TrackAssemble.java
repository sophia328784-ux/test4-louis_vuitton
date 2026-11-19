package com.sensorsdata.analytics.android.sdk.core.event.imp;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.event.Event;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.event.TrackEvent;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.useridentity.Identities;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import java.security.SecureRandom;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
class H5TrackAssemble extends BaseEventAssemble {
    private static final String TAG = "SA.H5TrackAssemble";

    public H5TrackAssemble(SAContextManager sAContextManager) {
        super(sAContextManager);
    }

    private void appendDefaultProperty(TrackEvent trackEvent) {
        try {
            trackEvent.getExtras().put("_hybrid_h5", true);
            if (!trackEvent.getExtras().has("time")) {
                trackEvent.getExtras().put("time", System.currentTimeMillis());
            }
            trackEvent.getExtras().put("_track_id", new SecureRandom().nextInt());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void appendNativeProperty(EventType eventType, TrackEvent trackEvent, SAContextManager sAContextManager) throws JSONException {
        JSONObject jSONObjectOptJSONObject = trackEvent.getExtras().optJSONObject(SAPropertyFilter.LIB);
        if (jSONObjectOptJSONObject != null) {
            jSONObjectOptJSONObject.put("$app_version", AppInfoUtils.getAppVersionName(sAContextManager.getContext()));
            JSONObject jSONObject = PersistentLoader.getInstance().getSuperPropertiesPst().get();
            if (jSONObject != null && jSONObject.has("$app_version")) {
                jSONObjectOptJSONObject.put("$app_version", jSONObject.get("$app_version"));
            }
            trackEvent.setLib(jSONObjectOptJSONObject);
        }
        if (eventType.isTrack()) {
            trackEvent.getProperties().put("$is_first_day", sAContextManager.isFirstDay(trackEvent.getExtras().optLong("time")));
        }
    }

    private void appendPropertyPlugin(EventType eventType, TrackEvent trackEvent, SensorsDataAPI sensorsDataAPI) {
        SAPropertyFilter sAPropertyFilter = new SAPropertyFilter();
        sAPropertyFilter.setEvent(trackEvent.getEventName());
        sAPropertyFilter.setEventJson(SAPropertyFilter.LIB, trackEvent.getExtras().optJSONObject(SAPropertyFilter.LIB));
        sAPropertyFilter.setProperties(trackEvent.getProperties());
        sAPropertyFilter.setType(eventType);
        SAPropertiesFetcher sAPropertiesFetcherPropertiesHandler = sensorsDataAPI.getSAContextManager().getPluginManager().propertiesHandler(sAPropertyFilter);
        if (sAPropertiesFetcherPropertiesHandler != null) {
            trackEvent.setProperties(sAPropertiesFetcherPropertiesHandler.getProperties());
            trackEvent.setLib(sAPropertiesFetcherPropertiesHandler.getEventJson(SAPropertyFilter.LIB));
        }
    }

    private void checkIDConsistent(EventType eventType, TrackEvent trackEvent, SensorsDataAPI sensorsDataAPI) {
        try {
            JSONObject jSONObjectOptJSONObject = trackEvent.getExtras().optJSONObject("identities");
            if (jSONObjectOptJSONObject != null) {
                if (EventType.TRACK_ID_UNBIND.getEventType().equals(eventType.getEventType())) {
                    trackEvent.getExtras().remove("anonymous_id");
                    return;
                }
                String anonymousId = sensorsDataAPI.getAnonymousId();
                if (TextUtils.isEmpty(anonymousId)) {
                    trackEvent.getExtras().put("anonymous_id", jSONObjectOptJSONObject.optString(Identities.ANONYMOUS_ID));
                } else {
                    jSONObjectOptJSONObject.put(Identities.ANONYMOUS_ID, anonymousId);
                    trackEvent.getExtras().put("anonymous_id", anonymousId);
                }
                String loginId = sensorsDataAPI.getLoginId();
                if (TextUtils.isEmpty(loginId)) {
                    loginId = jSONObjectOptJSONObject.optString(sensorsDataAPI.getSAContextManager().getUserIdentityAPI().getIdentitiesInstance().getLoginIDKey());
                } else {
                    jSONObjectOptJSONObject.put(sensorsDataAPI.getSAContextManager().getUserIdentityAPI().getIdentitiesInstance().getLoginIDKey(), loginId);
                }
                if (eventType != EventType.TRACK_SIGNUP && !TextUtils.isEmpty(sensorsDataAPI.getLoginId())) {
                    trackEvent.getExtras().put("login_id", loginId);
                }
                trackEvent.getExtras().put("identities", jSONObjectOptJSONObject);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void overrideH5Ids(EventType eventType, TrackEvent trackEvent, SensorsDataAPI sensorsDataAPI) throws JSONException {
        if (eventType == EventType.TRACK_SIGNUP) {
            trackEvent.getExtras().put("original_id", sensorsDataAPI.getAnonymousId());
        } else if (TextUtils.isEmpty(sensorsDataAPI.getLoginId())) {
            trackEvent.getExtras().put("distinct_id", sensorsDataAPI.getAnonymousId());
        } else {
            trackEvent.getExtras().put("distinct_id", sensorsDataAPI.getLoginId());
        }
    }

    private void removeH5Property(TrackEvent trackEvent) {
        if (trackEvent.getExtras().has("_nocache")) {
            trackEvent.getExtras().remove("_nocache");
        }
        if (trackEvent.getExtras().has("server_url")) {
            trackEvent.getExtras().remove("server_url");
        }
        if (trackEvent.getExtras().has("_flush_time")) {
            trackEvent.getExtras().remove("_flush_time");
        }
    }

    private boolean updateIdentities(EventType eventType, TrackEvent trackEvent, SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        try {
            return EventType.TRACK_ID_UNBIND.getEventType().equals(eventType.getEventType()) || sAContextManager.getUserIdentityAPI().mergeH5Identities(eventType, trackEvent.getExtras());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.IAssembleData
    public Event assembleData(InputData inputData) {
        try {
            if (TextUtils.isEmpty(inputData.getExtras())) {
                return null;
            }
            TrackEvent trackEvent = new TrackEvent();
            trackEvent.setExtras(new JSONObject(inputData.getExtras()));
            String strOptString = trackEvent.getExtras().optString(MvelScriptManager.VAR_EVENT);
            SADataHelper.assertEventName(strOptString);
            trackEvent.setEventName(strOptString);
            JSONObject jSONObjectOptJSONObject = trackEvent.getExtras().optJSONObject(SAPropertyFilter.PROPERTIES);
            SADataHelper.assertPropertyTypes(jSONObjectOptJSONObject);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            trackEvent.setProperties(jSONObjectOptJSONObject);
            EventType eventTypeValueOf = EventType.valueOf(trackEvent.getExtras().getString("type").toUpperCase(Locale.getDefault()));
            SensorsDataAPI sensorsDataAPISharedInstance = SensorsDataAPI.sharedInstance();
            SAContextManager sAContextManager = sensorsDataAPISharedInstance.getSAContextManager();
            appendDefaultProperty(trackEvent);
            overrideH5Ids(eventTypeValueOf, trackEvent, sensorsDataAPISharedInstance);
            appendNativeProperty(eventTypeValueOf, trackEvent, sAContextManager);
            appendPropertyPlugin(eventTypeValueOf, trackEvent, sensorsDataAPISharedInstance);
            appendSessionId(eventTypeValueOf, trackEvent);
            handlePropertyProtocols(trackEvent);
            if (!handleEventCallback(eventTypeValueOf, trackEvent)) {
                return null;
            }
            appendPluginVersion(eventTypeValueOf, trackEvent);
            removeH5Property(trackEvent);
            overrideDeviceId(eventTypeValueOf, trackEvent, sAContextManager);
            if (updateIdentities(eventTypeValueOf, trackEvent, sensorsDataAPISharedInstance, sAContextManager)) {
                SADataHelper.assertPropertyTypes(trackEvent.getProperties());
                trackEvent.getExtras().put(SAPropertyFilter.PROPERTIES, trackEvent.getProperties());
                trackEvent.getExtras().put(SAPropertyFilter.LIB, trackEvent.getLib());
                checkIDConsistent(eventTypeValueOf, trackEvent, sensorsDataAPISharedInstance);
                if (SALog.isLogEnabled()) {
                    SALog.i(TAG, "track event from H5:\n" + JSONUtils.formatJson(trackEvent.getExtras().toString()));
                }
                return trackEvent;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return null;
    }
}
