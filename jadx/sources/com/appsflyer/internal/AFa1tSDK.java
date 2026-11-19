package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.BaseReferrerInitProvider;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.sdk_base.referrer.ReferrerCreator;
import com.appsflyer.sdk_base.referrer.ReferrerKt;
import com.appsflyer.sdk_base.referrer.ReferrerProp;
import com.appsflyer.share.AFAdRevenueData;
import com.appsflyer.share.AFInAppEventParameterName;
import com.appsflyer.share.AFInAppEventType;
import com.appsflyer.share.AFPurchaseDetails;
import com.appsflyer.share.AFPushData;
import com.appsflyer.share.AppsFlyerConsent;
import com.appsflyer.share.AppsFlyerConversionListener;
import com.appsflyer.share.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.share.SessionReadyListener;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import com.appsflyer.share.deeplink.DeepLinkListener;
import com.appsflyer.share.deeplink.DeepLinkResult;
import com.appsflyer.share.platform_extension.PluginInfo;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFa1tSDK extends AppsFlyerLib {
    private static AFa1tSDK d = new AFa1tSDK();
    public static final String registerClient = "7.0";
    public static final String unregisterClient = "386";
    public final AFc1aSDK AFKeystoreWrapper;
    private AFb1hSDK AFLogger;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AFf1mSDK f22604e;
    private Map<Long, String> w;

    public AFa1tSDK() {
        AFc1aSDK aFc1aSDK = new AFc1aSDK();
        this.AFKeystoreWrapper = aFc1aSDK;
        aFc1aSDK.setDebugLog().AFLogger();
        aFc1aSDK.setDebugLog().AFKeystoreWrapper();
    }

    private void AFKeystoreWrapper(AppsFlyerRequestListener appsFlyerRequestListener) {
        AFh1fSDK aFh1fSDK = new AFh1fSDK();
        AFc1eSDK androidIdData = this.AFKeystoreWrapper.setAndroidIdData();
        aFh1fSDK.f22653e = androidIdData.setUserLastName;
        aFh1fSDK.afInfoLog = androidIdData.clearUserPii;
        aFh1fSDK.AFLogger = appsFlyerRequestListener;
        this.AFKeystoreWrapper.w().d(aFh1fSDK);
        androidIdData.setUserLastName = null;
        androidIdData.clearUserPii = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AFLogger() {
        AFi1oSDK imeiData;
        try {
            Context context = this.AFKeystoreWrapper.valueOf().d;
            if (AFj1qSDK.AFLogger(context) && AFj1qSDK.unregisterClient(context)) {
                final AFi1oSDK imeiData2 = this.AFKeystoreWrapper.setImeiData();
                if (imeiData2 != null) {
                    imeiData2.AFKeystoreWrapper(new AFi1kSDK() { // from class: com.appsflyer.internal.e
                        @Override // com.appsflyer.internal.AFi1kSDK
                        public final void onRequestFinished() {
                            this.f22679a.d(imeiData2);
                        }
                    });
                    return;
                }
                return;
            }
            if (AFj1qSDK.unregisterClient(context) || (imeiData = this.AFKeystoreWrapper.setImeiData()) == null) {
                return;
            }
            d(imeiData);
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.PLAY_INTEGRITY_API;
            aFLogger.e(logTag, "Failed to request Play Integrity API token", th, false, false);
            aFLogger.v(logTag, "Play Integrity API token request exception: ".concat(String.valueOf(th)));
        }
    }

    private static void d(String str) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.SDK_LIFECYCLE;
        StringBuilder sb = new StringBuilder("WARNING: AppsFlyer SDK is not initialized! The API call '");
        sb.append(str);
        sb.append("()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
        aFLogger.w(logTag, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit registerClient() {
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            d("finishSdkSession");
        } else if (this.AFKeystoreWrapper.setAndroidIdData().setUserPhone) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            aFLogger.i(LogTag.SDK_LIFECYCLE, "Finishing AppsFlyer session");
            this.AFKeystoreWrapper.setUserPhone().registerClient();
            this.AFKeystoreWrapper.afInfoLog().AFKeystoreWrapper();
            if (this.AFKeystoreWrapper.getEntries() != null) {
                this.AFKeystoreWrapper.getEntries().sendExceptionsToServerIfNeeded();
            }
            if (this.AFKeystoreWrapper.AFLoggerLogLevel().i()) {
                this.AFKeystoreWrapper.AFLoggerLogLevel().d();
                Context context = this.AFKeystoreWrapper.valueOf().d;
                if (context != null && !AppsFlyerLib.getInstance().isStopped()) {
                    this.AFKeystoreWrapper.AFLoggerLogLevel().v_(context.getPackageName(), context.getPackageManager());
                }
                this.AFKeystoreWrapper.AFLoggerLogLevel().unregisterClient();
            } else {
                aFLogger.d(LogTag.PROXY, "RD status is OFF");
            }
            AFh1sSDK userLastName = this.AFKeystoreWrapper.setUserLastName();
            if (userLastName != null) {
                userLastName.AFLogger();
            }
            this.AFKeystoreWrapper.setAndroidIdData().setUserPhone = false;
        } else {
            AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "ERROR: AppsFlyer SDK session not started. Skipping session finish.");
        }
        return Unit.f71739a;
    }

    private void unregisterClient(AppsFlyerRequestListener appsFlyerRequestListener) {
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            d("start");
            return;
        }
        if (!this.AFKeystoreWrapper.setAppInviteOneLink().AFLogger()) {
            AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "WARNING: SessionReadyListener is not registered! You must call 'registerSessionReadyListener(SessionReadyListener)' before calling 'start()'. The listener ensures that all required data (e.g., deeplink parameters) is available before session initialization.");
            return;
        }
        if (this.AFKeystoreWrapper.setAndroidIdData().setUserPhone) {
            AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "AppsFlyer SDK session already started. Skipping duplicate start call.");
            return;
        }
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("start", new String[0]);
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.SDK_LIFECYCLE;
        Locale locale = Locale.US;
        String str = unregisterClient;
        aFLogger.i(logTag, "Starting AppsFlyer: (v7.0.1." + str + ")");
        StringBuilder sb = new StringBuilder("Build Number: ");
        sb.append(str);
        aFLogger.i(logTag, sb.toString());
        this.AFKeystoreWrapper.getSdkVersion().unregisterClient();
        AFh1sSDK userLastName = this.AFKeystoreWrapper.setUserLastName();
        if (userLastName != null) {
            userLastName.d();
        }
        this.AFKeystoreWrapper.setAndroidIdData().setUserPhone = true;
        AFKeystoreWrapper(appsFlyerRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        if (this.AFKeystoreWrapper.setUserEmail().AFLogger()) {
            this.AFKeystoreWrapper.setUserEmail().unregisterClient();
        }
        AFi1vSDK aFc1bSDK = this.AFKeystoreWrapper.getInstance();
        aFc1bSDK.d = Build.VERSION.SDK_INT >= 31 ? new AFi1sSDK(aFc1bSDK.AFLogger) : new AFi1wSDK(aFc1bSDK.AFLogger);
        this.AFKeystoreWrapper.AppsFlyerLib().d(this.AFKeystoreWrapper.AFLogger());
        AFh1xSDK aFh1xSDKE = this.AFKeystoreWrapper.e();
        aFh1xSDKE.f22658i = System.currentTimeMillis();
        int iAFLogger = aFh1xSDKE.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0);
        if (iAFLogger == 1 && aFh1xSDKE.AFKeystoreWrapper.registerClient("first_launch")) {
            aFh1xSDKE.d.putAll(aFh1xSDKE.AFLogger("first_launch"));
        }
        if (iAFLogger > 0 && aFh1xSDKE.AFKeystoreWrapper.registerClient("gcd")) {
            aFh1xSDKE.AFLogger.putAll(aFh1xSDKE.AFLogger("gcd"));
        }
        aFh1xSDKE.afInfoLog = aFh1xSDKE.AFKeystoreWrapper.unregisterClient("prev_session_dur", 0L);
        this.AFKeystoreWrapper.i().AFKeystoreWrapper(AFKeystoreWrapper());
        this.AFKeystoreWrapper.values().d();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void addPushNotificationDeepLinkPath(String... strArr) {
        List<String> listAsList = Arrays.asList(strArr);
        List<List<String>> list = this.AFKeystoreWrapper.enableTCFDataCollection().registerClient;
        if (list.contains(listAsList)) {
            return;
        }
        list.add(listAsList);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void anonymizeUser(boolean z) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("anonymizeUser", String.valueOf(z));
        this.AFKeystoreWrapper.setAndroidIdData().afInfoLog = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void appendParametersToDeepLinkingURL(String str, Map<String, String> map) {
        AFa1qSDK aFa1qSDKEnableTCFDataCollection = this.AFKeystoreWrapper.enableTCFDataCollection();
        aFa1qSDKEnableTCFDataCollection.AFLogger = str;
        aFa1qSDKEnableTCFDataCollection.d = map;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void clearUserPii() {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("clearUserPii", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "clearUserPii");
        AFc1eSDK androidIdData = this.AFKeystoreWrapper.setAndroidIdData();
        androidIdData.AFLogger = null;
        androidIdData.d = null;
        androidIdData.registerClient = null;
        androidIdData.AFKeystoreWrapper = null;
        androidIdData.f22607e = null;
        androidIdData.f22608i = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void collectDataFromLauncherActivity(Activity activity) {
        AFi1tSDK aFi1tSDKStop = this.AFKeystoreWrapper.stop();
        this.AFKeystoreWrapper.setAndroidIdData().setUserLastName = aFi1tSDKStop.registerClient(activity);
        this.AFKeystoreWrapper.setAndroidIdData().clearUserPii = aFi1tSDKStop.AFLogger(activity);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void disableAppSetId() {
        this.AFKeystoreWrapper.setAndroidIdData().setCustomerUserId = true;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableFacebookDeferredApplinks(boolean z) {
        this.AFKeystoreWrapper.getSdkVersion().AFLogger(z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableTCFDataCollection(boolean z) {
        this.AFKeystoreWrapper.setAndroidIdData().afDebugLog = Boolean.valueOf(z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAppsFlyerUID(Context context) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("getAppsFlyerUID", new String[0]);
        if (context == null) {
            return null;
        }
        this.AFKeystoreWrapper.d.d = context.getApplicationContext();
        return AFb1jSDK.AFLogger(this.AFKeystoreWrapper.AFLogger().AFKeystoreWrapper);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAttributionId(Context context) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        return this.AFKeystoreWrapper.AFLogger().registerClient(context);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostName() {
        return this.AFKeystoreWrapper.getLevel().d();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostPrefix() {
        return this.AFKeystoreWrapper.getLevel().registerClient();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getOutOfStore(Context context) {
        String strAFLogger;
        String str = this.AFKeystoreWrapper.setAndroidIdData().getLevel;
        if (str != null) {
            return str;
        }
        if (context == null) {
            strAFLogger = null;
        } else {
            this.AFKeystoreWrapper.d.d = context.getApplicationContext();
            strAFLogger = this.AFKeystoreWrapper.AFLogger().AFLogger("AF_STORE");
        }
        if (strAFLogger != null) {
            return strAFLogger;
        }
        AFLogger.INSTANCE.i(LogTag.GENERAL, "Out-of-store value not configured via API or manifest");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getSdkVersion() {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("getSdkVersion", new String[0]);
        return AFc1iSDK.d();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, Context context) {
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            if (TextUtils.isEmpty(str)) {
                AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "WARNING: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key in the 'init' API method (should be called on Application's onCreate)");
                return this;
            }
            if (context == null) {
                AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "ERROR: AppsFlyer SDK requires a valid Context! Ensure 'init' is called with a non-null Context, typically from Application's onCreate.");
                return this;
            }
            this.AFKeystoreWrapper.AppsFlyerLib().d(str);
            this.AFKeystoreWrapper.d.d = context.getApplicationContext();
            final int i2 = 1;
            this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName = true;
            Application applicationX_ = AFj1qSDK.X_(context);
            if (applicationX_ != null) {
                AFa1zSDK.INSTANCE.AFLogger(context);
                final int i3 = 0;
                this.AFKeystoreWrapper.d().execute(new Runnable(this) { // from class: com.appsflyer.internal.b

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ AFa1tSDK f22676c;

                    {
                        this.f22676c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        AFa1tSDK aFa1tSDK = this.f22676c;
                        switch (i4) {
                            case 0:
                                aFa1tSDK.v();
                                break;
                            case 1:
                                aFa1tSDK.AFLogger();
                                break;
                            default:
                                aFa1tSDK.unregisterClient();
                                break;
                        }
                    }
                });
                AFc1iSDK aFc1iSDKAFLogger = this.AFKeystoreWrapper.AFLogger();
                AFf1fSDK aFf1fSDKAppsFlyerLib = this.AFKeystoreWrapper.AppsFlyerLib();
                aFc1iSDKAFLogger.getClass();
                aFf1fSDKAppsFlyerLib.getClass();
                if (aFc1iSDKAFLogger.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 0 && !aFf1fSDKAppsFlyerLib.AFLogger()) {
                    this.AFKeystoreWrapper.d().execute(new Runnable(this) { // from class: com.appsflyer.internal.b

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ AFa1tSDK f22676c;

                        {
                            this.f22676c = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            int i4 = i2;
                            AFa1tSDK aFa1tSDK = this.f22676c;
                            switch (i4) {
                                case 0:
                                    aFa1tSDK.v();
                                    break;
                                case 1:
                                    aFa1tSDK.AFLogger();
                                    break;
                                default:
                                    aFa1tSDK.unregisterClient();
                                    break;
                            }
                        }
                    });
                }
                AFe1wSDK aFe1wSDKAfWarnLog = this.AFKeystoreWrapper.afWarnLog();
                AFe1vSDK customerUserId = this.AFKeystoreWrapper.setCustomerUserId();
                customerUserId.getClass();
                aFe1wSDKAfWarnLog.unregisterClient.add(customerUserId);
                this.AFKeystoreWrapper.afWarnLog().d(new AFe1iSDK(this.AFKeystoreWrapper));
                if (this.AFKeystoreWrapper.getEntries() != null) {
                    this.AFKeystoreWrapper.getEntries().init(new c());
                }
                AFi1aSDK aFi1aSDKAfDebugLog = this.AFKeystoreWrapper.afDebugLog();
                final int i4 = 2;
                Runnable runnable = new Runnable(this) { // from class: com.appsflyer.internal.b

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ AFa1tSDK f22676c;

                    {
                        this.f22676c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = i4;
                        AFa1tSDK aFa1tSDK = this.f22676c;
                        switch (i5) {
                            case 0:
                                aFa1tSDK.v();
                                break;
                            case 1:
                                aFa1tSDK.AFLogger();
                                break;
                            default:
                                aFa1tSDK.unregisterClient();
                                break;
                        }
                    }
                };
                if (aFi1aSDKAfDebugLog.AFKeystoreWrapper.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) > 0) {
                    AFLogger.INSTANCE.d(LogTag.REFERRER, "Referrers collection disallowed by counter.");
                } else {
                    AFi1gSDK aFi1gSDKD = aFi1aSDKAfDebugLog.d(runnable);
                    ReferrerProp referrerProp = new ReferrerProp(aFi1aSDKAfDebugLog.unregisterClient(aFi1gSDKD, runnable), aFi1aSDKAfDebugLog.AFKeystoreWrapper.afErrorLog(), aFi1aSDKAfDebugLog.AFKeystoreWrapper.d());
                    aFi1aSDKAfDebugLog.unregisterClient.add(aFi1gSDKD);
                    aFi1aSDKAfDebugLog.unregisterClient.add(new AFi1bSDK(referrerProp));
                    aFi1aSDKAfDebugLog.unregisterClient(referrerProp);
                    aFi1aSDKAfDebugLog.unregisterClient.addAll(aFi1aSDKAfDebugLog.d.AFKeystoreWrapper(referrerProp));
                    Iterator<Pair<ReferrerCreator<Referrer>, Class<? extends BaseReferrerInitProvider>>> it = Referrer.getExternalReferrers().iterator();
                    while (it.hasNext()) {
                        ReferrerKt.disableInitProvider((Class) it.next().f71706c, aFi1aSDKAfDebugLog.AFKeystoreWrapper.valueOf().d, aFi1aSDKAfDebugLog.AFKeystoreWrapper.afErrorLog());
                    }
                    for (Referrer referrer : (Referrer[]) aFi1aSDKAfDebugLog.unregisterClient.toArray(new Referrer[0])) {
                        referrer.start(aFi1aSDKAfDebugLog.AFKeystoreWrapper.valueOf().d);
                    }
                    String strAFLogger = aFi1aSDKAfDebugLog.AFKeystoreWrapper.AFLogger().AFLogger("AF_PREINSTALL_DISABLED");
                    if (!(strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : false)) {
                        aFi1aSDKAfDebugLog.unregisterClient(aFi1aSDKAfDebugLog.AFKeystoreWrapper.valueOf().d, referrerProp, aFi1aSDKAfDebugLog.AFKeystoreWrapper);
                    }
                }
                if (this.AFLogger == null) {
                    this.AFLogger = new AFb1hSDK(this.AFKeystoreWrapper, new d(this, i3), AFKeystoreWrapper(), this.AFKeystoreWrapper.setUserLastName());
                    this.AFKeystoreWrapper.updateServerUninstallToken().unregisterClient(context, this.AFLogger);
                }
                Context baseContext = applicationX_.getBaseContext();
                try {
                    ApplicationInfo applicationInfo = this.AFKeystoreWrapper.AFLogger().r_().applicationInfo;
                    if (applicationInfo != null && (applicationInfo.flags & 32768) != 0) {
                        if (Build.VERSION.SDK_INT >= 31) {
                            if (baseContext.getResources().getIdentifier("appsflyer_data_extraction_rules", "xml", baseContext.getPackageName()) != 0) {
                                AFLogger.INSTANCE.i(LogTag.GENERAL, "appsflyer_data_extraction_rules.xml detected, using AppsFlyer data extraction rules for AppsFlyer SDK data");
                            } else {
                                AFLogger.INSTANCE.w(LogTag.GENERAL, "'allowBackup' is set to true; appsflyer_data_extraction_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <data-extraction-rules> both in <device-transfer> and <cloud-backup>.\nIf Appsflyer's Purchase Connector is in use then you also must add to <device-transfer> and <cloud-backup> the following excludes: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>");
                            }
                        } else if (baseContext.getResources().getIdentifier("appsflyer_backup_rules", "xml", baseContext.getPackageName()) != 0) {
                            AFLogger.INSTANCE.i(LogTag.GENERAL, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data");
                        } else {
                            AFLogger.INSTANCE.w(LogTag.GENERAL, "'allowBackup' is set to true; appsflyer_backup_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules.\nIf Appsflyer's Purchase Connector is in use then you also must add the following to your rules: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>");
                        }
                    }
                } catch (Throwable th) {
                    AFLogger.INSTANCE.e(LogTag.GENERAL, "Exception while checking BackupRules: ", th);
                }
                this.AFKeystoreWrapper.registerClient().loadProperties();
                this.AFKeystoreWrapper.AFLoggerLogLevel().d("init", str, appsFlyerConversionListener == null ? "null" : "conversionDataListener");
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.GENERAL;
                Locale locale = Locale.US;
                aFLogger.force(logTag, "Initializing AppsFlyer SDK: (v7.0.1." + unregisterClient + ")");
                this.AFKeystoreWrapper.registerClient(appsFlyerConversionListener);
                return this;
            }
        }
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isPreInstalledApp(Context context) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        return this.AFKeystoreWrapper.AFLogger().AFKeystoreWrapper(context);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isSessionReady() {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("isSessionReady", new String[0]);
        return this.AFKeystoreWrapper.setAppInviteOneLink().AFKeystoreWrapper();
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final boolean isStopped() {
        return this.AFKeystoreWrapper.AppsFlyerLib().AFLogger();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logAdRevenue(AFAdRevenueData aFAdRevenueData, Map<String, Object> map) {
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            d("logAdRevenue");
            return;
        }
        if (!aFAdRevenueData.areAllFieldsValid()) {
            AFLogger.INSTANCE.w(LogTag.AD_REVENUE, "Invalid ad revenue parameters provided");
            return;
        }
        if (this.AFKeystoreWrapper.AppsFlyerLib().AFLogger()) {
            AFLogger.INSTANCE.w(LogTag.AD_REVENUE, "SDK is stopped");
            return;
        }
        AFf1fSDK aFf1fSDKAppsFlyerLib = this.AFKeystoreWrapper.AppsFlyerLib();
        String str = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDKAppsFlyerLib}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDKAppsFlyerLib));
        if (str == null || str.length() == 0) {
            AFLogger.INSTANCE.w(LogTag.SDK_LIFECYCLE, "WARNING: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key in the 'init' API method (should be called on Application's onCreate)");
        } else {
            this.AFKeystoreWrapper.w().d(new AFh1lSDK(aFAdRevenueData, map));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        HashMap map2 = map == null ? null : new HashMap(map);
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        AFh1jSDK aFh1jSDK = new AFh1jSDK();
        aFh1jSDK.v = str;
        aFh1jSDK.AFLogger = appsFlyerRequestListener;
        if (map2 != null && map2.containsKey(AFInAppEventParameterName.TOUCH_OBJ)) {
            HashMap map3 = new HashMap();
            Object obj = map2.get(AFInAppEventParameterName.TOUCH_OBJ);
            if (obj instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) obj;
                HashMap map4 = new HashMap();
                map4.put("x", Float.valueOf(motionEvent.getX()));
                map4.put("y", Float.valueOf(motionEvent.getY()));
                map3.put("loc", map4);
                map3.put("pf", Float.valueOf(motionEvent.getPressure()));
                map3.put("rad", Float.valueOf(motionEvent.getTouchMajor() / 2.0f));
            } else {
                map3.put("error", "Parsing failed due to invalid input in 'af_touch_obj'.");
                AFLogger.INSTANCE.w(LogTag.PREDICT, "Parsing failed due to invalid input in 'af_touch_obj'.");
            }
            Map<String, ?> mapSingletonMap = Collections.singletonMap("tch_data", map3);
            map2.remove(AFInAppEventParameterName.TOUCH_OBJ);
            aFh1jSDK.AFKeystoreWrapper(mapSingletonMap);
        }
        aFh1jSDK.AFKeystoreWrapper = map2;
        AFd1uSDK aFd1uSDKAFLoggerLogLevel = this.AFKeystoreWrapper.AFLoggerLogLevel();
        Map map5 = aFh1jSDK.AFKeystoreWrapper;
        if (map5 == null) {
            map5 = new HashMap();
        }
        aFd1uSDKAFLoggerLogLevel.d("logEvent", str, new JSONObject(map5).toString());
        if (str == null) {
            AFh1uSDK aFh1uSDK = AFh1uSDK.logEvent;
            AFc1aSDK aFc1aSDK2 = this.AFKeystoreWrapper;
            if (context != null) {
                aFc1aSDK2.d.d = context.getApplicationContext();
            }
            AFh1xSDK aFh1xSDKE = this.AFKeystoreWrapper.e();
            aFh1xSDKE.unregisterClient(aFh1uSDK);
            aFh1xSDKE.AFLogger();
        }
        this.AFKeystoreWrapper.w().d(aFh1jSDK);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logLocation(Context context, double d2, double d3) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("logLocation", String.valueOf(d2), String.valueOf(d3));
        HashMap map = new HashMap();
        map.put(AFInAppEventParameterName.LONGITUDE, Double.toString(d3));
        map.put(AFInAppEventParameterName.LATITUDE, Double.toString(d2));
        AFh1jSDK aFh1jSDK = new AFh1jSDK();
        aFh1jSDK.v = AFInAppEventType.LOCATION_COORDINATES;
        aFh1jSDK.AFKeystoreWrapper = map;
        this.AFKeystoreWrapper.w().d(aFh1jSDK);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logSession(Context context) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("logSession", new String[0]);
        this.AFKeystoreWrapper.AFLoggerLogLevel().AFKeystoreWrapper();
        AFh1uSDK aFh1uSDK = AFh1uSDK.logSession;
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        AFh1xSDK aFh1xSDKE = this.AFKeystoreWrapper.e();
        aFh1xSDKE.unregisterClient(aFh1uSDK);
        aFh1xSDKE.AFLogger();
        AFh1jSDK aFh1jSDK = new AFh1jSDK();
        aFh1jSDK.v = null;
        aFh1jSDK.AFKeystoreWrapper = null;
        this.AFKeystoreWrapper.w().d(aFh1jSDK);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void onPause(Context context) {
        this.AFKeystoreWrapper.updateServerUninstallToken().AFKeystoreWrapper();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void performDeepLinking(String str, boolean z) {
        AFa1kSDK aFa1kSDKUnregisterClient;
        if (str == null || str.length() == 0) {
            this.AFKeystoreWrapper.enableTCFDataCollection().d("performDeepLinking was called with null or empty url", DeepLinkResult.Error.DEVELOPER_ERROR);
            return;
        }
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            d("performDeepLinking");
            return;
        }
        if (z) {
            this.AFKeystoreWrapper.setUserPhone().registerClient();
            aFa1kSDKUnregisterClient = AFa1kSDK.unregisterClient(this.AFKeystoreWrapper.setUserPhone());
        } else {
            aFa1kSDKUnregisterClient = AFa1kSDK.unregisterClient(new HashMap());
        }
        this.AFKeystoreWrapper.enableTCFDataCollection().c_(aFa1kSDKUnregisterClient, Uri.parse(str));
        if (z) {
            this.AFKeystoreWrapper.w().d(new AFh1fSDK().unregisterClient());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerConversionListener(AppsFlyerConversionListener appsFlyerConversionListener) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("registerConversionListener", new String[0]);
        this.AFKeystoreWrapper.registerClient(appsFlyerConversionListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerSessionReadyListener(SessionReadyListener sessionReadyListener) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("registerSessionReadyListener", "listener");
        this.AFKeystoreWrapper.setAppInviteOneLink().d(sessionReadyListener);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendInAppPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        PurchaseHandler purchaseHandlerV = this.AFKeystoreWrapper.v();
        if (purchaseHandlerV.registerClient(map, purchaseValidationCallback, "purchases")) {
            purchaseHandlerV.unregisterClient.d(new AFe1gSDK(map, purchaseValidationCallback, purchaseHandlerV.AFKeystoreWrapper));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        PurchaseHandler purchaseHandlerV = this.AFKeystoreWrapper.v();
        if (purchaseHandlerV.registerClient(map, purchaseValidationCallback, "subscriptions")) {
            purchaseHandlerV.unregisterClient.d(new AFe1tSDK(map, purchaseValidationCallback, purchaseHandlerV.AFKeystoreWrapper));
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x015f  */
    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPushNotificationData(Activity activity) {
        long j2;
        long jLongValue;
        if (activity == null || activity.getIntent() == null) {
            AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
            if (activity != null) {
                aFc1aSDK.AFLoggerLogLevel().d("sendPushNotificationData", activity.getLocalClassName(), "activity_intent_null");
            } else {
                aFc1aSDK.AFLoggerLogLevel().d("sendPushNotificationData", "activity_null");
            }
        } else {
            AFd1uSDK aFd1uSDKAFLoggerLogLevel = this.AFKeystoreWrapper.AFLoggerLogLevel();
            String localClassName = activity.getLocalClassName();
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            aFd1uSDKAFLoggerLogLevel.d("sendPushNotificationData", localClassName, sb.toString());
        }
        AFc1eSDK androidIdData = this.AFKeystoreWrapper.setAndroidIdData();
        String strRegisterClient = registerClient(activity);
        androidIdData.unregisterClient = strRegisterClient;
        if (strRegisterClient != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.w == null) {
                AFLogger.INSTANCE.i(LogTag.ENGAGEMENT, "Initializing push notification history cache");
                this.w = new ConcurrentHashMap();
                jLongValue = jCurrentTimeMillis;
                j2 = jLongValue;
            } else {
                try {
                    long jUnregisterClient = this.AFKeystoreWrapper.AFLogger().unregisterClient("AF_PUSH_PAYLOAD_MAX_AGING_MILLIS", 1800000L);
                    jLongValue = jCurrentTimeMillis;
                    for (Long l : this.w.keySet()) {
                        try {
                            JSONObject jSONObject = new JSONObject(androidIdData.unregisterClient);
                            JSONObject jSONObject2 = new JSONObject(this.w.get(l));
                            j2 = jCurrentTimeMillis;
                            try {
                                if (jSONObject.opt(com.networkbench.nbslens.nbsnativecrashlib.m.q).equals(jSONObject2.opt(com.networkbench.nbslens.nbsnativecrashlib.m.q)) && jSONObject.opt("c").equals(jSONObject2.opt("c"))) {
                                    AFLogger aFLogger = AFLogger.INSTANCE;
                                    LogTag logTag = LogTag.ENGAGEMENT;
                                    StringBuilder sb2 = new StringBuilder("Push notification already processed: duplicate PID and campaign detected (old: ");
                                    sb2.append(jSONObject2);
                                    sb2.append(", new: ");
                                    sb2.append(jSONObject);
                                    sb2.append(")");
                                    aFLogger.i(logTag, sb2.toString());
                                    androidIdData.unregisterClient = null;
                                    return;
                                }
                                if (j2 - l.longValue() > jUnregisterClient) {
                                    this.w.remove(l);
                                }
                                if (l.longValue() <= jLongValue) {
                                    jLongValue = l.longValue();
                                }
                                jCurrentTimeMillis = j2;
                            } catch (Throwable th) {
                                th = th;
                                AFLogger.INSTANCE.e(LogTag.ENGAGEMENT, "Error while handling push notification measurement: ".concat(th.getClass().getSimpleName()), th);
                                if (this.w.size() == this.AFKeystoreWrapper.AFLogger().unregisterClient("AF_PUSH_PAYLOAD_HISTORY_SIZE", 2L)) {
                                    AFLogger aFLogger2 = AFLogger.INSTANCE;
                                    LogTag logTag2 = LogTag.ENGAGEMENT;
                                    StringBuilder sb3 = new StringBuilder("Push history limit reached, removing oldest entry (timestamp: ");
                                    sb3.append(jLongValue);
                                    sb3.append(")");
                                    aFLogger2.i(logTag2, sb3.toString());
                                    this.w.remove(Long.valueOf(jLongValue));
                                }
                                this.w.put(Long.valueOf(j2), androidIdData.unregisterClient);
                                start();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            j2 = jCurrentTimeMillis;
                        }
                    }
                    j2 = jCurrentTimeMillis;
                } catch (Throwable th3) {
                    th = th3;
                    j2 = jCurrentTimeMillis;
                    jLongValue = j2;
                }
            }
            if (this.w.size() == this.AFKeystoreWrapper.AFLogger().unregisterClient("AF_PUSH_PAYLOAD_HISTORY_SIZE", 2L)) {
                AFLogger aFLogger3 = AFLogger.INSTANCE;
                LogTag logTag3 = LogTag.ENGAGEMENT;
                StringBuilder sb4 = new StringBuilder("Push history limit reached, removing oldest entry (timestamp: ");
                sb4.append(jLongValue);
                sb4.append(")");
                aFLogger3.i(logTag3, sb4.toString());
                this.w.remove(Long.valueOf(jLongValue));
            }
            this.w.put(Long.valueOf(j2), androidIdData.unregisterClient);
            start();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAdditionalData(Map<String, Object> map) {
        if (map != null) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().d("setAdditionalData", map.toString());
            JSONObject jSONObject = new JSONObject(map);
            this.AFKeystoreWrapper.setAndroidIdData().getSdkVersion = jSONObject.toString();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAndroidIdData(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setAndroidIdData", str);
        this.AFKeystoreWrapper.setAndroidIdData().force = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppId(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setAppId", str);
        this.AFKeystoreWrapper.setAndroidIdData().values = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppInviteOneLink(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setAppInviteOneLink", str);
        AFLogger.INSTANCE.i(LogTag.SDK_SETTERS, "setAppInviteOneLink = ".concat(String.valueOf(str)));
        if (str == null || !str.equals(this.AFKeystoreWrapper.setAndroidIdData().AppsFlyerLib)) {
            AppsFlyerProperties appsFlyerPropertiesRegisterClient = this.AFKeystoreWrapper.registerClient();
            appsFlyerPropertiesRegisterClient.remove(AppsFlyerProperties.ONELINK_DOMAIN);
            appsFlyerPropertiesRegisterClient.remove(AppsFlyerProperties.ONELINK_VERSION);
            appsFlyerPropertiesRegisterClient.remove(AppsFlyerProperties.ONELINK_SCHEME);
        }
        this.AFKeystoreWrapper.setAndroidIdData().AppsFlyerLib = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectAndroidID(boolean z) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setCollectAndroidID", String.valueOf(z));
        this.AFKeystoreWrapper.setAndroidIdData().afWarnLog = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setConsentData(AppsFlyerConsent appsFlyerConsent) {
        Objects.requireNonNull(appsFlyerConsent);
        this.AFKeystoreWrapper.setAndroidIdData().setImeiData = appsFlyerConsent;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCurrencyCode(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setCurrencyCode", str);
        this.AFKeystoreWrapper.setAndroidIdData().stop = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerUserId(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setCustomerUserId", str);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setCustomerUserId = ".concat(String.valueOf(str)));
        this.AFKeystoreWrapper.setAndroidIdData().valueOf = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDeepLinkTimeout(long j2) {
        if (j2 <= 0) {
            AFLogger.INSTANCE.d(LogTag.DDL, "Invalid timeout value. Using default value of 3000 milliseconds");
            j2 = HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD;
        }
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.DDL;
        StringBuilder sb = new StringBuilder("Setting DeepLink timeout to  ");
        sb.append(j2);
        sb.append(" milliseconds");
        aFLogger.d(logTag, sb.toString());
        this.AFKeystoreWrapper.enableTCFDataCollection().AFKeystoreWrapper = j2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableAdvertisingIdentifiers(boolean z) {
        AFLogger.INSTANCE.d(LogTag.SDK_SETTERS, "setDisableAdvertisingIdentifiers: ".concat(String.valueOf(z)));
        AFb1iSDK.unregisterClient = Boolean.valueOf(!z);
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        aFc1aSDK.setAndroidIdData().setAndroidIdData = z;
        if (z) {
            aFc1aSDK.setAndroidIdData().updateServerUninstallToken = null;
        } else {
            aFc1aSDK.afWarnLog().d(new AFe1iSDK(this.AFKeystoreWrapper));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableNetworkData(boolean z) {
        AFLogger.INSTANCE.d(LogTag.SDK_SETTERS, "setDisableNetworkData: ".concat(String.valueOf(z)));
        this.AFKeystoreWrapper.setAndroidIdData().afErrorLog = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setHost(String str, String str2) {
        if (str2 == null || str2.trim().length() == 0) {
            AFLogger.INSTANCE.w(LogTag.HTTP_CLIENT, "setHost call ignored: hostname parameter is empty or null");
        } else {
            AFd1jSDK.AFLogger(new AFd1gSDK(str != null ? str.trim() : "", str2.trim()));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setImeiData(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setImeiData", str);
        this.AFKeystoreWrapper.setAndroidIdData().AFLoggerLogLevel = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setInstallId(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setInstallId", new String[0]);
        if (!this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "AppsFlyerLib.init() method should be called first");
            return;
        }
        String strAFLogger = this.AFKeystoreWrapper.AFLogger().AFLogger("APPSFLYER_ALLOW_CUSTOM_INSTALL_ID");
        if (!(strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : false)) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID Manifest flag should be set to true first");
        } else if (str == null) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "AppsFlyer installId can't be null");
        } else {
            AFb1jSDK.d(str, this.AFKeystoreWrapper.AFKeystoreWrapper());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setIsUpdate(boolean z) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setIsUpdate", String.valueOf(z));
        this.AFKeystoreWrapper.setAndroidIdData().getEntries = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("log", String.valueOf(z));
        this.AFKeystoreWrapper.setAndroidIdData().enableTCFDataCollection = logLevel;
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (z) {
            aFc1aSDK.setDebugLog().e();
        } else {
            aFc1aSDK.setDebugLog().AFKeystoreWrapper();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setMinTimeBetweenSessions(int i2) {
        this.AFKeystoreWrapper.setAndroidIdData().setDebugLog = TimeUnit.SECONDS.toMillis(i2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOaidData(String str) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setOaidData", str);
        AFb1iSDK.AFLogger = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOneLinkCustomDomain(String... strArr) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.DDL;
        Locale locale = Locale.US;
        aFLogger.d(logTag, "setOneLinkCustomDomain " + Arrays.toString(strArr));
        this.AFKeystoreWrapper.enableTCFDataCollection().force = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOutOfStore(String str) {
        if (str == null) {
            AFLogger.INSTANCE.w(LogTag.GENERAL, "Cannot set setOutOfStore with null");
            return;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        this.AFKeystoreWrapper.setAndroidIdData().getLevel = lowerCase;
        AFLogger.INSTANCE.i(LogTag.SDK_SETTERS, "Store API set with value: ".concat(String.valueOf(lowerCase)));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPartnerData(String str, Map<String, Object> map) {
        AFc1eSDK androidIdData = this.AFKeystoreWrapper.setAndroidIdData();
        if (androidIdData.v == null) {
            androidIdData.v = new AFb1qSDK();
        }
        AFb1qSDK aFb1qSDK = androidIdData.v;
        if (str == null || str.isEmpty()) {
            AFLogger.INSTANCE.w(LogTag.PUBLIC_API, "Partner ID is missing or null");
            return;
        }
        if (map == null || map.isEmpty()) {
            AFLogger.INSTANCE.w(LogTag.PUBLIC_API, aFb1qSDK.d.remove(str) == null ? "Partner data is missing or null" : "Cleared partner data for ".concat(str));
            return;
        }
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.PUBLIC_API;
        StringBuilder sb = new StringBuilder("Setting partner data for ");
        sb.append(str);
        sb.append(": ");
        sb.append(map);
        aFLogger.d(logTag, sb.toString());
        int length = new JSONObject(map).toString().length();
        if (length <= 1000) {
            aFb1qSDK.d.put(str, map);
            aFb1qSDK.AFKeystoreWrapper.remove(str);
        } else {
            aFLogger.w(logTag, "Partner data 1000 characters limit exceeded");
            HashMap map2 = new HashMap();
            map2.put("error", "limit exceeded: ".concat(String.valueOf(length)));
            aFb1qSDK.AFKeystoreWrapper.put(str, map2);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPluginInfo(PluginInfo pluginInfo) {
        Objects.requireNonNull(pluginInfo);
        this.AFKeystoreWrapper.onPause().registerClient(pluginInfo);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021 A[Catch: JSONException -> 0x0016, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0016, blocks: (B:4:0x0012, B:8:0x001a, B:10:0x0021), top: B:23:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001a A[Catch: JSONException -> 0x0016, TryCatch #0 {JSONException -> 0x0016, blocks: (B:4:0x0012, B:8:0x001a, B:10:0x0021), top: B:23:0x0012 }] */
    @Override // com.appsflyer.AppsFlyerLib
    public final void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.INSTANCE.d(LogTag.PREINSTALL, "setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(com.networkbench.nbslens.nbsnativecrashlib.m.q, str);
                if (str2 != null) {
                    jSONObject.put("c", str2);
                }
                if (str3 != null) {
                    jSONObject.put("af_siteid", str3);
                }
            } catch (JSONException e2) {
                AFLogger.INSTANCE.e(LogTag.PREINSTALL, e2.getMessage() != null ? e2.getMessage() : "Failed to serialize preinstall attribution parameters", e2);
            }
        } else {
            if (str2 != null) {
                jSONObject.put("c", str2);
            }
            if (str3 != null) {
                jSONObject.put("af_siteid", str3);
            }
        }
        if (jSONObject.has(com.networkbench.nbslens.nbsnativecrashlib.m.q)) {
            this.AFKeystoreWrapper.registerClient().set("preInstallName", jSONObject.toString());
        } else {
            AFLogger.INSTANCE.w(LogTag.PREINSTALL, "Preinstall attribution rejected: media source parameter is required");
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setResolveDeepLinkURLs(String... strArr) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.DDL;
        Locale locale = Locale.US;
        aFLogger.d(logTag, "setResolveDeepLinkURLs " + Arrays.toString(strArr));
        AFa1qSDK aFa1qSDKEnableTCFDataCollection = this.AFKeystoreWrapper.enableTCFDataCollection();
        aFa1qSDKEnableTCFDataCollection.w.clear();
        aFa1qSDKEnableTCFDataCollection.w.addAll(Arrays.asList(strArr));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setSharingFilterForPartners(String... strArr) {
        this.AFKeystoreWrapper.setAndroidIdData().w = new AFb1rSDK(strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmail(String str) {
        if (str == null) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "setUserEmail called with null email");
            return;
        }
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setUserEmail", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setUserEmail");
        String strAFKeystoreWrapper = AFj1jSDK.AFKeystoreWrapper(str);
        this.AFKeystoreWrapper.setAndroidIdData().AFLogger = AFj1nSDK.AFLogger(strAFKeystoreWrapper);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserFbLoginId(long j2) {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setUserFbLoginId", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setUserFbLoginId");
        this.AFKeystoreWrapper.setAndroidIdData().f22608i = Long.valueOf(j2);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserFirstName(String str) {
        if (str == null) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "setUserFirstName called with null firstName");
            return;
        }
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setUserFirstName", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setUserFirstName");
        String strAFLogger = AFj1jSDK.AFLogger(str);
        this.AFKeystoreWrapper.setAndroidIdData().AFKeystoreWrapper = AFj1nSDK.AFLogger(strAFLogger);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserLastName(String str) {
        if (str == null) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "setUserLastName called with null lastName");
            return;
        }
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setUserLastName", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setUserLastName");
        String strAFLogger = AFj1jSDK.AFLogger(str);
        this.AFKeystoreWrapper.setAndroidIdData().f22607e = AFj1nSDK.AFLogger(strAFLogger);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserPhone(String str, String str2) {
        if (str == null || str2 == null) {
            AFLogger.INSTANCE.d(LogTag.GENERAL, "setUserPhone called with null argument");
            return;
        }
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("setUserPhone", new String[0]);
        AFLogger.INSTANCE.i(LogTag.GENERAL, "setUserPhone");
        String strE0 = StringsKt.e0(AFj1jSDK.AFKeystoreWrapper(str, str2), '0');
        String strUnregisterClient = AFj1jSDK.unregisterClient(str, str2);
        AFc1eSDK androidIdData = this.AFKeystoreWrapper.setAndroidIdData();
        androidIdData.d = AFj1nSDK.AFLogger(strE0);
        androidIdData.registerClient = AFj1nSDK.AFLogger(strUnregisterClient);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start() {
        unregisterClient(null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void stop(boolean z, Context context) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        AFc1aSDK aFc1aSDK2 = this.AFKeystoreWrapper;
        aFc1aSDK2.AppsFlyerLib().AFLogger(z);
        aFc1aSDK2.d().submit(new g(aFc1aSDK2, 1));
        if (z) {
            aFc1aSDK2.AFKeystoreWrapper().registerClient("is_stop_tracking_used", true);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(DeepLinkListener deepLinkListener) {
        this.AFKeystoreWrapper.enableTCFDataCollection().unregisterClient = deepLinkListener;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterConversionListener() {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("unregisterConversionListener", new String[0]);
        this.AFKeystoreWrapper.registerClient(null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterSessionReadyListener() {
        this.AFKeystoreWrapper.AFLoggerLogLevel().d("unregisterSessionReadyListener", new String[0]);
        this.AFKeystoreWrapper.setAppInviteOneLink().d(null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void updateServerUninstallToken(Context context, String str) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (context != null) {
            aFc1aSDK.d.d = context.getApplicationContext();
        }
        AFg1vSDK aFg1vSDK = new AFg1vSDK();
        if (str == null || str.trim().isEmpty()) {
            AFLogger.INSTANCE.w(LogTag.UNINSTALL, "Firebase Token is either empty or null and was not registered.");
            return;
        }
        AFLogger.INSTANCE.i(LogTag.UNINSTALL, "Firebase Refreshed Token = ".concat(str));
        AFg1sSDK aFg1sSDKD = aFg1vSDK.d();
        if (aFg1sSDKD == null || !str.equals(aFg1sSDKD.AFKeystoreWrapper)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z = aFg1sSDKD == null || jCurrentTimeMillis - aFg1sSDKD.unregisterClient > 2000;
            AFg1sSDK aFg1sSDK = new AFg1sSDK(str, jCurrentTimeMillis, !z);
            aFg1vSDK.registerClient.d("afUninstallToken", aFg1sSDK.AFKeystoreWrapper);
            aFg1vSDK.registerClient.AFLogger("afUninstallToken_received_time", aFg1sSDK.unregisterClient);
            aFg1vSDK.registerClient.registerClient("afUninstallToken_queued", aFg1sSDK.AFLogger);
            if (z) {
                AFc1aSDK aFc1aSDK2 = d.AFKeystoreWrapper;
                aFc1aSDK2.afWarnLog().d(new AFf1qSDK(str, aFc1aSDK2));
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(AFPurchaseDetails aFPurchaseDetails, Map<String, String> map, AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback) {
        this.AFKeystoreWrapper.afWarnLog().d(new AFe1eSDK(this.AFKeystoreWrapper, aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(AppsFlyerRequestListener appsFlyerRequestListener) {
        unregisterClient(appsFlyerRequestListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AFc1bSDK aFc1bSDK) {
        aFc1bSDK.values().unregisterClient();
    }

    public static String d(AFc1kSDK aFc1kSDK, String str) {
        String strD = aFc1kSDK.d("CACHED_CHANNEL");
        if (strD != null) {
            return strD;
        }
        aFc1kSDK.d("CACHED_CHANNEL", str);
        return str;
    }

    public static AFa1tSDK d() {
        return d;
    }

    private synchronized AFf1mSDK AFKeystoreWrapper() {
        try {
            if (this.f22604e == null) {
                this.f22604e = new AFf1mSDK() { // from class: com.appsflyer.internal.f
                    @Override // com.appsflyer.internal.AFf1mSDK
                    public final void onRemoteConfigUpdateFinished(AFf1pSDK aFf1pSDK) {
                        this.f22681a.AFLogger(aFf1pSDK);
                    }
                };
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f22604e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: AFLogger, reason: merged with bridge method [inline-methods] */
    public void d(AFi1oSDK aFi1oSDK) {
        AFc1iSDK aFc1iSDKAFLogger = this.AFKeystoreWrapper.AFLogger();
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        this.AFKeystoreWrapper.afWarnLog().d(new AFe1dSDK(aFi1oSDK, aFc1iSDKAFLogger, aFc1aSDK, aFc1aSDK.force(), this.AFKeystoreWrapper.valueOf()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFLogger(AFf1pSDK aFf1pSDK) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (aFf1pSDK == AFf1pSDK.SUCCESS && aFc1aSDK.getEntries() != null) {
            aFc1aSDK.getEntries().updateExceptionManagerConfiguration();
        }
        if (!aFc1aSDK.AFLoggerLogLevel().AFLogger()) {
            aFc1aSDK.setDebugLog().unregisterClient();
        } else {
            aFc1aSDK.setDebugLog().AFLogger();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void unregisterClient() {
        this.AFKeystoreWrapper.w().d(new AFh1kSDK());
    }

    private static String registerClient(Activity activity) {
        Intent intent;
        String string = null;
        if (activity != null && (intent = activity.getIntent()) != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    string = extras.getString("af");
                    if (string == null) {
                        return string;
                    }
                    AFLogger.INSTANCE.w(LogTag.ENGAGEMENT, "Push Notification received af payload = ".concat(string));
                    extras.remove("af");
                    activity.setIntent(intent.putExtras(extras));
                    return string;
                }
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(LogTag.ENGAGEMENT, th.getMessage(), th);
            }
        }
        return string;
    }

    private /* synthetic */ void registerClient(boolean z) {
        AFc1aSDK aFc1aSDK = this.AFKeystoreWrapper;
        if (z) {
            aFc1aSDK.setDebugLog().registerClient();
        } else {
            aFc1aSDK.setDebugLog().d();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map) {
        logEvent(context, str, map, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPushNotificationData(AFPushData aFPushData) {
        if (this.AFKeystoreWrapper.setAndroidIdData().setUserFirstName) {
            this.AFKeystoreWrapper.AFLoggerLogLevel().d("sendPushNotificationData", "push_data:".concat(String.valueOf(aFPushData)));
            AFLogger.INSTANCE.i(LogTag.ATTRIBUTION, "Received campaign details from push");
            this.AFKeystoreWrapper.setUserPhone().registerClient();
            this.AFKeystoreWrapper.setAndroidIdData().unregisterClient = aFPushData.toJson().toString();
            this.AFKeystoreWrapper.w().d(new AFh1fSDK().unregisterClient());
            return;
        }
        d("sendPushNotificationData");
    }
}
