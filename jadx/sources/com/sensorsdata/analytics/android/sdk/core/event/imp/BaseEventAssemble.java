package com.sensorsdata.analytics.android.sdk.core.event.imp;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.SAPluginVersion;
import com.sensorsdata.analytics.android.sdk.core.business.session.SessionRelatedManager;
import com.sensorsdata.analytics.android.sdk.core.event.EventProcessor;
import com.sensorsdata.analytics.android.sdk.core.event.TrackEvent;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
import com.sensorsdata.analytics.android.sdk.listener.SAEventListener;
import com.sensorsdata.analytics.android.sdk.monitor.TrackMonitor;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.impl.SAPresetPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseEventAssemble implements EventProcessor.IAssembleData {
    private static final String TAG = "SA.BaseEventAssemble";
    protected InternalConfigOptions mInternalConfigs;

    public BaseEventAssemble(SAContextManager sAContextManager) {
        this.mInternalConfigs = sAContextManager.getInternalConfigs();
    }

    private boolean isEnterDb(String str, JSONObject jSONObject) {
        boolean zOnTrackEvent = true;
        if (this.mInternalConfigs.sensorsDataTrackEventCallBack != null) {
            SALog.i(TAG, "SDK have set trackEvent callBack");
            try {
                zOnTrackEvent = this.mInternalConfigs.sensorsDataTrackEventCallBack.onTrackEvent(str, jSONObject);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
            if (zOnTrackEvent) {
                try {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object objOpt = jSONObject.opt(next);
                        if (objOpt instanceof Date) {
                            jSONObject.put(next, TimeUtils.formatDate((Date) objOpt, TimeUtils.SDK_LOCALE));
                        } else {
                            jSONObject.put(next, objOpt);
                        }
                    }
                } catch (Exception e3) {
                    SALog.printStackTrace(e3);
                }
            }
        }
        return zOnTrackEvent;
    }

    public void appendPluginVersion(EventType eventType, TrackEvent trackEvent) {
        if (eventType.isTrack()) {
            SAPluginVersion.appendPluginVersion(trackEvent.getProperties());
        }
    }

    public void appendSessionId(EventType eventType, TrackEvent trackEvent) {
        if (eventType.isTrack()) {
            try {
                SessionRelatedManager.getInstance().handleEventOfSession(trackEvent.getEventName(), trackEvent.getProperties(), trackEvent.getTime());
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    public boolean handleEventCallback(EventType eventType, TrackEvent trackEvent) {
        if (!eventType.isTrack() || isEnterDb(trackEvent.getEventName(), trackEvent.getProperties())) {
            return true;
        }
        SALog.i(TAG, trackEvent.getEventName() + " event can not enter database");
        return false;
    }

    public void handleEventListener(EventType eventType, TrackEvent trackEvent, SAContextManager sAContextManager) {
        try {
            if (sAContextManager.getEventListenerList() != null && eventType.isTrack()) {
                Iterator<SAEventListener> it = sAContextManager.getEventListenerList().iterator();
                while (it.hasNext()) {
                    it.next().trackEvent(trackEvent.toJSONObject());
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        try {
            if (eventType.isTrack()) {
                TrackMonitor.getInstance().callTrack(trackEvent.toJSONObject());
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    public void handlePropertyProtocols(TrackEvent trackEvent) throws JSONException {
        if (trackEvent.getProperties().has("$project")) {
            if (this instanceof H5TrackAssemble) {
                trackEvent.getExtras().put("project", trackEvent.getProperties().optString("$project"));
            } else {
                trackEvent.setProject(trackEvent.getProperties().optString("$project"));
            }
            trackEvent.getProperties().remove("$project");
        }
        if (trackEvent.getProperties().has("$token")) {
            if (this instanceof H5TrackAssemble) {
                trackEvent.getExtras().put("token", trackEvent.getProperties().optString("$token"));
            } else {
                trackEvent.setToken(trackEvent.getProperties().optString("$token"));
            }
            trackEvent.getProperties().remove("$token");
        }
        if (trackEvent.getProperties().has("$time")) {
            try {
                if (this instanceof H5TrackAssemble) {
                    long j2 = trackEvent.getProperties().getLong("$time");
                    if (TimeUtils.isDateValid(j2)) {
                        trackEvent.getExtras().put("time", j2);
                    }
                } else {
                    Object objOpt = trackEvent.getProperties().opt("$time");
                    if ((objOpt instanceof Date) && TimeUtils.isDateValid((Date) objOpt)) {
                        trackEvent.setTime(((Date) objOpt).getTime());
                    }
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
            trackEvent.getProperties().remove("$time");
        }
    }

    public void overrideDeviceId(EventType eventType, TrackEvent trackEvent, SAContextManager sAContextManager) {
        try {
            if (!eventType.isTrack() || trackEvent == null) {
                return;
            }
            SAPropertyPlugin propertyPlugin = sAContextManager.getPluginManager().getPropertyPlugin(SAPresetPropertyPlugin.class.getName());
            if (propertyPlugin instanceof SAPresetPropertyPlugin) {
                JSONObject presetProperties = ((SAPresetPropertyPlugin) propertyPlugin).getPresetProperties();
                trackEvent.getProperties().remove("$device_id");
                trackEvent.getProperties().remove("$anonymization_id");
                if (this.mInternalConfigs.saConfigOptions.isDisableDeviceId()) {
                    if (presetProperties.has("$anonymization_id")) {
                        trackEvent.getProperties().put("$anonymization_id", presetProperties.optString("$anonymization_id"));
                    }
                } else if (presetProperties.has("$device_id")) {
                    trackEvent.getProperties().put("$device_id", presetProperties.optString("$device_id"));
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
