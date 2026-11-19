package com.sensorsdata.analytics.android.sdk.core.business.instantevent;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import java.util.List;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
public class InstantEventUtils {
    private static boolean instanceEventType(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(EventType.TRACK.getEventType()) || str.equals(EventType.TRACK_SIGNUP.getEventType()) || str.equals(EventType.TRACK_ID_BIND.getEventType()) || str.equals(EventType.TRACK_ID_UNBIND.getEventType());
    }

    public static boolean isInstantEvent(InputData inputData) {
        if (inputData == null) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(inputData.getExtras())) {
                List instantEvents = SensorsDataAPI.getConfigOptions().getInstantEvents();
                if (inputData.getEventType() == null) {
                    return false;
                }
                if (inputData.getEventType().isTrack() && !TextUtils.isEmpty(inputData.getEventName()) && instantEvents != null && instantEvents.contains(inputData.getEventName())) {
                    return true;
                }
            } else {
                JSONObject jSONObject = new JSONObject(inputData.getExtras());
                String strOptString = jSONObject.optString("type", "");
                boolean zOptBoolean = jSONObject.optBoolean(DbParams.KEY_IS_INSTANT_EVENT, false);
                if (instanceEventType(strOptString) && zOptBoolean) {
                    return true;
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return false;
    }

    public static int isInstantEvent(JSONObject jSONObject) {
        try {
            if (jSONObject.optBoolean("_hybrid_h5", false)) {
                boolean zOptBoolean = jSONObject.optBoolean(DbParams.KEY_IS_INSTANT_EVENT, false);
                String strOptString = jSONObject.optString("type", "");
                jSONObject.remove(DbParams.KEY_IS_INSTANT_EVENT);
                if (instanceEventType(strOptString) && zOptBoolean) {
                    return 1;
                }
            } else {
                String strOptString2 = jSONObject.optString("type", "");
                String strOptString3 = jSONObject.optString(MvelScriptManager.VAR_EVENT, "");
                List instantEvents = SensorsDataAPI.getConfigOptions().getInstantEvents();
                if (instanceEventType(strOptString2) && !TextUtils.isEmpty(strOptString3) && instantEvents != null && instantEvents.contains(strOptString3)) {
                    return 1;
                }
            }
            return 0;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return 0;
        }
    }
}
