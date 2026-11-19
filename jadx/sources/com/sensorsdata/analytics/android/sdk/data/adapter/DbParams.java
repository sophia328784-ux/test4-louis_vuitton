package com.sensorsdata.analytics.android.sdk.data.adapter;

import android.net.Uri;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public class DbParams {
    public static final String APP_EXIT_DATA = "app_exit_data";
    public static final String APP_START_DATA = "app_start_data";
    public static final String DATABASE_NAME = "sensorsdata";
    public static final int DATABASE_VERSION = 6;
    static final String DB_DELETE_ALL = "DB_DELETE_ALL";
    public static final int DB_OUT_OF_MEMORY_ERROR = -2;
    static final int DB_UPDATE_ERROR = -1;
    public static final String GZIP_DATA_ENCRYPT = "9";
    public static final String GZIP_DATA_EVENT = "1";
    public static final String GZIP_TRANSPORT_ENCRYPT = "13";
    public static final String KEY_CHANNEL_EVENT_NAME = "event_name";
    public static final String KEY_CHANNEL_RESULT = "result";
    public static final String KEY_CREATED_AT = "created_at";
    public static final String KEY_DATA = "data";
    public static final String KEY_IS_INSTANT_EVENT = "is_instant_event";
    public static final String PUSH_ID_KEY = "push_key";
    public static final String PUSH_ID_VALUE = "push_value";
    public static final String REMOVE_SP_KEY = "remove_key";
    public static final String TABLE_ACTIVITY_START_COUNT = "activity_started_count";
    public static final String TABLE_APP_START_TIME = "app_start_time";
    public static final String TABLE_CHANNEL_PERSISTENT = "t_channel";
    public static final String TABLE_DATA_DISABLE_SDK = "disable_SDK";
    public static final String TABLE_DATA_ENABLE_SDK = "enable_SDK";
    public static final String TABLE_EVENTS = "events";
    public static final String TABLE_FIRST_PROCESS_START = "first_process_start";
    public static final String TABLE_SESSION_INTERVAL_TIME = "session_interval_time";
    static final String VALUE = "value";
    private static DbParams instance;
    private final Uri mActivityStartCountUri;
    private final Uri mAppExitDataUri;
    private final Uri mAppStartTimeUri;
    private final Uri mChannelPersistentUri;
    private final Uri mDisableSDKUri;
    private final Uri mEnableSDKUri;
    private final Uri mLoginIdKeyUri;
    private final Uri mLoginIdUri;
    private final Uri mPushIdUri;
    private final Uri mRemoteConfigUri;
    private final Uri mSessionTimeUri;
    private final Uri mSubProcessUri;
    private final Uri mUri;
    private final Uri mUserIdentities;

    public interface PersistentName {
        public static final String APP_END_DATA = "app_end_data";
        public static final String DISTINCT_ID = "events_distinct_id";
        public static final String FIRST_DAY = "first_day";
        public static final String FIRST_INSTALL = "first_track_installation";
        public static final String FIRST_INSTALL_CALLBACK = "first_track_installation_with_callback";
        public static final String FIRST_START = "first_start";
        public static final String LOGIN_ID = "events_login_id";
        public static final String PERSISTENT_DAY_DATE = "daily_date";
        public static final String PERSISTENT_LOGIN_ID_KEY = "login_id_key";
        public static final String PERSISTENT_USER_ID = "user_ids";
        public static final String REMOTE_CONFIG = "sensorsdata_sdk_configuration";
        public static final String REQUEST_DEFERRER_DEEPLINK = "request_deferrer_deeplink";
        public static final String SUB_PROCESS_FLUSH_DATA = "sub_process_flush_data";
        public static final String SUPER_PROPERTIES = "super_properties";
        public static final String VISUAL_PROPERTIES = "visual_properties";
    }

    private DbParams(String str) {
        this.mUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/events");
        this.mActivityStartCountUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/activity_started_count");
        this.mAppStartTimeUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/app_start_time");
        this.mAppExitDataUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/app_exit_data");
        this.mSessionTimeUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/session_interval_time");
        this.mLoginIdUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/events_login_id");
        this.mLoginIdKeyUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/login_id_key");
        this.mChannelPersistentUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/t_channel");
        this.mSubProcessUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/sub_process_flush_data");
        this.mEnableSDKUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/enable_SDK");
        this.mDisableSDKUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/disable_SDK");
        this.mRemoteConfigUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/sensorsdata_sdk_configuration");
        this.mUserIdentities = Uri.parse("content://" + str + ".SensorsDataContentProvider/user_ids");
        this.mPushIdUri = Uri.parse("content://" + str + ".SensorsDataContentProvider/push_key");
    }

    public static DbParams getInstance(String str) {
        if (instance == null) {
            instance = new DbParams(str);
        }
        return instance;
    }

    public Uri getActivityStartCountUri() {
        return this.mActivityStartCountUri;
    }

    public Uri getAppExitDataUri() {
        return this.mAppExitDataUri;
    }

    public Uri getAppStartTimeUri() {
        return this.mAppStartTimeUri;
    }

    public Uri getChannelPersistentUri() {
        return this.mChannelPersistentUri;
    }

    public Uri getDisableSDKUri() {
        return this.mDisableSDKUri;
    }

    public Uri getEnableSDKUri() {
        return this.mEnableSDKUri;
    }

    public Uri getEventUri() {
        return this.mUri;
    }

    public Uri getLoginIdKeyUri() {
        return this.mLoginIdKeyUri;
    }

    public Uri getLoginIdUri() {
        return this.mLoginIdUri;
    }

    public Uri getPushIdUri() {
        return this.mPushIdUri;
    }

    public Uri getRemoteConfigUri() {
        return this.mRemoteConfigUri;
    }

    public Uri getSessionTimeUri() {
        return this.mSessionTimeUri;
    }

    public Uri getSubProcessUri() {
        return this.mSubProcessUri;
    }

    public Uri getUserIdentities() {
        return this.mUserIdentities;
    }

    public static DbParams getInstance() {
        DbParams dbParams = instance;
        if (dbParams != null) {
            return dbParams;
        }
        md.k("The static method getInstance(String packageName) should be called before calling getInstance()");
        return null;
    }
}
