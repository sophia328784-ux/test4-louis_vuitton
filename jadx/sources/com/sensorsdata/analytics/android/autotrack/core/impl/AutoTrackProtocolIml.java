package com.sensorsdata.analytics.android.autotrack.core.impl;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.autotrack.core.beans.ViewContext;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.autotrack.utils.AopUtil;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.ScreenAutoTracker;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataFragmentTitle;
import com.sensorsdata.analytics.android.sdk.SensorsDataIgnoreTrackAppClick;
import com.sensorsdata.analytics.android.sdk.SensorsDataIgnoreTrackAppViewScreen;
import com.sensorsdata.analytics.android.sdk.SensorsDataIgnoreTrackAppViewScreenAndAppClick;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol;
import com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SAPageInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AutoTrackProtocolIml implements AutoTrackProtocol {
    private static final String TAG = "SA.AutoTrackProtocolIml";
    protected boolean mAutoTrack;
    private final SAContextManager mContextManager;
    private final SAConfigOptions mSAConfigOptions;
    protected List<Class<?>> mIgnoredViewTypeList = new ArrayList();
    protected boolean mClearReferrerWhenAppEnd = false;
    protected IFragmentAPI mFragmentAPI = new FragmentAPI();
    protected List<Integer> mAutoTrackIgnoredActivities = new ArrayList();

    public AutoTrackProtocolIml(SAContextManager sAContextManager) {
        this.mContextManager = sAContextManager;
        SAConfigOptions sAConfigOptions = sAContextManager.getInternalConfigs().saConfigOptions;
        this.mSAConfigOptions = sAConfigOptions;
        this.mAutoTrack = AppInfoUtils.getAppInfoBundle(sAContextManager.getContext()).getBoolean("com.sensorsdata.analytics.android.AutoTrack", false);
        if (sAConfigOptions.getAutoTrackEventType() != 0) {
            enableAutoTrack(sAConfigOptions.getAutoTrackEventType());
            this.mAutoTrack = true;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void clearLastScreenUrl() {
        if (this.mClearReferrerWhenAppEnd) {
            SAPageTools.setLastScreenUrl(null);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void clearReferrerWhenAppEnd() {
        this.mClearReferrerWhenAppEnd = true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void disableAutoTrack(List<SensorsDataAPI.AutoTrackEventType> list) {
        if (list == null) {
            return;
        }
        try {
            if (this.mSAConfigOptions.getAutoTrackEventType() == 0) {
                return;
            }
            for (SensorsDataAPI.AutoTrackEventType autoTrackEventType : list) {
                if ((this.mSAConfigOptions.getAutoTrackEventType() | autoTrackEventType.eventValue) == this.mSAConfigOptions.getAutoTrackEventType()) {
                    SAConfigOptions sAConfigOptions = this.mSAConfigOptions;
                    sAConfigOptions.setAutoTrackEventType(autoTrackEventType.eventValue ^ sAConfigOptions.getAutoTrackEventType());
                }
            }
            if (this.mSAConfigOptions.getAutoTrackEventType() == 0) {
                this.mAutoTrack = false;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void enableAutoTrack(List<SensorsDataAPI.AutoTrackEventType> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                this.mAutoTrack = true;
                for (SensorsDataAPI.AutoTrackEventType autoTrackEventType : list) {
                    SAConfigOptions sAConfigOptions = this.mSAConfigOptions;
                    sAConfigOptions.setAutoTrackEventType(autoTrackEventType.eventValue | sAConfigOptions.getAutoTrackEventType());
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void enableAutoTrackFragment(Class<?> cls) {
        this.mFragmentAPI.enableAutoTrackFragment(cls);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void enableAutoTrackFragments(List<Class<?>> list) {
        this.mFragmentAPI.enableAutoTrackFragments(list);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public List<Class<?>> getIgnoredViewTypeList() {
        if (this.mIgnoredViewTypeList == null) {
            this.mIgnoredViewTypeList = new ArrayList();
        }
        return this.mIgnoredViewTypeList;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public JSONObject getLastScreenTrackProperties() {
        try {
            JSONObject jSONObjectCloneJsonObject = JSONUtils.cloneJsonObject(SAPageTools.getLastTrackProperties());
            if (jSONObjectCloneJsonObject != null) {
                jSONObjectCloneJsonObject.remove("$lib_method");
            }
            return jSONObjectCloneJsonObject;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return new JSONObject();
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public String getLastScreenUrl() {
        return SAPageTools.getLastScreenUrl();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreAutoTrackActivities(List<Class<?>> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (this.mAutoTrackIgnoredActivities == null) {
            this.mAutoTrackIgnoredActivities = new ArrayList();
        }
        for (Class<?> cls : list) {
            if (cls != null) {
                int iHashCode = cls.hashCode();
                if (!this.mAutoTrackIgnoredActivities.contains(Integer.valueOf(iHashCode))) {
                    this.mAutoTrackIgnoredActivities.add(Integer.valueOf(iHashCode));
                }
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreAutoTrackActivity(Class<?> cls) {
        if (cls == null) {
            return;
        }
        if (this.mAutoTrackIgnoredActivities == null) {
            this.mAutoTrackIgnoredActivities = new ArrayList();
        }
        try {
            int iHashCode = cls.hashCode();
            if (this.mAutoTrackIgnoredActivities.contains(Integer.valueOf(iHashCode))) {
                return;
            }
            this.mAutoTrackIgnoredActivities.add(Integer.valueOf(iHashCode));
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void ignoreAutoTrackFragment(Class<?> cls) {
        this.mFragmentAPI.ignoreAutoTrackFragment(cls);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void ignoreAutoTrackFragments(List<Class<?>> list) {
        this.mFragmentAPI.ignoreAutoTrackFragments(list);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreView(View view, boolean z) {
        if (view != null) {
            view.setTag(R.id.sensors_analytics_tag_view_ignored, z ? "1" : ContentTree.ROOT_ID);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreViewType(Class<?> cls) {
        if (cls == null) {
            return;
        }
        if (this.mIgnoredViewTypeList == null) {
            this.mIgnoredViewTypeList = new ArrayList();
        }
        if (this.mIgnoredViewTypeList.contains(cls)) {
            return;
        }
        this.mIgnoredViewTypeList.add(cls);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isActivityAutoTrackAppClickIgnored(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        List<Integer> list = this.mAutoTrackIgnoredActivities;
        return ((list == null || !list.contains(Integer.valueOf(cls.hashCode()))) && cls.getAnnotation(SensorsDataIgnoreTrackAppViewScreenAndAppClick.class) == null && cls.getAnnotation(SensorsDataIgnoreTrackAppClick.class) == null) ? false : true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isActivityAutoTrackAppViewScreenIgnored(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        List<Integer> list = this.mAutoTrackIgnoredActivities;
        return ((list == null || !list.contains(Integer.valueOf(cls.hashCode()))) && cls.getAnnotation(SensorsDataIgnoreTrackAppViewScreenAndAppClick.class) == null && cls.getAnnotation(SensorsDataIgnoreTrackAppViewScreen.class) == null) ? false : true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEnabled() {
        Boolean boolIsAutoTrackEnabled;
        return (this.mContextManager.getRemoteManager() == null || (boolIsAutoTrackEnabled = this.mContextManager.getRemoteManager().isAutoTrackEnabled()) == null) ? this.mAutoTrack : boolIsAutoTrackEnabled.booleanValue();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEventTypeIgnored(int i2) {
        Boolean boolIsAutoTrackEventTypeIgnored;
        if (this.mContextManager.getRemoteManager() == null || (boolIsAutoTrackEventTypeIgnored = this.mContextManager.getRemoteManager().isAutoTrackEventTypeIgnored(i2)) == null) {
            return (i2 | this.mSAConfigOptions.getAutoTrackEventType()) != this.mSAConfigOptions.getAutoTrackEventType();
        }
        if (boolIsAutoTrackEventTypeIgnored.booleanValue()) {
            SALog.i(TAG, "remote config: " + SensorsDataAPI.AutoTrackEventType.autoTrackEventName(i2) + " is ignored by remote config");
        }
        return boolIsAutoTrackEventTypeIgnored.booleanValue();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public boolean isFragmentAutoTrackAppViewScreen(Class<?> cls) {
        return this.mFragmentAPI.isFragmentAutoTrackAppViewScreen(cls);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public boolean isTrackFragmentAppViewScreenEnabled() {
        return this.mFragmentAPI.isTrackFragmentAppViewScreenEnabled();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void resumeAutoTrackActivities(List<Class<?>> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (this.mAutoTrackIgnoredActivities == null) {
            this.mAutoTrackIgnoredActivities = new ArrayList();
        }
        try {
            for (Class<?> cls : list) {
                if (cls != null) {
                    int iHashCode = cls.hashCode();
                    if (this.mAutoTrackIgnoredActivities.contains(Integer.valueOf(iHashCode))) {
                        this.mAutoTrackIgnoredActivities.remove(Integer.valueOf(iHashCode));
                    } else {
                        continue;
                    }
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void resumeAutoTrackActivity(Class<?> cls) {
        if (cls == null) {
            return;
        }
        if (this.mAutoTrackIgnoredActivities == null) {
            this.mAutoTrackIgnoredActivities = new ArrayList();
        }
        try {
            int iHashCode = cls.hashCode();
            if (this.mAutoTrackIgnoredActivities.contains(Integer.valueOf(iHashCode))) {
                this.mAutoTrackIgnoredActivities.remove(Integer.valueOf(iHashCode));
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void resumeIgnoredAutoTrackFragment(Class<?> cls) {
        this.mFragmentAPI.resumeIgnoredAutoTrackFragment(cls);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void resumeIgnoredAutoTrackFragments(List<Class<?>> list) {
        this.mFragmentAPI.resumeIgnoredAutoTrackFragments(list);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewActivity(View view, Activity activity) {
        if (view == null || activity == null) {
            return;
        }
        try {
            view.setTag(R.id.sensors_analytics_tag_view_activity, activity);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewFragmentName(View view, String str) {
        if (view != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                view.setTag(R.id.sensors_analytics_tag_view_fragment_name2, str);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(Object obj, String str) {
        Class<?> cls;
        Class<AlertDialog> cls2;
        Method method;
        Window window;
        if (obj == null) {
            return;
        }
        try {
            cls = Class.forName("android.support.v7.app.AlertDialog");
        } catch (Exception unused) {
            cls = null;
        }
        try {
            cls2 = AlertDialog.class;
            int i2 = AlertDialog.f809c;
        } catch (Exception unused2) {
            cls2 = null;
        }
        if (cls == null) {
            cls = cls2;
        }
        if (cls == null) {
            return;
        }
        try {
            if (!cls.isInstance(obj) || TextUtils.isEmpty(str) || (method = obj.getClass().getMethod("getWindow", null)) == null || (window = (Window) method.invoke(obj, null)) == null) {
                return;
            }
            window.getDecorView().setTag(R.id.sensors_analytics_tag_view_id, str);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewProperties(View view, JSONObject jSONObject) {
        if (view == null || jSONObject == null) {
            return;
        }
        view.setTag(com.sensorsdata.analytics.android.autotrack.R.id.sensors_analytics_tag_view_properties, jSONObject);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void trackFragmentAppViewScreen() {
        this.mFragmentAPI.trackFragmentAppViewScreen();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewAppClick(final View view, JSONObject jSONObject) {
        if (view == null) {
            return;
        }
        try {
            final JSONObject jSONObjectInjectClickInfo = AopUtil.injectClickInfo(new ViewContext(view), jSONObject != null ? JSONUtils.cloneJsonObject(jSONObject) : new JSONObject(), true);
            if (jSONObjectInjectClickInfo != null) {
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.impl.AutoTrackProtocolIml.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_MERGE_VISUAL_PROPERTIES, jSONObjectInjectClickInfo, view);
                            SACoreHelper.getInstance().trackEvent(new InputData().setEventName("$AppClick").setEventType(EventType.TRACK).setProperties(jSONObjectInjectClickInfo));
                        } catch (Exception e2) {
                            SALog.printStackTrace(e2);
                        }
                    }
                });
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(Object obj) {
        Class<?> cls;
        Class<?> cls2;
        JSONObject trackProperties;
        SensorsDataFragmentTitle sensorsDataFragmentTitle;
        if (obj == null) {
            return;
        }
        Activity activity = null;
        try {
            cls = Class.forName("android.support.v4.app.Fragment");
        } catch (Exception unused) {
            cls = null;
        }
        try {
            cls2 = Class.forName("android.app.Fragment");
        } catch (Exception unused2) {
            cls2 = null;
        }
        if ((cls == null || !cls.isInstance(obj)) && ((cls2 == null || !cls2.isInstance(obj)) && (Fragment.class == 0 || !Fragment.class.isInstance(obj)))) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String canonicalName = obj.getClass().getCanonicalName();
            String strTitle = (!obj.getClass().isAnnotationPresent(SensorsDataFragmentTitle.class) || (sensorsDataFragmentTitle = (SensorsDataFragmentTitle) obj.getClass().getAnnotation(SensorsDataFragmentTitle.class)) == null) ? null : sensorsDataFragmentTitle.title();
            try {
                Method method = obj.getClass().getMethod("getActivity", null);
                if (method != null) {
                    activity = (Activity) method.invoke(obj, null);
                }
            } catch (Exception unused3) {
            }
            if (activity != null) {
                if (TextUtils.isEmpty(strTitle)) {
                    strTitle = SensorsDataUtils.getActivityTitle(activity);
                }
                String str = TimeUtils.YYYY_MM_DD;
                canonicalName = activity.getClass().getCanonicalName() + "|" + canonicalName;
            }
            if (!TextUtils.isEmpty(strTitle)) {
                jSONObject.put("$title", strTitle);
            }
            jSONObject.put("$screen_name", canonicalName);
            if ((obj instanceof ScreenAutoTracker) && (trackProperties = ((ScreenAutoTracker) obj).getTrackProperties()) != null) {
                JSONUtils.mergeJSONObject(trackProperties, jSONObject);
            }
            trackViewScreen(SAPageTools.getScreenUrl(obj), jSONObject);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreView(View view) {
        if (view != null) {
            view.setTag(R.id.sensors_analytics_tag_view_ignored, "1");
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewAppClick(View view) {
        trackViewAppClick(view, null);
    }

    private void enableAutoTrack(int i2) {
        if (i2 <= 0 || i2 > 15) {
            return;
        }
        try {
            this.mAutoTrack = true;
            SAConfigOptions sAConfigOptions = this.mSAConfigOptions;
            sAConfigOptions.setAutoTrackEventType(i2 | sAConfigOptions.getAutoTrackEventType());
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(Dialog dialog, String str) {
        if (dialog != null) {
            try {
                if (TextUtils.isEmpty(str) || dialog.getWindow() == null) {
                    return;
                }
                dialog.getWindow().getDecorView().setTag(R.id.sensors_analytics_tag_view_id, str);
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void disableAutoTrack(SensorsDataAPI.AutoTrackEventType autoTrackEventType) {
        if (autoTrackEventType == null) {
            return;
        }
        try {
            if (this.mSAConfigOptions.getAutoTrackEventType() == 0) {
                return;
            }
            int autoTrackEventType2 = this.mSAConfigOptions.getAutoTrackEventType();
            int i2 = autoTrackEventType.eventValue;
            int i3 = autoTrackEventType2 | i2;
            SAConfigOptions sAConfigOptions = this.mSAConfigOptions;
            if (i3 == i2) {
                sAConfigOptions.setAutoTrackEventType(0);
            } else {
                sAConfigOptions.setAutoTrackEventType(i2 ^ i3);
            }
            if (this.mSAConfigOptions.getAutoTrackEventType() == 0) {
                this.mAutoTrack = false;
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType autoTrackEventType) {
        if (autoTrackEventType == null) {
            return false;
        }
        return isAutoTrackEventTypeIgnored(autoTrackEventType.eventValue);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(View view, String str) {
        if (view == null || TextUtils.isEmpty(str)) {
            return;
        }
        view.setTag(R.id.sensors_analytics_tag_view_id, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            trackViewScreen(SAPageTools.getScreenUrl(activity), SAPageInfoUtils.getActivityPageInfo(activity));
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(final String str, JSONObject jSONObject) {
        try {
            final JSONObject jSONObjectCloneJsonObject = JSONUtils.cloneJsonObject(jSONObject);
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.impl.AutoTrackProtocolIml.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (TextUtils.isEmpty(str) && jSONObjectCloneJsonObject == null) {
                            return;
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        String strOptString = str;
                        JSONObject jSONObject3 = jSONObjectCloneJsonObject;
                        if (jSONObject3 != null) {
                            if (jSONObject3.has("$title")) {
                                SAPageTools.setCurrentTitle(jSONObjectCloneJsonObject.getString("$title"));
                            } else {
                                SAPageTools.setCurrentTitle(null);
                            }
                            if (jSONObjectCloneJsonObject.has("$url")) {
                                strOptString = jSONObjectCloneJsonObject.optString("$url");
                            }
                        }
                        SAPageTools.setCurrentScreenUrl(strOptString);
                        if (SAPageTools.getReferrer() != null) {
                            jSONObject2.put("$referrer", SAPageTools.getReferrer());
                        }
                        jSONObject2.put("$url", SAPageTools.getCurrentScreenUrl());
                        JSONObject jSONObject4 = jSONObjectCloneJsonObject;
                        if (jSONObject4 != null) {
                            JSONUtils.mergeJSONObject(jSONObject4, jSONObject2);
                        }
                        SAPageTools.setCurrentScreenTrackProperties(jSONObject2);
                        SACoreHelper.getInstance().trackEvent(new InputData().setEventName("$AppViewScreen").setEventType(EventType.TRACK).setProperties(jSONObject2));
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                }
            });
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
