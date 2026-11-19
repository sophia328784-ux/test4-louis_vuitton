package com.sensorsdata.analytics.android.autotrack.core.pageleave;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SAFragmentUtils;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class FragmentPageLeaveCallbacks implements SAFragmentLifecycleCallbacks, SensorsDataExceptionHandler.SAExceptionListener {
    private static final String START_TIME = "sa_start_time";
    private List<Class<?>> mIgnoreList;
    private final boolean mIsEmpty;
    private final HashMap<Integer, JSONObject> mResumedFragments = new HashMap<>();

    public FragmentPageLeaveCallbacks(List<Class<?>> list) {
        if (list == null || list.isEmpty()) {
            this.mIsEmpty = true;
        } else {
            this.mIgnoreList = list;
            this.mIsEmpty = false;
        }
    }

    private boolean ignorePage(Object obj) {
        if (this.mIsEmpty) {
            return false;
        }
        return this.mIgnoreList.contains(obj.getClass());
    }

    private void trackAppPageLeave(Object obj) {
        try {
            int iHashCode = obj.hashCode();
            if (this.mResumedFragments.containsKey(Integer.valueOf(iHashCode))) {
                JSONObject jSONObject = this.mResumedFragments.get(Integer.valueOf(iHashCode));
                this.mResumedFragments.remove(Integer.valueOf(iHashCode));
                trackPageLeaveEvent(jSONObject);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void trackFragmentStart(Object obj) {
        try {
            final String screenUrl = SAPageTools.getScreenUrl(obj);
            final int iHashCode = obj.hashCode();
            final JSONObject fragmentPageInfo = SAPageInfoUtils.getFragmentPageInfo(null, obj);
            Dispatcher.getInstance().postDelayed(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(FragmentPageLeaveCallbacks.START_TIME, SystemClock.elapsedRealtime());
                        jSONObject.put("$url", screenUrl);
                        if (SensorsDataAPI.sharedInstance().isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN) || !SensorsDataAPI.sharedInstance().isTrackFragmentAppViewScreenEnabled()) {
                            SAPageTools.setCurrentScreenUrl(screenUrl);
                        }
                        String referrer = SAPageTools.getReferrer();
                        if (!TextUtils.isEmpty(referrer)) {
                            jSONObject.put("$referrer", referrer);
                        }
                        jSONObject.put("$referrer_title", SAPageTools.getReferrerTitle());
                        JSONUtils.mergeJSONObject(fragmentPageInfo, jSONObject);
                        SALog.i("SA.FragmentPageLeave", "trackFragmentStart = " + jSONObject);
                        FragmentPageLeaveCallbacks.this.mResumedFragments.put(Integer.valueOf(iHashCode), jSONObject);
                    } catch (JSONException e2) {
                        SALog.printStackTrace(e2);
                    }
                }
            }, 300L);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void trackPageLeaveEvent(final JSONObject jSONObject) {
        try {
            long jOptLong = jSONObject.optLong(START_TIME);
            jSONObject.remove(START_TIME);
            Float fDuration = TimeUtils.duration(jOptLong, SystemClock.elapsedRealtime());
            if (fDuration.floatValue() < 0.05d) {
                return;
            }
            jSONObject.put("event_duration", fDuration);
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.pageleave.FragmentPageLeaveCallbacks.2
                @Override // java.lang.Runnable
                public void run() {
                    SensorsDataAPI.sharedInstance().getSAContextManager().trackEvent(new InputData().setEventName("$AppPageLeave").setProperties(jSONObject).setEventType(EventType.TRACK));
                }
            });
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onCreate(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onHiddenChanged(Object obj, boolean z) {
        if (ignorePage(obj)) {
            return;
        }
        if (SAFragmentUtils.isFragmentVisible(obj)) {
            trackFragmentStart(obj);
        } else {
            trackAppPageLeave(obj);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onPause(Object obj) {
        try {
            if (this.mResumedFragments.containsKey(Integer.valueOf(obj.hashCode()))) {
                trackAppPageLeave(obj);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onResume(Object obj) {
        if (ignorePage(obj) || !SAFragmentUtils.isFragmentVisible(obj)) {
            return;
        }
        trackFragmentStart(obj);
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onStart(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onStop(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void onViewCreated(Object obj, View view, Bundle bundle) {
    }

    @Override // com.sensorsdata.analytics.android.autotrack.core.autotrack.SAFragmentLifecycleCallbacks
    public void setUserVisibleHint(Object obj, boolean z) {
        if (ignorePage(obj)) {
            return;
        }
        if (SAFragmentUtils.isFragmentVisible(obj)) {
            trackFragmentStart(obj);
        } else {
            trackAppPageLeave(obj);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.SAExceptionListener
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            Iterator<Integer> it = this.mResumedFragments.keySet().iterator();
            while (it.hasNext()) {
                Integer next = it.next();
                next.intValue();
                JSONObject jSONObject = this.mResumedFragments.get(next);
                if (jSONObject != null) {
                    trackPageLeaveEvent(jSONObject);
                    it.remove();
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
