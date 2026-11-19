package com.sensorsdata.analytics.android.sdk.remote;

import android.os.CountDownTimer;
import android.os.SystemClock;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.util.Dispatcher;
import java.security.SecureRandom;
import net.rtccloud.sdk.Call;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class SensorsDataRemoteManager extends BaseSensorsDataSDKRemoteManager {
    private static final String SHARED_PREF_REQUEST_TIME = "sensorsdata.request.time";
    private static final String SHARED_PREF_REQUEST_TIME_RANDOM = "sensorsdata.request.time.random";
    private static final String TAG = "SA.SensorsDataRemoteManager";
    private volatile boolean mIsInit;
    private volatile CountDownTimer mPullSDKConfigCountDownTimer;
    private final SAStoreManager mStorageManager;

    /* JADX INFO: renamed from: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType;

        static {
            int[] iArr = new int[BaseSensorsDataSDKRemoteManager.RandomTimeType.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType = iArr;
            try {
                iArr[BaseSensorsDataSDKRemoteManager.RandomTimeType.RandomTimeTypeWrite.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType[BaseSensorsDataSDKRemoteManager.RandomTimeType.RandomTimeTypeClean.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public SensorsDataRemoteManager(SensorsDataAPI sensorsDataAPI, SAContextManager sAContextManager) {
        super(sensorsDataAPI, sAContextManager);
        this.mIsInit = true;
        this.mStorageManager = SAStoreManager.getInstance();
        SALog.i(TAG, "Construct a SensorsDataRemoteManager");
    }

    private void cleanRemoteRequestRandomTime() {
        this.mStorageManager.remove(SHARED_PREF_REQUEST_TIME);
        this.mStorageManager.remove(SHARED_PREF_REQUEST_TIME_RANDOM);
    }

    private boolean isRequestValid() {
        try {
            long jLongValue = this.mStorageManager.getLong(SHARED_PREF_REQUEST_TIME, 0L).longValue();
            int integer = this.mStorageManager.getInteger(SHARED_PREF_REQUEST_TIME_RANDOM, 0);
            if (jLongValue != 0 && integer != 0) {
                float fElapsedRealtime = SystemClock.elapsedRealtime() - jLongValue;
                if (fElapsedRealtime > Call.Parameters.DEFAULT_CAMERA_ZOOM && fElapsedRealtime / 1000.0f < integer * 3600) {
                    return false;
                }
            }
            return true;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pullSDKConfigCount(final boolean z) {
        if (this.mPullSDKConfigCountDownTimer != null) {
            this.mPullSDKConfigCountDownTimer.cancel();
            this.mPullSDKConfigCountDownTimer = null;
        }
        this.mPullSDKConfigCountDownTimer = new CountDownTimer(90000L, 30000L) { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager.2
            @Override // android.os.CountDownTimer
            public void onFinish() {
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                SensorsDataAPI sensorsDataAPI = SensorsDataRemoteManager.this.mSensorsDataAPI;
                if ((sensorsDataAPI == null || sensorsDataAPI.isNetworkRequestEnable()) && !SensorsDataRemoteManager.this.mContextManager.getInternalConfigs().saConfigOptions.isDisableSDK() && (SensorsDataRemoteManager.this.mContextManager.getInternalConfigs().isRemoteConfigEnabled || SensorsDataRemoteManager.this.mContextManager.getInternalConfigs().saConfigOptions.isEnableEncrypt())) {
                    SensorsDataRemoteManager.this.requestRemoteConfig(z, new HttpCallback.StringCallback() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager.2.1
                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onAfter() {
                        }

                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onFailure(int i2, String str) {
                            if (i2 == 304 || i2 == 404) {
                                SensorsDataRemoteManager.this.resetPullSDKConfigTimer();
                            }
                            SALog.i(SensorsDataRemoteManager.TAG, "Remote request failed,responseCode is " + i2 + ",errorMessage is " + str);
                        }

                        @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                        public void onResponse(String str) {
                            SensorsDataRemoteManager.this.resetPullSDKConfigTimer();
                            if (!TextUtils.isEmpty(str)) {
                                SensorsDataSDKRemoteConfig sDKRemoteConfig = SensorsDataRemoteManager.this.toSDKRemoteConfig(str);
                                SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_STORE_SECRET_KEY, str);
                                if (SensorsDataRemoteManager.this.mContextManager.getInternalConfigs().isRemoteConfigEnabled) {
                                    SensorsDataRemoteManager.this.setSDKRemoteConfig(sDKRemoteConfig);
                                }
                            }
                            SALog.i(SensorsDataRemoteManager.TAG, "Remote request was successful,response data is " + str);
                        }
                    });
                } else {
                    SALog.i(SensorsDataRemoteManager.TAG, "Close network request or sdk is disable");
                }
            }
        };
        this.mPullSDKConfigCountDownTimer.start();
    }

    private void writeRemoteRequestRandomTime() {
        SAConfigOptions sAConfigOptions = this.mContextManager.getInternalConfigs().saConfigOptions;
        if (sAConfigOptions == null || !this.mContextManager.getInternalConfigs().isRemoteConfigEnabled) {
            return;
        }
        int minRequestInterval = sAConfigOptions.getMinRequestInterval();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (sAConfigOptions.getMaxRequestInterval() > sAConfigOptions.getMinRequestInterval()) {
            minRequestInterval += new SecureRandom().nextInt((sAConfigOptions.getMaxRequestInterval() - sAConfigOptions.getMinRequestInterval()) + 1);
        }
        this.mStorageManager.setLong(SHARED_PREF_REQUEST_TIME, jElapsedRealtime);
        this.mStorageManager.setInteger(SHARED_PREF_REQUEST_TIME_RANDOM, minRequestInterval);
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void applySDKConfigFromCache() {
        String remoteConfig;
        try {
            if (this.mIsInit) {
                remoteConfig = DbAdapter.getInstance().getRemoteConfigFromLocal();
                this.mIsInit = false;
            } else {
                remoteConfig = DbAdapter.getInstance().getRemoteConfig();
            }
            SensorsDataSDKRemoteConfig sDKRemoteConfig = toSDKRemoteConfig(remoteConfig);
            if (SALog.isLogEnabled()) {
                SALog.i(TAG, "Cache remote config is " + sDKRemoteConfig.toString());
            }
            if (this.mSensorsDataAPI != null) {
                if (sDKRemoteConfig.isDisableDebugMode()) {
                    this.mSensorsDataAPI.setDebugMode(SensorsDataAPI.DebugMode.DEBUG_OFF);
                    SALog.i(TAG, "Set DebugOff Mode");
                }
                if (sDKRemoteConfig.isDisableSDK()) {
                    try {
                        this.mContextManager.getAnalyticsMessages().flush();
                        SALog.i(TAG, "DisableSDK is true");
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                }
            }
            BaseSensorsDataSDKRemoteManager.mSDKRemoteConfig = sDKRemoteConfig;
        } catch (Exception e3) {
            SALog.printStackTrace(e3);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void pullSDKConfigFromServer() {
        SAConfigOptions sAConfigOptions = this.mContextManager.getInternalConfigs().saConfigOptions;
        if (sAConfigOptions == null || sAConfigOptions.isDisableSDK()) {
            return;
        }
        if (this.mContextManager.getInternalConfigs().isRemoteConfigEnabled || this.mContextManager.getInternalConfigs().saConfigOptions.isEnableEncrypt()) {
            if (sAConfigOptions.isDisableRandomTimeRequestRemoteConfig() || sAConfigOptions.getMinRequestInterval() > sAConfigOptions.getMaxRequestInterval()) {
                requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType.RandomTimeTypeClean, true);
                SALog.i(TAG, "remote config: Request remote config because disableRandomTimeRequestRemoteConfig or minHourInterval greater than maxHourInterval");
            } else if (!isSecretKeyValid()) {
                requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType.RandomTimeTypeWrite, false);
                SALog.i(TAG, "remote config: Request remote config because encrypt key is null");
            } else if (isRequestValid()) {
                requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType.RandomTimeTypeWrite, true);
                SALog.i(TAG, "remote config: Request remote config because satisfy the random request condition");
            }
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType randomTimeType, final boolean z) {
        if (this.mDisableDefaultRemoteConfig) {
            SALog.i(TAG, "disableDefaultRemoteConfig is true");
            return;
        }
        int i2 = AnonymousClass4.$SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType[randomTimeType.ordinal()];
        if (i2 == 1) {
            writeRemoteRequestRandomTime();
        } else if (i2 == 2) {
            cleanRemoteRequestRandomTime();
        }
        Dispatcher.getInstance().post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SensorsDataRemoteManager.this.pullSDKConfigCount(z);
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
        });
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void resetPullSDKConfigTimer() {
        try {
            if (this.mPullSDKConfigCountDownTimer != null) {
                this.mPullSDKConfigCountDownTimer.cancel();
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        } finally {
            this.mPullSDKConfigCountDownTimer = null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig) {
        try {
            final JSONObject jSONObject = new JSONObject();
            String string = sensorsDataSDKRemoteConfig.toJson().toString();
            jSONObject.put("$app_remote_config", string);
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManager.3
                @Override // java.lang.Runnable
                public void run() {
                    SensorsDataRemoteManager.this.mContextManager.trackEvent(new InputData().setEventName("$AppRemoteConfigChanged").setProperties(jSONObject).setEventType(EventType.TRACK));
                }
            });
            this.mContextManager.getAnalyticsMessages().flush();
            DbAdapter.getInstance().commitRemoteConfig(string);
            SALog.i(TAG, "Save remote data");
            if (1 == sensorsDataSDKRemoteConfig.getEffectMode()) {
                BaseSensorsDataSDKRemoteManager.mSDKRemoteConfig = sensorsDataSDKRemoteConfig;
                SALog.i(TAG, "The remote configuration takes effect immediately");
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
