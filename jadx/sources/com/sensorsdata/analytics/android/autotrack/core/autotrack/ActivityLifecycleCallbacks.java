package com.sensorsdata.analytics.android.autotrack.core.autotrack;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.autotrack.core.business.SAPageTools;
import com.sensorsdata.analytics.android.autotrack.utils.AopUtil;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.ScreenAutoTracker;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.business.session.SessionRelatedManager;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBus;
import com.sensorsdata.analytics.android.sdk.core.eventbus.SAEventBusConstants;
import com.sensorsdata.analytics.android.sdk.core.eventbus.Subscription;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityLifecycleCallbacks implements SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks, SensorsDataExceptionHandler.SAExceptionListener {
    private static final String EVENT_DURATION = "event_duration";
    private static final String EVENT_TIME = "event_time";
    private static final String TAG = "SA.ActivityLifecycleCallbacks";
    private static final int TIME_INTERVAL = 2000;
    private final SAContextManager mContextManager;
    private Handler mHandler;
    private final SensorsDataAPI mSensorsDataInstance;
    private int mStartActivityCount;
    private long mStartTime;
    private int mStartTimerCount;
    private boolean resumeFromBackground = false;
    private JSONObject activityProperty = new JSONObject();
    private final JSONObject endDataProperty = new JSONObject();
    private JSONObject mDeepLinkProperty = new JSONObject();
    private final String APP_START_TIME = DbParams.TABLE_APP_START_TIME;
    private final String APP_END_DATA = DbParams.PersistentName.APP_END_DATA;
    private final String APP_RESET_STATE = "app_reset_state";
    private final String TIME = "time";
    private final String ELAPSE_TIME = "elapse_time";
    private long messageReceiveTime = 0;
    private final int MESSAGE_CODE_APP_END = 0;
    private final int MESSAGE_CODE_START = 100;
    private final int MESSAGE_CODE_START_DELAY = 101;
    private final int MESSAGE_CODE_STOP = 200;
    private final int MESSAGE_CODE_TIMER = 300;
    private final Set<Integer> hashSet = new HashSet();
    private final DbAdapter mDbAdapter = DbAdapter.getInstance();

    public ActivityLifecycleCallbacks(SAContextManager sAContextManager) {
        this.mSensorsDataInstance = sAContextManager.getSensorsDataAPI();
        this.mContextManager = sAContextManager;
        initHandler();
        registerAdvertObserver();
    }

    private void buildScreenProperties(Activity activity) {
        JSONObject jSONObjectBuildTitleNoAutoTrackerProperties = AopUtil.buildTitleNoAutoTrackerProperties(activity);
        this.activityProperty = jSONObjectBuildTitleNoAutoTrackerProperties;
        JSONUtils.mergeJSONObject(jSONObjectBuildTitleNoAutoTrackerProperties, this.endDataProperty);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateAppEndData(long j2, long j3) {
        try {
            if (this.mStartTime == 0) {
                this.mStartTime = DbAdapter.getInstance().getAppStartTime();
            }
            this.endDataProperty.put(EVENT_DURATION, TimeUtils.duration(this.mStartTime, j3));
            this.endDataProperty.put(DbParams.TABLE_APP_START_TIME, this.mStartTime);
            long j4 = j2 + 2000;
            this.endDataProperty.put(EVENT_TIME, j4);
            if (SensorsDataAPI.getConfigOptions().isEnableSession()) {
                SessionRelatedManager.getInstance().refreshSessionByTimer(j4);
                JSONObject jSONObject = this.endDataProperty;
                SessionRelatedManager.getInstance().getClass();
                jSONObject.put("$event_session_id", SessionRelatedManager.getInstance().getSessionID());
            }
            this.endDataProperty.put("$app_version", AppInfoUtils.getAppVersionName(this.mContextManager.getContext()));
            this.endDataProperty.put("$lib_version", SensorsDataAPI.sharedInstance().getSDKVersion());
            if (!this.endDataProperty.has("$is_first_day")) {
                this.endDataProperty.put("$is_first_day", this.mContextManager.isFirstDay(System.currentTimeMillis()));
            }
            this.mDbAdapter.commitAppExitData(this.endDataProperty.toString());
        } catch (Throwable th) {
            SALog.i(TAG, th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStartedMessage(Message message) {
        try {
            int activityCount = this.mDbAdapter.getActivityCount();
            DbAdapter dbAdapter = this.mDbAdapter;
            int i2 = activityCount + 1;
            this.mStartActivityCount = i2;
            dbAdapter.commitActivityCount(i2);
            if (this.mStartActivityCount == 1) {
                if (SensorsDataAPI.getConfigOptions().isSaveDeepLinkInfo()) {
                    JSONUtils.mergeJSONObject((JSONObject) SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_GET_LATEST_UTM_PROPERTIES, new Object[0]), this.endDataProperty);
                }
                this.mHandler.removeMessages(0);
                if (isSessionTimeOut()) {
                    this.mHandler.sendMessage(obtainAppEndMessage(false));
                    boolean zBooleanValue = PersistentLoader.getInstance().getFirstStartPst().get().booleanValue();
                    Bundle data = message.getData();
                    try {
                        if ((this.mSensorsDataInstance.isAutoTrackEnabled() && !this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_START)) || message.what == 101) {
                            if (zBooleanValue) {
                                PersistentLoader.getInstance().getFirstStartPst().commit(Boolean.FALSE);
                            }
                            final JSONObject jSONObject = new JSONObject();
                            jSONObject.put("$resume_from_background", this.resumeFromBackground);
                            jSONObject.put("$is_first_time", zBooleanValue);
                            JSONUtils.mergeJSONObject(this.activityProperty, jSONObject);
                            JSONObject jSONObject2 = this.mDeepLinkProperty;
                            if (jSONObject2 != null) {
                                JSONUtils.mergeJSONObject(jSONObject2, jSONObject);
                                this.mDeepLinkProperty = null;
                            }
                            long jCurrentTimeMillis = data.getLong("time");
                            if (jCurrentTimeMillis <= 0) {
                                jCurrentTimeMillis = System.currentTimeMillis();
                            }
                            jSONObject.put(EVENT_TIME, jCurrentTimeMillis);
                            if (message.what == 101) {
                                SAStoreManager.getInstance().setString(DbParams.APP_START_DATA, jSONObject.toString());
                            } else {
                                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ActivityLifecycleCallbacks.this.mContextManager.trackEvent(new InputData().setEventName("$AppStart").setProperties(SADataHelper.appendLibMethodAutoTrack(jSONObject)).setEventType(EventType.TRACK));
                                    }
                                });
                                SensorsDataAPI.sharedInstance().flush();
                            }
                        }
                    } catch (Exception e2) {
                        SALog.i(TAG, e2);
                    }
                    updateStartTime(data.getLong("elapse_time"));
                    this.resumeFromBackground = true;
                }
            }
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
            updateStartTime(SystemClock.elapsedRealtime());
        }
        try {
            int i3 = this.mStartTimerCount;
            this.mStartTimerCount = i3 + 1;
            if (i3 != 0 || this.mContextManager.getInternalConfigs().saConfigOptions.isDisableAppEndTimer()) {
                return;
            }
            this.mHandler.sendEmptyMessage(300);
        } catch (Exception e4) {
            SALog.printStackTrace(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStoppedMessage(Message message) {
        try {
            int i2 = this.mStartTimerCount - 1;
            this.mStartTimerCount = i2;
            int i3 = 0;
            if (i2 <= 0) {
                this.mHandler.removeMessages(300);
                this.mStartTimerCount = 0;
            }
            int activityCount = this.mDbAdapter.getActivityCount();
            this.mStartActivityCount = activityCount;
            if (activityCount > 0) {
                i3 = activityCount - 1;
                this.mStartActivityCount = i3;
            }
            this.mStartActivityCount = i3;
            this.mDbAdapter.commitActivityCount(i3);
            if (this.mStartActivityCount <= 0) {
                this.mSensorsDataInstance.flush();
                Bundle data = message.getData();
                generateAppEndData(data.getLong("time"), data.getLong("elapse_time"));
                this.mHandler.sendMessageDelayed(obtainAppEndMessage(true), this.mSensorsDataInstance.getSessionIntervalTime());
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void initHandler() {
        try {
            HandlerThread handlerThread = new HandlerThread("SENSORS_DATA_THREAD");
            handlerThread.start();
            this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i2 = message.what;
                    if (i2 != 0) {
                        if (i2 == 200) {
                            ActivityLifecycleCallbacks.this.handleStoppedMessage(message);
                            return;
                        }
                        if (i2 != 300) {
                            if (i2 == 100 || i2 == 101) {
                                ActivityLifecycleCallbacks.this.handleStartedMessage(message);
                                return;
                            }
                            return;
                        }
                        if (ActivityLifecycleCallbacks.this.mSensorsDataInstance.isAutoTrackEnabled() && ActivityLifecycleCallbacks.this.isAutoTrackAppEnd()) {
                            ActivityLifecycleCallbacks.this.generateAppEndData(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                        }
                        if (ActivityLifecycleCallbacks.this.mStartTimerCount <= 0 || ActivityLifecycleCallbacks.this.mContextManager.getInternalConfigs().saConfigOptions.isDisableAppEndTimer()) {
                            return;
                        }
                        ActivityLifecycleCallbacks.this.mHandler.sendEmptyMessageDelayed(300, 2000L);
                        return;
                    }
                    if (ActivityLifecycleCallbacks.this.messageReceiveTime != 0 && SystemClock.elapsedRealtime() - ActivityLifecycleCallbacks.this.messageReceiveTime < ActivityLifecycleCallbacks.this.mSensorsDataInstance.getSessionIntervalTime()) {
                        SALog.i(ActivityLifecycleCallbacks.TAG, "$AppEnd in time");
                        return;
                    }
                    ActivityLifecycleCallbacks.this.messageReceiveTime = SystemClock.elapsedRealtime();
                    Bundle data = message.getData();
                    String string = data.getString(DbParams.PersistentName.APP_END_DATA);
                    boolean z = data.getBoolean("app_reset_state");
                    ActivityLifecycleCallbacks.this.resumeFromBackground = true;
                    if (!z) {
                        ActivityLifecycleCallbacks.this.trackAppEnd(string);
                        return;
                    }
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_COMMIT_REQUEST_DEFERRED_DEEPLINK, Boolean.FALSE);
                    if (DbAdapter.getInstance().getActivityCount() <= 0) {
                        ActivityLifecycleCallbacks.this.trackAppEnd(string);
                    }
                }
            };
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutoTrackAppEnd() {
        return !this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_END);
    }

    private boolean isSessionTimeOut() {
        long jOptLong;
        Exception e2;
        long jMax = Math.max(System.currentTimeMillis(), 946656000000L);
        long j2 = 0;
        try {
            String appExitData = DbAdapter.getInstance().getAppExitData();
            if (!TextUtils.isEmpty(appExitData)) {
                JSONObject jSONObject = new JSONObject(appExitData);
                jOptLong = jSONObject.optLong(EVENT_TIME) - 2000;
                try {
                    if (this.mStartTime == 0) {
                        updateStartTime(jSONObject.optLong(DbParams.TABLE_APP_START_TIME));
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    SALog.printStackTrace(e2);
                }
                j2 = jOptLong;
            }
        } catch (Exception e4) {
            jOptLong = 0;
            e2 = e4;
        }
        return Math.abs(jMax - j2) > ((long) this.mSensorsDataInstance.getSessionIntervalTime());
    }

    private Message obtainAppEndMessage(boolean z) {
        Message messageObtain = Message.obtain(this.mHandler);
        messageObtain.what = 0;
        Bundle bundle = new Bundle();
        bundle.putString(DbParams.PersistentName.APP_END_DATA, DbAdapter.getInstance().getAppExitData());
        bundle.putBoolean("app_reset_state", z);
        messageObtain.setData(bundle);
        return messageObtain;
    }

    private void registerAdvertObserver() {
        if (SAModuleManager.getInstance().hasModuleByName(Modules.Advert.MODULE_NAME)) {
            SAEventBus.getInstance().register(SAEventBusConstants.Tag.DEEPLINK_LAUNCH, new Subscription<JSONObject>() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.1
                @Override // com.sensorsdata.analytics.android.sdk.core.eventbus.Subscription
                public void notify(JSONObject jSONObject) {
                    SAModuleManager.getInstance().invokeModuleFunction(Modules.Advert.MODULE_NAME, Modules.Advert.METHOD_REMOVE_DEEPLINK_INFO, ActivityLifecycleCallbacks.this.endDataProperty);
                    JSONUtils.mergeJSONObject(jSONObject, ActivityLifecycleCallbacks.this.endDataProperty);
                }
            });
        }
    }

    private void sendActivityHandleMessage(int i2) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        Bundle bundle = new Bundle();
        bundle.putLong("time", System.currentTimeMillis());
        bundle.putLong("elapse_time", SystemClock.elapsedRealtime());
        messageObtainMessage.what = i2;
        messageObtainMessage.setData(bundle);
        this.mHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackAppEnd(String str) {
        try {
            if (this.mSensorsDataInstance.isAutoTrackEnabled() && isAutoTrackAppEnd() && !TextUtils.isEmpty(str)) {
                final JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("track_timer")) {
                    jSONObject.put(EVENT_TIME, jSONObject.optLong("track_timer") + 2000);
                    jSONObject.remove("event_timer");
                    jSONObject.remove("track_timer");
                }
                jSONObject.remove(DbParams.TABLE_APP_START_TIME);
                if (DbAdapter.getInstance().getAppStartTime() == 0) {
                    jSONObject.remove(EVENT_DURATION);
                }
                SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.autotrack.core.autotrack.ActivityLifecycleCallbacks.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivityLifecycleCallbacks.this.mContextManager.trackEvent(new InputData().setEventName("$AppEnd").setProperties(SADataHelper.appendLibMethodAutoTrack(jSONObject)).setEventType(EventType.TRACK));
                    }
                });
                this.mDbAdapter.commitAppExitData("");
                this.mSensorsDataInstance.flush();
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private void updateStartTime(long j2) {
        try {
            try {
                this.mStartTime = j2;
                this.mDbAdapter.commitAppStartTime(j2 > 0 ? j2 : SystemClock.elapsedRealtime());
            } catch (Exception unused) {
                DbAdapter dbAdapter = this.mDbAdapter;
                if (j2 <= 0) {
                    j2 = SystemClock.elapsedRealtime();
                }
                dbAdapter.commitAppStartTime(j2);
            }
        } catch (Exception unused2) {
        }
    }

    public void addActivity(Activity activity) {
        if (activity != null) {
            this.hashSet.add(Integer.valueOf(activity.hashCode()));
        }
    }

    public boolean hasActivity(Activity activity) {
        if (activity != null) {
            return this.hashSet.contains(Integer.valueOf(activity.hashCode()));
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        JSONObject trackProperties;
        try {
            if (SensorsDataDialogUtils.isSchemeActivity(activity)) {
                return;
            }
            buildScreenProperties(activity);
            if (!this.mSensorsDataInstance.isAutoTrackEnabled() || this.mSensorsDataInstance.isActivityAutoTrackAppViewScreenIgnored(activity.getClass()) || this.mSensorsDataInstance.isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType.APP_VIEW_SCREEN)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            JSONUtils.mergeJSONObject(this.activityProperty, jSONObject);
            if ((activity instanceof ScreenAutoTracker) && (trackProperties = ((ScreenAutoTracker) activity).getTrackProperties()) != null) {
                JSONUtils.mergeJSONObject(trackProperties, jSONObject);
            }
            this.mSensorsDataInstance.trackViewScreen(SAPageTools.getScreenUrl(activity), SADataHelper.appendLibMethodAutoTrack(jSONObject));
        } catch (Throwable th) {
            SALog.i(TAG, th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (SensorsDataDialogUtils.isSchemeActivity(activity) || hasActivity(activity)) {
            return;
        }
        if (this.mStartActivityCount == 0) {
            buildScreenProperties(activity);
        }
        sendActivityHandleMessage(100);
        addActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (SensorsDataDialogUtils.isSchemeActivity(activity) || !hasActivity(activity)) {
            return;
        }
        sendActivityHandleMessage(200);
        removeActivity(activity);
    }

    public void onDelayInitStarted(Activity activity) {
        if (SensorsDataDialogUtils.isSchemeActivity(activity) || hasActivity(activity)) {
            return;
        }
        if (this.mStartActivityCount == 0) {
            buildScreenProperties(activity);
        }
        sendActivityHandleMessage(101);
        addActivity(activity);
    }

    @Override // com.sensorsdata.analytics.android.sdk.monitor.SensorsDataActivityLifecycleCallbacks.SAActivityLifecycleCallbacks
    public void onNewIntent(Intent intent) {
    }

    public void removeActivity(Activity activity) {
        if (activity != null) {
            this.hashSet.remove(Integer.valueOf(activity.hashCode()));
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.SAExceptionListener
    public void uncaughtException(Thread thread, Throwable th) {
        if (TextUtils.isEmpty(DbAdapter.getInstance().getAppExitData())) {
            DbAdapter.getInstance().commitAppStartTime(SystemClock.elapsedRealtime());
        }
        if (SensorsDataAPI.getConfigOptions().isMultiProcessFlush()) {
            DbAdapter.getInstance().commitSubProcessFlushState(false);
        }
        DbAdapter.getInstance().commitActivityCount(0);
    }
}
