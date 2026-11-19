package com.appsflyer.internal;

import android.app.UiModeManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.util.AndroidExtensionsKt;
import defpackage.r61;
import defpackage.tr;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1oSDK implements AFg1rSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AppsFlyerLib = 0;
    private static int getLevel = 1;
    private final AFg1qSDK AFKeystoreWrapper;
    private final Context AFLogger;
    private final AFc1eSDK AFLoggerLogLevel;
    private final Lazy afDebugLog;
    private final AppsFlyerProperties afErrorLog;
    private final AFf1bSDK afInfoLog;
    private final AFd1zSDK afWarnLog;
    private final AFj1cSDK d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AFc1kSDK f22647e;
    private final AFi1vSDK force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AFc1iSDK f22648i;
    private final AFj1ySDK registerClient;
    private final AFg1wSDK unregisterClient;
    private final AFh1xSDK v;
    private final AFf1fSDK w;
    private static char[] valueOf = {13891, 31402, 44955, 53476, 1481, 46615, 64288, 11290, 20859, 33360, 14001, 31619, 44172, 53759, 724, 17751, 2465, 56472, 41961, 30409};
    private static long getEntries = 8025551254644932716L;

    public AFg1oSDK(Context context, AFj1cSDK aFj1cSDK, AFg1wSDK aFg1wSDK, AFj1ySDK aFj1ySDK, AFg1qSDK aFg1qSDK, AFh1xSDK aFh1xSDK, AFc1kSDK aFc1kSDK, AFc1iSDK aFc1iSDK, AFi1vSDK aFi1vSDK, AFf1fSDK aFf1fSDK, AFd1zSDK aFd1zSDK, AFf1bSDK aFf1bSDK, AFc1eSDK aFc1eSDK, AppsFlyerProperties appsFlyerProperties) {
        context.getClass();
        aFj1cSDK.getClass();
        aFg1wSDK.getClass();
        aFj1ySDK.getClass();
        aFg1qSDK.getClass();
        aFh1xSDK.getClass();
        aFc1kSDK.getClass();
        aFc1iSDK.getClass();
        aFi1vSDK.getClass();
        aFf1fSDK.getClass();
        aFd1zSDK.getClass();
        aFf1bSDK.getClass();
        aFc1eSDK.getClass();
        appsFlyerProperties.getClass();
        this.AFLogger = context;
        this.d = aFj1cSDK;
        this.unregisterClient = aFg1wSDK;
        this.registerClient = aFj1ySDK;
        this.AFKeystoreWrapper = aFg1qSDK;
        this.v = aFh1xSDK;
        this.f22647e = aFc1kSDK;
        this.f22648i = aFc1iSDK;
        this.force = aFi1vSDK;
        this.w = aFf1fSDK;
        this.afWarnLog = aFd1zSDK;
        this.afInfoLog = aFf1bSDK;
        this.AFLoggerLogLevel = aFc1eSDK;
        this.afErrorLog = appsFlyerProperties;
        this.afDebugLog = LazyKt.b(new r61(17));
    }

    private String AFLogger(SimpleDateFormat simpleDateFormat, int i2) {
        String str;
        int i3 = AppsFlyerLib + 91;
        getLevel = i3 % 128;
        if (i3 % 2 == 0) {
            simpleDateFormat.getClass();
            this.f22647e.d("appsFlyerFirstInstall");
            throw null;
        }
        simpleDateFormat.getClass();
        String strD = this.f22647e.d("appsFlyerFirstInstall");
        if (strD == null || strD.length() == 0) {
            if (i2 <= 1) {
                AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "First app launch detected, recording install timestamp", false, 4, null);
                str = simpleDateFormat.format(new Date());
                getLevel = (AppsFlyerLib + 29) % 128;
            } else {
                AppsFlyerLib = (getLevel + 103) % 128;
                str = "";
            }
            strD = str;
            this.f22647e.d("appsFlyerFirstInstall", strD);
        }
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.GENERAL, tr.g("AppsFlyer: first launch date: ", strD), false, 4, null);
        strD.getClass();
        return strD;
    }

    private static void AFLoggerLogLevel(Map<String, Object> map) {
        getLevel = (AppsFlyerLib + 119) % 128;
        map.getClass();
        Object[] objArr = new Object[1];
        a(TextUtils.indexOf((CharSequence) "", '0', 0) + 16, (char) (18880 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))), 5 - View.MeasureSpec.getMode(0), objArr);
        map.put(((String) objArr[0]).intern(), Build.BRAND);
        map.put("device", Build.DEVICE);
        map.put("product", Build.PRODUCT);
        map.put("sdk", String.valueOf(Build.VERSION.SDK_INT));
        map.put("model", Build.MODEL);
        map.put("deviceType", Build.TYPE);
        int i2 = AppsFlyerLib + 29;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    private void AppsFlyerLib(Map<String, Object> map) {
        unregisterClient(new Object[]{this, map}, 291205159, -291205155, System.identityHashCode(this));
    }

    private static void a(int i2, char c2, int i3, Object[] objArr) {
        AFk1qSDK aFk1qSDK = new AFk1qSDK();
        long[] jArr = new long[i3];
        aFk1qSDK.unregisterClient = 0;
        while (true) {
            int i4 = aFk1qSDK.unregisterClient;
            if (i4 >= i3) {
                break;
            }
            $11 = ($10 + 5) % 128;
            jArr[i4] = (((long) ((char) (((long) valueOf[i2 + i4]) ^ 7057235384081779850L))) ^ (((long) i4) * (7057235384081779850L ^ getEntries))) ^ ((long) c2);
            aFk1qSDK.unregisterClient = i4 + 1;
        }
        char[] cArr = new char[i3];
        aFk1qSDK.unregisterClient = 0;
        while (true) {
            int i5 = aFk1qSDK.unregisterClient;
            if (i5 >= i3) {
                String str = new String(cArr);
                $11 = ($10 + 45) % 128;
                objArr[0] = str;
                return;
            } else {
                cArr[i5] = (char) jArr[i5];
                aFk1qSDK.unregisterClient = i5 + 1;
                $11 = ($10 + 115) % 128;
            }
        }
    }

    private static List<AFd1bSDK> afDebugLog() {
        return (List) unregisterClient(new Object[0], 1713251753, -1713251742, (int) System.currentTimeMillis());
    }

    private final String afErrorLog() {
        String strD = this.f22647e.d("androidIdCached");
        try {
            String string = Settings.Secure.getString(this.AFLogger.getContentResolver(), "android_id");
            if (string != null) {
                return string;
            }
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.DEVICE_DATA;
            String message = e2.getMessage();
            if (message == null) {
                AppsFlyerLib = (getLevel + 45) % 128;
                message = "Failed to retrieve Android ID from Settings.Secure";
            }
            AFLoggerBase.e$default(aFLogger, logTag, message, e2, false, false, false, false, 120, null);
            AppsFlyerLib = (getLevel + 9) % 128;
        }
        if (strD == null) {
            return null;
        }
        AppsFlyerLib = (getLevel + 87) % 128;
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, tr.g("Using cached Android ID (current retrieval failed): ", strD), false, 4, null);
        return strD;
    }

    private final boolean afInfoLog() {
        if (this.AFLoggerLogLevel.afWarnLog) {
            return true;
        }
        int i2 = AppsFlyerLib + 21;
        getLevel = i2 % 128;
        int i3 = i2 % 2;
        boolean zAFLogger = AFj1qSDK.AFLogger(this.AFLogger);
        if (i3 == 0) {
            int i4 = 71 / 0;
            if (!zAFLogger) {
                return true;
            }
        } else if (!zAFLogger) {
            return true;
        }
        AppsFlyerLib = (getLevel + 11) % 128;
        return false;
    }

    private final String afWarnLog() {
        File fileAFKeystoreWrapper = AFKeystoreWrapper(AFLogger("ro.appsflyer.preinstall.path"));
        if (AFLogger(fileAFKeystoreWrapper)) {
            fileAFKeystoreWrapper = AFKeystoreWrapper(registerClient("AF_PRE_INSTALL_PATH"));
            getLevel = (AppsFlyerLib + 111) % 128;
        }
        if (AFLogger(fileAFKeystoreWrapper)) {
            fileAFKeystoreWrapper = AFKeystoreWrapper("/data/local/tmp/pre_install.appsflyer");
        }
        if (AFLogger(fileAFKeystoreWrapper)) {
            fileAFKeystoreWrapper = AFKeystoreWrapper("/etc/pre_install.appsflyer");
        }
        if (AFLogger(fileAFKeystoreWrapper)) {
            AppsFlyerLib = (getLevel + 49) % 128;
            return null;
        }
        String packageName = this.AFLogger.getPackageName();
        packageName.getClass();
        return (String) unregisterClient(new Object[]{fileAFKeystoreWrapper, packageName}, 238881636, -238881626, (int) System.currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0115  */
    /* JADX WARN: Code duplicated, block: B:70:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static /* synthetic */ Object e(Object[] objArr) throws Throwable {
        Throwable th;
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        Throwable th2;
        File file = (File) objArr[0];
        String str = (String) objArr[1];
        if (file == null) {
            int i2 = getLevel + 67;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 == 0) {
                return null;
            }
            throw null;
        }
        try {
            Properties properties = new Properties();
            inputStreamReader2 = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
            try {
                properties.load(inputStreamReader2);
                AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.PREINSTALL, "Preinstall configuration file found and loaded successfully", false, 4, null);
                String property = properties.getProperty(str);
                try {
                    inputStreamReader2.close();
                    return property;
                } catch (Throwable th3) {
                    AFLogger aFLogger = AFLogger.INSTANCE;
                    LogTag logTag = LogTag.PREINSTALL;
                    String message = th3.getMessage();
                    AFLoggerBase.e$default(aFLogger, logTag, "Error closing preinstall configuration file reader: ".concat(message != null ? message : "unknown error"), th3, false, false, false, false, 120, null);
                    return property;
                }
            } catch (FileNotFoundException unused) {
                try {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.PREINSTALL, "Preinstall configuration file not found at path: " + file.getAbsolutePath(), false, 4, null);
                    if (inputStreamReader2 != null) {
                        try {
                            inputStreamReader2.close();
                        } catch (Throwable th4) {
                            AFLogger aFLogger2 = AFLogger.INSTANCE;
                            LogTag logTag2 = LogTag.PREINSTALL;
                            String message2 = th4.getMessage();
                            AFLoggerBase.e$default(aFLogger2, logTag2, "Error closing preinstall configuration file reader: ".concat(message2 != null ? message2 : "unknown error"), th4, false, false, false, false, 120, null);
                        }
                    }
                    return null;
                } catch (Throwable th5) {
                    th2 = th5;
                    inputStreamReader = inputStreamReader2;
                    if (inputStreamReader == null) {
                        AppsFlyerLib = (getLevel + 75) % 128;
                        throw th2;
                    }
                    try {
                        inputStreamReader.close();
                        throw th2;
                    } catch (Throwable th6) {
                        AFLogger aFLogger3 = AFLogger.INSTANCE;
                        LogTag logTag3 = LogTag.PREINSTALL;
                        String message3 = th6.getMessage();
                        AFLoggerBase.e$default(aFLogger3, logTag3, "Error closing preinstall configuration file reader: ".concat(message3 != null ? message3 : "unknown error"), th6, false, false, false, false, 120, null);
                        throw th2;
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                inputStreamReader = inputStreamReader2;
                try {
                    AFLogger aFLogger4 = AFLogger.INSTANCE;
                    LogTag logTag4 = LogTag.PREINSTALL;
                    String message4 = th.getMessage();
                    if (message4 == null) {
                        message4 = "unknown error";
                    }
                    AFLoggerBase.e$default(aFLogger4, logTag4, "Error reading preinstall configuration file: ".concat(message4), th, false, false, false, false, 120, null);
                    if (inputStreamReader != null) {
                        int i3 = getLevel + 123;
                        AppsFlyerLib = i3 % 128;
                        try {
                            if (i3 % 2 != 0) {
                                inputStreamReader.close();
                                int i4 = 60 / 0;
                            } else {
                                inputStreamReader.close();
                            }
                        } catch (Throwable th8) {
                            AFLogger aFLogger5 = AFLogger.INSTANCE;
                            LogTag logTag5 = LogTag.PREINSTALL;
                            String message5 = th8.getMessage();
                            AFLoggerBase.e$default(aFLogger5, logTag5, "Error closing preinstall configuration file reader: ".concat(message5 != null ? message5 : "unknown error"), th8, false, false, false, false, 120, null);
                        }
                    }
                    return null;
                } catch (Throwable th9) {
                    th2 = th9;
                    if (inputStreamReader == null) {
                        AppsFlyerLib = (getLevel + 75) % 128;
                        throw th2;
                    }
                    inputStreamReader.close();
                    throw th2;
                }
            }
        } catch (FileNotFoundException unused2) {
            inputStreamReader2 = null;
        } catch (Throwable th10) {
            th = th10;
            inputStreamReader = null;
        }
    }

    private void enableTCFDataCollection(Map<String, Object> map) {
        AppsFlyerLib = (getLevel + 9) % 128;
        map.getClass();
        map.put("af_preinstalled", String.valueOf(this.f22648i.AFKeystoreWrapper(this.AFLogger)));
        getLevel = (AppsFlyerLib + 115) % 128;
    }

    private static /* synthetic */ Object force(Object[] objArr) {
        AFd1nSDK aFd1nSDK;
        AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
        AFh1pSDK aFh1pSDK = (AFh1pSDK) objArr[1];
        aFh1pSDK.getClass();
        AFc1eSDK aFc1eSDK = aFg1oSDK.f22648i.registerClient;
        if (aFc1eSDK.setAndroidIdData) {
            int i2 = getLevel + 45;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 != 0) {
                Map<String, Object> map = aFh1pSDK.d;
                map.getClass();
                AFj1iSDK.AFLogger(map).put("ad_ids_disabled", Boolean.TRUE);
                throw null;
            }
            Map<String, Object> map2 = aFh1pSDK.d;
            map2.getClass();
            AFj1iSDK.AFLogger(map2).put("ad_ids_disabled", Boolean.TRUE);
            getLevel = (AppsFlyerLib + 63) % 128;
        } else {
            AFh1qSDK aFh1qSDK = aFc1eSDK.updateServerUninstallToken;
            if (aFh1qSDK == null) {
                return null;
            }
            String str = aFh1qSDK.v;
            if (str != null && str.length() != 0) {
                aFh1pSDK.AFKeystoreWrapper("gaidError", aFh1qSDK.v);
            }
            String str2 = aFh1qSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String;
            if (str2 != null) {
                getLevel = (AppsFlyerLib + 75) % 128;
                if (aFh1qSDK.unregisterClient != null) {
                    aFh1pSDK.AFKeystoreWrapper("advertiserId", str2);
                    aFh1pSDK.AFKeystoreWrapper("advertiserIdEnabled", String.valueOf(aFh1qSDK.unregisterClient));
                    aFh1pSDK.AFKeystoreWrapper("isGaidWithGps", String.valueOf(aFh1qSDK.AFLogger));
                }
            }
        }
        AFh1qSDK aFh1qSDK2 = aFg1oSDK.f22648i.registerClient.updateServerUninstallToken;
        aFh1pSDK.AFKeystoreWrapper("GAID_retry", String.valueOf(aFh1qSDK2 != null ? Intrinsics.c(aFh1qSDK2.i, Boolean.TRUE) : false));
        if (CollectionsKt.u(CollectionsKt.P(AFd1bSDK.CONVERSION, AFd1bSDK.LAUNCH), aFh1pSDK.AFKeystoreWrapper()) && (aFd1nSDK = aFg1oSDK.AFLoggerLogLevel.setOaidData) != null) {
            Map<String, Object> map3 = aFh1pSDK.d;
            map3.getClass();
            AFj1iSDK.AFLogger(map3).put("fetchAdIdLatency", Long.valueOf(aFd1nSDK.registerClient));
        }
        return null;
    }

    private void getEntries(Map<String, Object> map) {
        map.getClass();
        long j2 = this.v.afInfoLog;
        if (j2 != 0) {
            getLevel = (AppsFlyerLib + 71) % 128;
            map.put("prev_session_dur", Long.valueOf(j2));
        }
        getLevel = (AppsFlyerLib + 85) % 128;
    }

    private void getInstance(Map<String, Object> map) {
        int i2 = AppsFlyerLib + 29;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            this.f22647e.registerClient("is_stop_tracking_used");
            throw null;
        }
        map.getClass();
        if (this.f22647e.registerClient("is_stop_tracking_used")) {
            map.put("istu", String.valueOf(this.f22647e.AFKeystoreWrapper("is_stop_tracking_used")));
        }
        int i3 = getLevel + 19;
        AppsFlyerLib = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0031  */
    /* JADX WARN: Code duplicated, block: B:24:0x0065  */
    /* JADX WARN: Code duplicated, block: B:9:0x0029 A[PHI: r0
      0x0029: PHI (r0v5 java.lang.String) = (r0v4 java.lang.String), (r0v18 java.lang.String) binds: [B:8:0x0027, B:5:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    private void getLevel(Map<String, Object> map) {
        String strAFLogger;
        boolean z;
        int i2 = getLevel + 39;
        AppsFlyerLib = i2 % 128;
        boolean z2 = false;
        if (i2 % 2 != 0) {
            map.getClass();
            strAFLogger = this.f22648i.AFLogger("CHANNEL");
            int i3 = 94 / 0;
            if (strAFLogger != null) {
                if (strAFLogger.equals("")) {
                    AppsFlyerLib = (getLevel + 29) % 128;
                    strAFLogger = null;
                }
            }
        } else {
            map.getClass();
            strAFLogger = this.f22648i.AFLogger("CHANNEL");
            if (strAFLogger != null) {
                if (strAFLogger.equals("")) {
                    AppsFlyerLib = (getLevel + 29) % 128;
                    strAFLogger = null;
                }
            }
        }
        String strRegisterClient = registerClient(this.f22647e, strAFLogger);
        if (strRegisterClient == null || strRegisterClient.equals(strAFLogger)) {
            z = false;
        } else {
            AppsFlyerLib = (getLevel + 71) % 128;
            z = true;
        }
        if (strRegisterClient == null && strAFLogger != null) {
            z2 = true;
        }
        if (z) {
            map.put("af_latestchannel", strAFLogger);
        } else {
            AppsFlyerLib = (getLevel + 23) % 128;
            if (z2) {
                map.put("af_latestchannel", strAFLogger);
            }
        }
        String strForce = force();
        if (strForce != null) {
            Locale locale = Locale.ROOT;
            locale.getClass();
            Object lowerCase = strForce.toLowerCase(locale);
            lowerCase.getClass();
            map.put("af_installstore", lowerCase);
        }
        String strW = w();
        if (strW != null) {
            Locale locale2 = Locale.ROOT;
            locale2.getClass();
            Object lowerCase2 = strW.toLowerCase(locale2);
            lowerCase2.getClass();
            map.put("af_preinstall_name", lowerCase2);
        }
        String strE = e();
        if (strE != null) {
            Locale locale3 = Locale.ROOT;
            locale3.getClass();
            Object lowerCase3 = strE.toLowerCase(locale3);
            lowerCase3.getClass();
            map.put("af_currentstore", lowerCase3);
        }
    }

    private void getSdkVersion(Map<String, Object> map) {
        map.getClass();
        AFb1lSDK aFb1lSDKH_ = AFb1iSDK.h_(this.AFLogger.getContentResolver());
        if (aFb1lSDKH_ != null) {
            int i2 = AppsFlyerLib + 107;
            getLevel = i2 % 128;
            if (i2 % 2 == 0) {
                map.put("amazon_aid", aFb1lSDKH_.d);
                map.put("amazon_aid_limit", String.valueOf(aFb1lSDKH_.AFLogger));
                throw null;
            }
            map.put("amazon_aid", aFb1lSDKH_.d);
            map.put("amazon_aid_limit", String.valueOf(aFb1lSDKH_.AFLogger));
            int i3 = getLevel + 63;
            AppsFlyerLib = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
        }
    }

    private void i(Map<String, Object> map) {
        map.getClass();
        String str = this.AFLoggerLogLevel.AppsFlyerLib;
        String string = this.afErrorLog.getString(AppsFlyerProperties.ONELINK_VERSION);
        if (str != null) {
            int i2 = getLevel + 91;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 != 0) {
                map.put("onelink_id", str);
                int i3 = 59 / 0;
            } else {
                map.put("onelink_id", str);
            }
        }
        if (string != null) {
            getLevel = (AppsFlyerLib + 83) % 128;
            map.put("onelink_ver", string);
            AppsFlyerLib = (getLevel + 15) % 128;
        }
        int i4 = AppsFlyerLib + 47;
        getLevel = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x005f  */
    /* JADX WARN: Code duplicated, block: B:12:0x0069  */
    /* JADX WARN: Code duplicated, block: B:9:0x0051  */
    private void onPause(Map<String, Object> map) {
        int i2;
        int i3 = AppsFlyerLib + 99;
        getLevel = i3 % 128;
        if (i3 % 2 == 0) {
            map.getClass();
            boolean zRegisterClient = AFg1vSDK.registerClient(this.AFLogger);
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.UNINSTALL, "didConfigureTokenRefreshService=" + zRegisterClient, false, 4, null);
            if (!zRegisterClient) {
                i2 = AppsFlyerLib + 69;
                getLevel = i2 % 128;
                if (i2 % 2 == 0) {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                    int i4 = 11 / 0;
                } else {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                }
            }
        } else {
            map.getClass();
            boolean zRegisterClient2 = AFg1vSDK.registerClient(this.AFLogger);
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.UNINSTALL, "didConfigureTokenRefreshService=" + zRegisterClient2, false, 4, null);
            if (!zRegisterClient2) {
                i2 = AppsFlyerLib + 69;
                getLevel = i2 % 128;
                if (i2 % 2 == 0) {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                    int i5 = 11 / 0;
                } else {
                    map.put("tokenRefreshConfigured", Boolean.FALSE);
                }
            }
        }
        map.put("registeredUninstall", Boolean.valueOf(this.f22647e.AFKeystoreWrapper("sentRegisterRequestToAF")));
    }

    private void setImeiData(Map<String, Object> map) {
        String strRegisterClient;
        map.getClass();
        String strAFLogger = this.f22648i.AFLogger("AF_COLLECT_FACEBOOK_ATTR_ID");
        if (strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : true) {
            try {
                this.AFLogger.getPackageManager().getApplicationInfo("com.facebook.katana", 0);
                strRegisterClient = this.f22648i.registerClient(this.AFLogger);
            } catch (Throwable unused) {
                strRegisterClient = null;
            }
            if (strRegisterClient != null) {
                AppsFlyerLib = (getLevel + 19) % 128;
                map.put("fb", strRegisterClient);
            }
        }
        AppsFlyerLib = (getLevel + 31) % 128;
    }

    private void setOaidData(Map<String, Object> map) {
        map.getClass();
        AFf1fSDK aFf1fSDK = this.w;
        String str = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK));
        if (str != null && str.length() != 0) {
            int i2 = AppsFlyerLib + 109;
            getLevel = i2 % 128;
            if (i2 % 2 == 0) {
                map.put("appsflyerKey", str);
                throw null;
            }
            map.put("appsflyerKey", str);
        }
        getLevel = (AppsFlyerLib + 103) % 128;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0043: INVOKE (r0 I:java.lang.String) = (r2 I:java.util.Locale) VIRTUAL call: java.util.Locale.getLanguage():java.lang.String A[MD:():java.lang.String (c)], block:B:16:0x0033 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Locale] */
    private static void stop(Map<String, Object> map) {
        ?? language;
        Locale locale;
        int i2 = getLevel + 35;
        AppsFlyerLib = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                map.getClass();
                map.put("lang", Locale.getDefault().getDisplayLanguage());
                throw null;
            }
            map.getClass();
            Locale locale2 = Locale.getDefault();
            map.put("lang", locale2.getDisplayLanguage());
            locale = locale2;
            try {
                map.put("lang_code", locale.getLanguage());
            } catch (Exception e2) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed to retrieve device language code", e2, false, false, false, false, 120, null);
            }
            try {
                map.put("country", locale.getCountry());
            } catch (Exception e3) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed to retrieve device country code", e3, false, false, false, false, 120, null);
            }
        } catch (Exception e4) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed to retrieve device display language name", e4, false, false, false, false, 120, null);
            map.put("lang", language.getLanguage());
            locale = language;
        }
    }

    public static /* synthetic */ Object unregisterClient(Object[] objArr, int i2, int i3, int i4) {
        long j2;
        int i5 = ~i4;
        int i6 = ~i2;
        int i7 = ~i3;
        switch ((((~(i2 | i7)) | (~(i3 | i6))) * 662) + (((~(i4 | i3)) | (~(i2 | i4))) * (-1324)) + ((i5 | (~(i6 | i7))) * 1324) + (i3 * (-661)) + (i2 * (-661))) {
            case 1:
                return unregisterClient(objArr);
            case 2:
                return d(objArr);
            case 3:
                return registerClient(objArr);
            case 4:
                AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
                Map map = (Map) objArr[1];
                getLevel = (AppsFlyerLib + 5) % 128;
                map.getClass();
                long jUnregisterClient = aFg1oSDK.f22647e.unregisterClient("AppsFlyerTimePassedSincePrevLaunch", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                aFg1oSDK.f22647e.AFLogger("AppsFlyerTimePassedSincePrevLaunch", jCurrentTimeMillis);
                if (jUnregisterClient > 0) {
                    j2 = (jCurrentTimeMillis - jUnregisterClient) / 1000;
                    AppsFlyerLib = (getLevel + 1) % 128;
                } else {
                    AppsFlyerLib = (getLevel + 97) % 128;
                    j2 = -1;
                }
                map.put("timepassedsincelastlaunch", String.valueOf(j2));
                return null;
            case 5:
                return AFLogger(objArr);
            case 6:
                return force(objArr);
            case 7:
                StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
                long blockSizeLong = statFs.getBlockSizeLong();
                long availableBlocksLong = statFs.getAvailableBlocksLong() * blockSizeLong;
                long blockCountLong = statFs.getBlockCountLong() * blockSizeLong;
                double dPow = Math.pow(2.0d, 20.0d);
                String str = ((long) (availableBlocksLong / dPow)) + "/" + ((long) (blockCountLong / dPow));
                getLevel = (AppsFlyerLib + 47) % 128;
                return str;
            case 8:
                return v(objArr);
            case 9:
                AFg1oSDK aFg1oSDK2 = (AFg1oSDK) objArr[0];
                Map map2 = (Map) objArr[1];
                getLevel = (AppsFlyerLib + 75) % 128;
                if (AFg1iSDK.registerClient(aFg1oSDK2.AFLogger)) {
                    map2.put("inst_app", Boolean.TRUE);
                    getLevel = (AppsFlyerLib + 39) % 128;
                }
                return null;
            case 10:
                return e(objArr);
            case 11:
                AppsFlyerLib = (getLevel + 125) % 128;
                List listP = CollectionsKt.P(AFd1bSDK.CONVERSION, AFd1bSDK.LAUNCH, AFd1bSDK.INAPP, AFd1bSDK.MANUAL_PURCHASE_VALIDATION, AFd1bSDK.ARS_VALIDATE, AFd1bSDK.PURCHASE_VALIDATE, AFd1bSDK.ADREVENUE);
                AppsFlyerLib = (getLevel + 67) % 128;
                return listP;
            default:
                return AFKeystoreWrapper(objArr);
        }
    }

    private static /* synthetic */ Object v(Object[] objArr) {
        String str;
        AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = getLevel + 71;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 != 0) {
            AFg1wSDK.AFa1vSDK aFa1vSDKRegisterClient = aFg1oSDK.unregisterClient.registerClient(aFg1oSDK.AFLogger);
            float f2 = aFa1vSDKRegisterClient.unregisterClient;
            str = aFa1vSDKRegisterClient.AFLogger;
            map.put("btl", String.valueOf(f2));
            int i3 = 14 / 0;
            if (str == null) {
                return null;
            }
        } else {
            AFg1wSDK.AFa1vSDK aFa1vSDKRegisterClient2 = aFg1oSDK.unregisterClient.registerClient(aFg1oSDK.AFLogger);
            float f3 = aFa1vSDKRegisterClient2.unregisterClient;
            String str2 = aFa1vSDKRegisterClient2.AFLogger;
            map.put("btl", String.valueOf(f3));
            if (str2 == null) {
                return null;
            }
            str = str2;
        }
        map.put("btch", str);
        AppsFlyerLib = (getLevel + 19) % 128;
        return null;
    }

    private void valueOf(Map<String, Object> map) {
        Object objRegisterClient;
        String strAFLogger;
        int i2 = AppsFlyerLib + 75;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            AFa1uSDK aFa1uSDK = AFa1uSDK.INSTANCE;
            objRegisterClient = AFa1uSDK.registerClient(this.afErrorLog);
            strAFLogger = AFa1uSDK.AFLogger(this.afErrorLog);
            int i3 = 62 / 0;
            if (objRegisterClient == null) {
                return;
            }
        } else {
            map.getClass();
            AFa1uSDK aFa1uSDK2 = AFa1uSDK.INSTANCE;
            objRegisterClient = AFa1uSDK.registerClient(this.afErrorLog);
            strAFLogger = AFa1uSDK.AFLogger(this.afErrorLog);
            if (objRegisterClient == null) {
                return;
            }
        }
        if (strAFLogger != null) {
            int i4 = AppsFlyerLib + 55;
            getLevel = i4 % 128;
            if (i4 % 2 == 0) {
                Integer.parseInt(strAFLogger);
                throw null;
            }
            if (Integer.parseInt(strAFLogger) > 0) {
                map.put("reinstallCounter", strAFLogger);
                map.put("originalAppsflyerId", objRegisterClient);
            }
        }
    }

    private void values(Map<String, Object> map) {
        int i2 = getLevel + 91;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            map.putAll(this.afInfoLog.AFKeystoreWrapper());
        } else {
            map.getClass();
            map.putAll(this.afInfoLog.AFKeystoreWrapper());
            int i3 = 55 / 0;
        }
    }

    private String w() {
        String string = this.afErrorLog.getString("preInstallName");
        if (string != null) {
            AppsFlyerLib = (getLevel + 67) % 128;
            return string;
        }
        String strD = this.f22647e.d("preInstallName");
        if (strD != null) {
            this.afErrorLog.set("preInstallName", strD);
            getLevel = (AppsFlyerLib + 23) % 128;
            return strD;
        }
        String strAfWarnLog = afWarnLog();
        if (strAfWarnLog == null) {
            int i2 = getLevel + 15;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 != 0) {
                strAfWarnLog = registerClient("AF_PRE_INSTALL_NAME");
                int i3 = 42 / 0;
            } else {
                strAfWarnLog = registerClient("AF_PRE_INSTALL_NAME");
            }
        }
        if (strAfWarnLog != null) {
            this.f22647e.d("preInstallName", strAfWarnLog);
            this.afErrorLog.set("preInstallName", strAfWarnLog);
            getLevel = (AppsFlyerLib + 115) % 128;
        }
        return strAfWarnLog;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0027  */
    @Override // com.appsflyer.internal.AFg1rSDK
    public final void AFKeystoreWrapper(AFh1pSDK aFh1pSDK) {
        boolean z;
        int i2 = getLevel + 95;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 != 0) {
            aFh1pSDK.getClass();
            aFh1pSDK.d.getClass();
            throw null;
        }
        aFh1pSDK.getClass();
        Map<String, Object> map = aFh1pSDK.d;
        map.getClass();
        if (aFh1pSDK.v == null) {
            getLevel = (AppsFlyerLib + 99) % 128;
            if (aFh1pSDK.w == null) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        d(map, z);
        AFLoggerLogLevel(map);
        stop(map);
        AFLogger(map);
        registerClient(map, this.AFLoggerLogLevel.force);
        getSdkVersion(map);
        map.put("cell", MapsKt.i(new Pair("mcc", Integer.valueOf(this.AFLogger.getResources().getConfiguration().mcc)), new Pair("mnc", Integer.valueOf(this.AFLogger.getResources().getConfiguration().mnc))));
        map.put("sig", d());
        map.put("last_boot_time", Long.valueOf(AFKeystoreWrapper()));
        map.put("disk", (String) unregisterClient(new Object[0], -137455512, 137455519, (int) System.currentTimeMillis()));
        AppsFlyerLib = (getLevel + 121) % 128;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0023 A[PHI: r0
      0x0023: PHI (r0v5 java.lang.Object) = (r0v4 java.lang.Object), (r0v22 java.lang.Object) binds: [B:8:0x0021, B:5:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.appsflyer.internal.AFg1rSDK
    public final void d(Map<String, Object> map) {
        Object obj;
        Object obj2;
        int i2 = AppsFlyerLib + 77;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            obj = this.AFLoggerLogLevel.values;
            int i3 = 25 / 0;
            if (obj != null) {
                map.put("appid", obj);
            }
        } else {
            map.getClass();
            obj = this.AFLoggerLogLevel.values;
            if (obj != null) {
                map.put("appid", obj);
            }
        }
        String str = this.AFLoggerLogLevel.stop;
        if (str != null) {
            if (str.length() != 3) {
                AFLogger aFLogger = AFLogger.INSTANCE;
                LogTag logTag = LogTag.GENERAL;
                StringBuilder sb = new StringBuilder("WARNING: currency code should be 3 characters!!! '");
                sb.append(str);
                sb.append("' is not a legal value.");
                AFLoggerBase.w$default(aFLogger, logTag, sb.toString(), false, 4, null);
            }
            map.put("currency", str);
        }
        map.put("isUpdate", Boolean.valueOf(this.AFLoggerLogLevel.getEntries));
        Object obj3 = this.AFLoggerLogLevel.getSdkVersion;
        if (obj3 != null) {
            map.put("customData", obj3);
        }
        Object obj4 = this.AFLoggerLogLevel.valueOf;
        if (obj4 != null) {
            int i4 = AppsFlyerLib + 65;
            getLevel = i4 % 128;
            if (i4 % 2 == 0) {
                map.put("appUserId", obj4);
                throw null;
            }
            map.put("appUserId", obj4);
        }
        AFb1rSDK aFb1rSDK = this.AFLoggerLogLevel.w;
        if (aFb1rSDK != null) {
            int i5 = getLevel + 47;
            AppsFlyerLib = i5 % 128;
            if (i5 % 2 != 0) {
                obj2 = aFb1rSDK.AFKeystoreWrapper;
                int i6 = 69 / 0;
                if (obj2 == null) {
                    return;
                }
            } else {
                obj2 = aFb1rSDK.AFKeystoreWrapper;
                if (obj2 == null) {
                    return;
                }
            }
            map.put("sharing_filter", obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x004a  */
    /* JADX WARN: Code duplicated, block: B:12:0x0059  */
    /* JADX WARN: Code duplicated, block: B:7:0x003b  */
    /* JADX WARN: Code duplicated, block: B:9:0x003f  */
    @Override // com.appsflyer.internal.AFg1rSDK
    public final void registerClient(AFh1pSDK aFh1pSDK) {
        int i2;
        aFh1pSDK.getClass();
        Map<String, Object> map = aFh1pSDK.d;
        boolean z = false;
        if (aFh1pSDK.v == null) {
            int i3 = (getLevel + 105) % 128;
            AppsFlyerLib = i3;
            if (aFh1pSDK.w == null) {
                getLevel = (i3 + 113) % 128;
                unregisterClient(new Object[]{this, aFh1pSDK, this.AFLoggerLogLevel.v}, -2092575724, 2092575725, System.identityHashCode(this));
                AppsFlyerLib = (getLevel + 41) % 128;
            } else if (!(aFh1pSDK instanceof AFh1eSDK)) {
                i2 = getLevel + 1;
                AppsFlyerLib = i2 % 128;
                if (i2 % 2 != 0) {
                    map.getClass();
                    String str = aFh1pSDK.v;
                    str.getClass();
                    AFKeystoreWrapper(map, str);
                    int i4 = 40 / 0;
                } else {
                    map.getClass();
                    String str2 = aFh1pSDK.v;
                    str2.getClass();
                    AFKeystoreWrapper(map, str2);
                }
            }
        } else if (!(aFh1pSDK instanceof AFh1eSDK)) {
            i2 = getLevel + 1;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 != 0) {
                map.getClass();
                String str3 = aFh1pSDK.v;
                str3.getClass();
                AFKeystoreWrapper(map, str3);
                int i5 = 40 / 0;
            } else {
                map.getClass();
                String str4 = aFh1pSDK.v;
                str4.getClass();
                AFKeystoreWrapper(map, str4);
            }
        }
        AFd1bSDK aFd1bSDK = AFd1bSDK.CONVERSION;
        AFd1bSDK aFd1bSDK2 = AFd1bSDK.LAUNCH;
        if (CollectionsKt.u(CollectionsKt.P(aFd1bSDK, aFd1bSDK2, AFd1bSDK.INAPP), aFh1pSDK.AFKeystoreWrapper())) {
            int i6 = AppsFlyerLib + 1;
            getLevel = i6 % 128;
            if (i6 % 2 == 0) {
                map.getClass();
                unregisterClient(new Object[]{this, map}, -1009892585, 1009892590, System.identityHashCode(this));
                throw null;
            }
            map.getClass();
            unregisterClient(new Object[]{this, map}, -1009892585, 1009892590, System.identityHashCode(this));
        }
        if (CollectionsKt.u(CollectionsKt.P(aFd1bSDK, aFd1bSDK2, AFd1bSDK.ATTR), aFh1pSDK.AFKeystoreWrapper())) {
            map.getClass();
            unregisterClient(new Object[]{this, map}, 1429136643, -1429136643, System.identityHashCode(this));
        }
        map.getClass();
        setOaidData(map);
        valueOf(map);
        values(map);
        AFKeystoreWrapper(map);
        if (aFh1pSDK.v == null && aFh1pSDK.w == null) {
            z = true;
        }
        AFKeystoreWrapper(map, z);
        onPause(map);
        getInstance(map);
        AFLogger(map, aFh1pSDK);
        map.put("af_events_api", "1");
    }

    private void afDebugLog(Map<String, Object> map) {
        unregisterClient(new Object[]{this, map}, -1009892585, 1009892590, System.identityHashCode(this));
    }

    private final void afInfoLog(Map<String, Object> map) {
        unregisterClient(new Object[]{this, map}, 884869374, -884869365, System.identityHashCode(this));
    }

    private boolean i() {
        int i2 = getLevel + 93;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        String strD = this.f22647e.d("sentSuccessfully");
        if (i3 == 0) {
            return Boolean.parseBoolean(strD);
        }
        Boolean.parseBoolean(strD);
        throw null;
    }

    private final void v(Map<String, Object> map) {
        try {
            long jLongValue = registerClient().longValue();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map.put("installDate", simpleDateFormat.format(new Date(jLongValue)));
            int i2 = getLevel + 107;
            AppsFlyerLib = i2 % 128;
            if (i2 % 2 != 0) {
                throw null;
            }
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed to retrieve or format app install date", e2, false, false, false, false, 120, null);
        }
    }

    private final void afErrorLog(Map<String, Object> map) {
        getLevel = (AppsFlyerLib + 111) % 128;
        map.put("batteryLevel", String.valueOf(this.unregisterClient.registerClient(this.AFLogger).unregisterClient));
        int i2 = AppsFlyerLib + 47;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    private static String v() {
        return (String) unregisterClient(new Object[0], -137455512, 137455519, (int) System.currentTimeMillis());
    }

    private final void w(Map<String, Object> map) {
        unregisterClient(new Object[]{this, map}, 1429136643, -1429136643, System.identityHashCode(this));
    }

    private final void afWarnLog(Map<String, Object> map) {
        AppsFlyerLib = (getLevel + 65) % 128;
        UiModeManager uiModeManager = (UiModeManager) this.AFLogger.getSystemService(UiModeManager.class);
        if (uiModeManager == null || uiModeManager.getCurrentModeType() != 4) {
            return;
        }
        int i2 = getLevel + 117;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 != 0) {
            map.put("tv", Boolean.TRUE);
            int i3 = 93 / 0;
        } else {
            map.put("tv", Boolean.TRUE);
        }
        getLevel = (AppsFlyerLib + 61) % 128;
    }

    private final SimpleDateFormat AFLogger() {
        int i2 = getLevel + 121;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) this.afDebugLog.getF71699b();
        if (i3 != 0) {
            throw null;
        }
        AppsFlyerLib = (getLevel + 51) % 128;
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SimpleDateFormat AFLoggerLogLevel() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
        int i2 = getLevel + 125;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 == 0) {
            return simpleDateFormat;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void AFLogger(AFh1pSDK aFh1pSDK) {
        getLevel = (AppsFlyerLib + 43) % 128;
        aFh1pSDK.getClass();
        Map<String, Object> map = aFh1pSDK.d;
        map.getClass();
        v(map);
        Map<String, Object> map2 = aFh1pSDK.d;
        map2.getClass();
        unregisterClient(map2, aFh1pSDK.afWarnLog);
        Map<String, Object> map3 = aFh1pSDK.d;
        map3.getClass();
        getLevel(map3);
        Map<String, Object> map4 = aFh1pSDK.d;
        map4.getClass();
        enableTCFDataCollection(map4);
        Map<String, Object> map5 = aFh1pSDK.d;
        map5.getClass();
        setImeiData(map5);
        Map<String, Object> map6 = aFh1pSDK.d;
        map6.getClass();
        AFe1zSDK aFe1zSDKAFKeystoreWrapper = aFh1pSDK.AFKeystoreWrapper();
        aFe1zSDKAFKeystoreWrapper.getClass();
        unregisterClient(map6, aFe1zSDKAFKeystoreWrapper);
        int i2 = getLevel + 63;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void AFLogger(Map<String, Object> map) {
        map.getClass();
        AFi1ySDK aFi1ySDK = this.force.d;
        AFi1xSDK aFi1xSDKUnregisterClient = aFi1ySDK != null ? aFi1ySDK.unregisterClient() : null;
        if (aFi1xSDKUnregisterClient != null) {
            map.put("network", aFi1xSDKUnregisterClient.unregisterClient);
            map.put("ivc", Boolean.valueOf(aFi1xSDKUnregisterClient.d));
            if (this.AFLoggerLogLevel.afErrorLog) {
                return;
            }
            String str = aFi1xSDKUnregisterClient.registerClient;
            if (str != null) {
                map.put("operator", str);
            }
            String str2 = aFi1xSDKUnregisterClient.AFKeystoreWrapper;
            if (str2 != null) {
                int i2 = getLevel + 33;
                AppsFlyerLib = i2 % 128;
                if (i2 % 2 != 0) {
                    map.put("carrier", str2);
                    int i3 = 22 / 0;
                    return;
                } else {
                    map.put("carrier", str2);
                    return;
                }
            }
            getLevel = (AppsFlyerLib + 53) % 128;
        }
    }

    private static /* synthetic */ Object AFLogger(Object[] objArr) {
        AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
        Map map = (Map) objArr[1];
        int i2 = getLevel + 49;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            map.put("is_pc", Boolean.valueOf(aFg1oSDK.AFLogger.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
            return null;
        }
        map.getClass();
        map.put("is_pc", Boolean.valueOf(aFg1oSDK.AFLogger.getApplicationContext().getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")));
        throw null;
    }

    private static String AFLogger(String str) {
        getLevel = (AppsFlyerLib + 69) % 128;
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            objInvoke.getClass();
            return (String) objInvoke;
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.DEVICE_DATA;
            String message = th.getMessage();
            if (message == null) {
                AppsFlyerLib = (getLevel + 113) % 128;
                message = "Failed to retrieve system property via reflection";
            }
            AFLoggerBase.e$default(aFLogger, logTag, message, th, false, false, false, false, 120, null);
            return null;
        }
    }

    private static boolean AFLogger(File file) {
        int i2 = AppsFlyerLib + 29;
        int i3 = i2 % 128;
        getLevel = i3;
        if (i2 % 2 == 0) {
            throw null;
        }
        if (file == null) {
            return true;
        }
        int i4 = i3 + 115;
        AppsFlyerLib = i4 % 128;
        if (i4 % 2 == 0) {
            return !file.exists();
        }
        file.exists();
        throw null;
    }

    private static void AFLogger(Map<String, Object> map, AFh1pSDK aFh1pSDK) {
        map.getClass();
        aFh1pSDK.getClass();
        String str = aFh1pSDK.v;
        if (str != null) {
            map.put("eventName", str);
            Map map2 = aFh1pSDK.AFKeystoreWrapper;
            if (map2 == null) {
                map2 = new HashMap();
            }
            map.put("eventValue", new JSONObject(map2).toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0076  */
    private void d(Map<String, Object> map, boolean z) {
        map.getClass();
        HashMap map2 = new HashMap();
        map2.put("cpu_abi", AFLogger("ro.product.cpu.abi"));
        map2.put("cpu_abi2", AFLogger("ro.product.cpu.abi2"));
        map2.put("arch", AFLogger("os.arch"));
        map2.put("build_display_id", AFLogger("ro.build.display.id"));
        if (z) {
            int i2 = AppsFlyerLib + 5;
            getLevel = i2 % 128;
            if (i2 % 2 == 0) {
                unregisterClient(new Object[]{this, map2}, 1798824484, -1798824476, System.identityHashCode(this));
                if (this.f22648i.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) <= 5) {
                    map2.putAll(this.registerClient.AFLogger());
                }
            } else {
                unregisterClient(new Object[]{this, map2}, 1798824484, -1798824476, System.identityHashCode(this));
                if (this.f22648i.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) <= 2) {
                    map2.putAll(this.registerClient.AFLogger());
                }
            }
        }
        map2.put("dim", this.AFKeystoreWrapper.registerClient(this.AFLogger));
        map.put("deviceData", map2);
        int i3 = AppsFlyerLib + 35;
        getLevel = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    private static /* synthetic */ Object AFKeystoreWrapper(Object[] objArr) {
        AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
        Map map = (Map) objArr[1];
        String str = aFg1oSDK.AFLoggerLogLevel.getOutOfStore;
        if (str == null) {
            int i2 = AppsFlyerLib + 17;
            getLevel = i2 % 128;
            if (i2 % 2 != 0) {
                return null;
            }
            throw null;
        }
        map.put("net_token", str);
        AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REMOTE_CONTROL, "Network token added to event", false, 4, null);
        return null;
    }

    private static long AFKeystoreWrapper() {
        int i2 = getLevel + 99;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        getLevel = (AppsFlyerLib + 23) % 128;
        return jCurrentTimeMillis;
    }

    private void AFKeystoreWrapper(Map<String, Object> map, boolean z) {
        int i2 = AppsFlyerLib + 47;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            map.getClass();
            map.put("platformextension", this.d.unregisterClient());
            int i3 = 65 / 0;
            if (!z) {
                return;
            }
        } else {
            map.getClass();
            map.put("platformextension", this.d.unregisterClient());
            if (!z) {
                return;
            }
        }
        map.put("platform_extension_v2", this.d.AFLogger());
        getLevel = (AppsFlyerLib + 109) % 128;
    }

    private String d() throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, CertificateException {
        int i2 = AppsFlyerLib + 55;
        getLevel = i2 % 128;
        int i3 = i2 % 2;
        Context context = this.AFLogger;
        if (i3 != 0) {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            packageManager.getClass();
            String packageName = this.AFLogger.getApplicationContext().getPackageName();
            packageName.getClass();
            return AndroidExtensionsKt.signature(packageManager, packageName);
        }
        PackageManager packageManager2 = context.getApplicationContext().getPackageManager();
        packageManager2.getClass();
        String packageName2 = this.AFLogger.getApplicationContext().getPackageName();
        packageName2.getClass();
        AndroidExtensionsKt.signature(packageManager2, packageName2);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:22:0x0047 A[DONT_INVERT] */
    private final String d(String str) {
        int i2 = AppsFlyerLib + 49;
        int i3 = i2 % 128;
        getLevel = i3;
        int i4 = i2 % 2;
        AFc1eSDK aFc1eSDK = this.AFLoggerLogLevel;
        if (i4 != 0) {
            if (aFc1eSDK.afWarnLog) {
                if (str != null) {
                    int i5 = i3 + 39;
                    AppsFlyerLib = i5 % 128;
                    if (i5 % 2 == 0) {
                        if (str.length() != 0) {
                            if (str == null) {
                                str = null;
                            }
                        }
                    } else {
                        str.length();
                        throw null;
                    }
                }
                int i6 = AppsFlyerLib + 79;
                getLevel = i6 % 128;
                if (i6 % 2 != 0) {
                    if (afInfoLog()) {
                        str = afErrorLog();
                    } else {
                        str = null;
                    }
                } else {
                    afInfoLog();
                    throw null;
                }
            } else if (str == null) {
                str = null;
            }
            AppsFlyerLib = (getLevel + 103) % 128;
            return str;
        }
        boolean z = aFc1eSDK.afWarnLog;
        throw null;
    }

    private void AFKeystoreWrapper(Map<String, Object> map, String str) {
        int i2 = AppsFlyerLib + 13;
        getLevel = i2 % 128;
        try {
            if (i2 % 2 != 0) {
                map.getClass();
                str.getClass();
                String strD = this.f22647e.d("prev_event_name");
                if (strD != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("prev_event_timestamp", this.f22647e.unregisterClient("prev_event_timestamp", -1L));
                    jSONObject.put("prev_event_name", strD);
                    map.put("prev_event", jSONObject);
                    AppsFlyerLib = (getLevel + 31) % 128;
                }
                this.f22647e.d("prev_event_name", str);
                this.f22647e.AFLogger("prev_event_timestamp", System.currentTimeMillis());
                return;
            }
            map.getClass();
            str.getClass();
            this.f22647e.d("prev_event_name");
            throw null;
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Failed to save previous event metadata to preferences", e2, false, false, false, false, 120, null);
        }
    }

    private static /* synthetic */ Object d(Object[] objArr) {
        AFh1pSDK aFh1pSDK = (AFh1pSDK) objArr[1];
        aFh1pSDK.getClass();
        Map<String, Object> map = aFh1pSDK.d;
        map.getClass();
        map.put("open_referrer", aFh1pSDK.f22653e);
        String str = aFh1pSDK.afInfoLog;
        if (str == null) {
            return null;
        }
        AppsFlyerLib = (getLevel + 35) % 128;
        if (StringsKt.w(str)) {
            return null;
        }
        int i2 = getLevel + 33;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        String str2 = aFh1pSDK.afInfoLog;
        if (i3 != 0) {
            map.put("af_web_referrer", str2);
            int i4 = 75 / 0;
            return null;
        }
        map.put("af_web_referrer", str2);
        return null;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void AFKeystoreWrapper(Map<String, Object> map) {
        String strAFLogger;
        int i2 = getLevel + 83;
        AppsFlyerLib = i2 % 128;
        if (i2 % 2 != 0) {
            map.getClass();
            strAFLogger = AFb1jSDK.AFLogger(this.f22648i.AFKeystoreWrapper);
            int i3 = 2 / 0;
            if (strAFLogger == null) {
                return;
            }
        } else {
            map.getClass();
            strAFLogger = AFb1jSDK.AFLogger(this.f22648i.AFKeystoreWrapper);
            if (strAFLogger == null) {
                return;
            }
        }
        map.put("uid", strAFLogger);
        if (this.f22648i.AFKeystoreWrapper.AFKeystoreWrapper("CUSTOM_INSTALL_ID_APPLIED")) {
            map.put("custom_install_id", Boolean.TRUE);
            getLevel = (AppsFlyerLib + 119) % 128;
        }
    }

    private String force() {
        String strD = this.f22647e.d("INSTALL_STORE");
        if (strD != null) {
            getLevel = (AppsFlyerLib + 27) % 128;
            return strD;
        }
        String strE = e();
        if (strE != null) {
            int i2 = AppsFlyerLib + 123;
            getLevel = i2 % 128;
            int i3 = i2 % 2;
            AFc1kSDK aFc1kSDK = this.f22647e;
            if (i3 == 0) {
                aFc1kSDK.d("INSTALL_STORE", strE);
                int i4 = 97 / 0;
                return strE;
            }
            aFc1kSDK.d("INSTALL_STORE", strE);
        }
        return strE;
    }

    private static String d(File file, String str) {
        return (String) unregisterClient(new Object[]{file, str}, 238881636, -238881626, (int) System.currentTimeMillis());
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void d(AFh1pSDK aFh1pSDK) {
        unregisterClient(new Object[]{this, aFh1pSDK}, 102039780, -102039774, System.identityHashCode(this));
    }

    private final void force(Map<String, Object> map) {
        unregisterClient(new Object[]{this, map}, 1798824484, -1798824476, System.identityHashCode(this));
    }

    private static File AFKeystoreWrapper(String str) {
        if (str == null) {
            return null;
        }
        AppsFlyerLib = (getLevel + 77) % 128;
        try {
            boolean z = false;
            if (StringsKt.a0(str).toString().length() > 0) {
                int i2 = AppsFlyerLib;
                int i3 = i2 + 55;
                getLevel = i3 % 128;
                z = i3 % 2 != 0;
                getLevel = (i2 + 21) % 128;
            }
            if (z) {
                return new File(StringsKt.a0(str).toString());
            }
            return null;
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.PREINSTALL;
            String message = th.getMessage();
            if (message == null) {
                message = "Failed to create File object from path";
            }
            AFLoggerBase.e$default(aFLogger, logTag, message, th, false, false, false, false, 120, null);
            return null;
        }
    }

    private void AFKeystoreWrapper(AFh1pSDK aFh1pSDK, AFb1qSDK aFb1qSDK) {
        unregisterClient(new Object[]{this, aFh1pSDK, aFb1qSDK}, -2092575724, 2092575725, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void registerClient(Map<String, Object> map) {
        Object failure;
        AFLogger aFLogger;
        LogTag logTag;
        int i2;
        Object obj;
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        map.getClass();
        String str2 = this.AFLoggerLogLevel.unregisterClient;
        if (str2 != null) {
            int i3 = getLevel + 43;
            AppsFlyerLib = i3 % 128;
            if (i3 % 2 == 0) {
                if (map.get("af_deeplink") != null) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.GENERAL, "Skipping push payload processing: deeplink already extracted from intent", false, 4, null);
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        JSONObject jSONObject = new JSONObject(str2);
                        jSONObject.put("isPush", "true");
                        map.put("af_deeplink", jSONObject.toString());
                        failure = Unit.f71739a;
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                    Throwable thA = Result.a(failure);
                    if (thA != null) {
                        int i4 = AppsFlyerLib + 17;
                        getLevel = i4 % 128;
                        if (i4 % 2 == 0) {
                            aFLogger = AFLogger.INSTANCE;
                            logTag = LogTag.GENERAL;
                            i2 = 27;
                            obj = null;
                            str = "Exception while trying to create JSONObject from pushPayload";
                            z = true;
                            z2 = false;
                            z3 = false;
                            z4 = true;
                        } else {
                            aFLogger = AFLogger.INSTANCE;
                            logTag = LogTag.GENERAL;
                            i2 = 120;
                            obj = null;
                            str = "Exception while trying to create JSONObject from pushPayload";
                            z = false;
                            z2 = false;
                            z3 = false;
                            z4 = false;
                        }
                        AFLoggerBase.e$default(aFLogger, logTag, str, thA, z, z2, z3, z4, i2, obj);
                    }
                }
            } else {
                map.get("af_deeplink");
                throw null;
            }
        } else {
            getLevel = (AppsFlyerLib + 87) % 128;
        }
        this.AFLoggerLogLevel.unregisterClient = null;
    }

    private void registerClient(Map<String, Object> map, String str) {
        map.getClass();
        AFc1eSDK aFc1eSDK = this.AFLoggerLogLevel;
        if (aFc1eSDK.afInfoLog) {
            int i2 = AppsFlyerLib + 7;
            getLevel = i2 % 128;
            if (i2 % 2 != 0) {
                map.put("deviceTrackingDisabled", "true");
                return;
            } else {
                map.put("deviceTrackingDisabled", "true");
                int i3 = 41 / 0;
                return;
            }
        }
        String str2 = aFc1eSDK.AFLoggerLogLevel;
        if (str2 != null && str2.length() != 0) {
            AppsFlyerLib = (getLevel + 39) % 128;
            map.put("imei", str2);
        }
        String strD = d(str);
        if (strD != null) {
            AppsFlyerLib = (getLevel + 47) % 128;
            this.f22647e.d("androidIdCached", strD);
            map.put("android_id", strD);
        } else {
            AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.ADVERTISING_ID, "Android ID collection skipped: not available or not permitted", false, 4, null);
        }
        AFb1lSDK aFb1lSDKUnregisterClient = AFb1iSDK.unregisterClient(this.AFLogger);
        if (aFb1lSDKUnregisterClient != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("isManual", aFb1lSDKUnregisterClient.unregisterClient);
            linkedHashMap.put("val", aFb1lSDKUnregisterClient.d);
            Boolean bool = aFb1lSDKUnregisterClient.AFLogger;
            if (bool != null) {
                int i4 = AppsFlyerLib + 103;
                getLevel = i4 % 128;
                if (i4 % 2 != 0) {
                    linkedHashMap.put("isLat", bool);
                } else {
                    linkedHashMap.put("isLat", bool);
                    throw null;
                }
            }
            map.put("oaid", linkedHashMap);
            int i5 = AppsFlyerLib + 43;
            getLevel = i5 % 128;
            if (i5 % 2 == 0) {
                throw null;
            }
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void unregisterClient(Map<String, Object> map) {
        map.getClass();
        String str = this.AFLoggerLogLevel.AFLogger;
        if (str != null) {
            map.put("email_hashed", str);
            getLevel = (AppsFlyerLib + 27) % 128;
        }
        String str2 = this.AFLoggerLogLevel.d;
        if (str2 != null) {
            map.put("phone_number_hashed", str2);
        }
        String str3 = this.AFLoggerLogLevel.registerClient;
        if (str3 != null) {
            map.put("phone_number_e164_hashed", str3);
            getLevel = (AppsFlyerLib + 45) % 128;
        }
        String str4 = this.AFLoggerLogLevel.AFKeystoreWrapper;
        if (str4 != null) {
            getLevel = (AppsFlyerLib + 53) % 128;
            map.put("first_name_hashed", str4);
        }
        String str5 = this.AFLoggerLogLevel.f22607e;
        if (str5 != null) {
            int i2 = AppsFlyerLib + 99;
            getLevel = i2 % 128;
            if (i2 % 2 == 0) {
                map.put("last_name_hashed", str5);
                int i3 = 21 / 0;
            } else {
                map.put("last_name_hashed", str5);
            }
        }
        Long l = this.AFLoggerLogLevel.f22608i;
        if (l != null) {
            map.put("fb_login_id", Long.valueOf(l.longValue()));
        }
    }

    private Long registerClient() {
        int i2 = AppsFlyerLib + 15;
        getLevel = i2 % 128;
        int i3 = i2 % 2;
        PackageInfo packageInfoR_ = this.f22648i.r_();
        if (i3 != 0) {
            return Long.valueOf(packageInfoR_.firstInstallTime);
        }
        int i4 = 28 / 0;
        return Long.valueOf(packageInfoR_.firstInstallTime);
    }

    private static /* synthetic */ Object registerClient(Object[] objArr) {
        AppsFlyerLib = (getLevel + 83) % 128;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = AppsFlyerLib + 45;
        getLevel = i2 % 128;
        if (i2 % 2 != 0) {
            return Long.valueOf(jCurrentTimeMillis);
        }
        throw null;
    }

    private static String registerClient(AFc1kSDK aFc1kSDK, String str) {
        AppsFlyerLib = (getLevel + 81) % 128;
        String strD = aFc1kSDK.d("CACHED_CHANNEL");
        if (strD != null) {
            AppsFlyerLib = (getLevel + 89) % 128;
            return strD;
        }
        aFc1kSDK.d("CACHED_CHANNEL", str);
        int i2 = AppsFlyerLib + 15;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 34 / 0;
        }
        return str;
    }

    private final String registerClient(String str) {
        AppsFlyerLib = (getLevel + 125) % 128;
        String strAFLogger = this.f22648i.AFLogger(str);
        AppsFlyerLib = (getLevel + 69) % 128;
        return strAFLogger;
    }

    private String e() {
        int i2 = getLevel + 29;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        AFc1eSDK aFc1eSDK = this.AFLoggerLogLevel;
        if (i3 == 0) {
            String strRegisterClient = aFc1eSDK.getLevel;
            if (strRegisterClient == null) {
                strRegisterClient = registerClient("AF_STORE");
            }
            int i4 = AppsFlyerLib + 41;
            getLevel = i4 % 128;
            if (i4 % 2 == 0) {
                int i5 = 85 / 0;
            }
            return strRegisterClient;
        }
        String str = aFc1eSDK.getLevel;
        throw null;
    }

    private void e(Map<String, Object> map) {
        map.getClass();
        AFh1xSDK aFh1xSDK = this.v;
        HashMap map2 = new HashMap(aFh1xSDK.AFLogger);
        aFh1xSDK.AFLogger.clear();
        aFh1xSDK.AFKeystoreWrapper.AFLogger("gcd");
        if (!map2.isEmpty()) {
            AppsFlyerLib = (getLevel + 39) % 128;
            AFj1iSDK.AFLogger(map).put("gcd", map2);
        } else {
            getLevel = (AppsFlyerLib + 13) % 128;
        }
    }

    private final void unregisterClient(Map<String, Object> map, int i2) {
        String string;
        Integer intOrNull;
        getLevel = (AppsFlyerLib + 17) % 128;
        try {
            if (this.f22648i.r_().versionCode > this.f22647e.AFLogger("versionCode", 0)) {
                this.f22647e.d("versionCode", this.f22648i.r_().versionCode);
            }
            map.put("app_version_code", String.valueOf(this.f22648i.r_().versionCode));
            map.put("app_version_name", this.f22648i.r_().versionName);
            map.put("targetSDKver", Integer.valueOf(this.f22648i.d.d.getApplicationInfo().targetSdkVersion));
            map.put("date1", AFLogger().format(new Date(registerClient().longValue())));
            map.put("date2", AFLogger().format(new Date(this.f22648i.r_().lastUpdateTime)));
            Object obj = map.get(com.batch.android.u0.b.a.f24076a);
            if (obj == null || (string = obj.toString()) == null || (intOrNull = StringsKt.toIntOrNull(string)) == null) {
                AppsFlyerLib = (getLevel + 125) % 128;
            } else {
                int i3 = getLevel + 9;
                AppsFlyerLib = i3 % 128;
                if (i3 % 2 != 0) {
                    i2 = intOrNull.intValue();
                    int i4 = 25 / 0;
                } else {
                    i2 = intOrNull.intValue();
                }
                getLevel = (AppsFlyerLib + 33) % 128;
            }
            Object[] objArr = new Object[1];
            a(Color.rgb(0, 0, 0) + 16777216, (char) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 15023), (ViewConfiguration.getEdgeSlop() >> 16) + 15, objArr);
            String strIntern = ((String) objArr[0]).intern();
            SimpleDateFormat simpleDateFormatAFLogger = AFLogger();
            simpleDateFormatAFLogger.getClass();
            map.put(strIntern, AFLogger(simpleDateFormatAFLogger, i2));
        } catch (Throwable th) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.DEVICE_DATA, "Failed to collect app version and update date information", th, false, true, false, false, 104, null);
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void unregisterClient(Map<String, Object> map, int i2, int i3) {
        getLevel = (AppsFlyerLib + 97) % 128;
        map.getClass();
        map.put(com.batch.android.u0.b.a.f24076a, String.valueOf(i2));
        map.put("iaecounter", String.valueOf(i3));
        boolean z = false;
        if (!i()) {
            int i4 = getLevel + 27;
            AppsFlyerLib = i4 % 128;
            if (i4 % 2 == 0) {
                z = true;
            }
        }
        map.put("isFirstCall", String.valueOf(z));
        getLevel = (AppsFlyerLib + 125) % 128;
    }

    private static /* synthetic */ Object unregisterClient(Object[] objArr) {
        AFg1oSDK aFg1oSDK = (AFg1oSDK) objArr[0];
        AFh1pSDK aFh1pSDK = (AFh1pSDK) objArr[1];
        AFb1qSDK aFb1qSDK = (AFb1qSDK) objArr[2];
        int i2 = AppsFlyerLib + 89;
        getLevel = i2 % 128;
        if (i2 % 2 != 0) {
            aFh1pSDK.getClass();
            Map<String, Object> map = aFh1pSDK.d;
            if (aFh1pSDK.AFKeystoreWrapper() == AFd1bSDK.CONVERSION) {
                int i3 = AppsFlyerLib + 9;
                getLevel = i3 % 128;
                if (i3 % 2 != 0) {
                    map.getClass();
                    aFg1oSDK.afErrorLog(map);
                    aFg1oSDK.afWarnLog(map);
                    unregisterClient(new Object[]{aFg1oSDK, map}, 884869374, -884869365, System.identityHashCode(aFg1oSDK));
                    AFa1uSDK.unregisterClient(aFg1oSDK.afWarnLog, aFg1oSDK.f22648i, aFg1oSDK.afErrorLog);
                } else {
                    map.getClass();
                    aFg1oSDK.afErrorLog(map);
                    aFg1oSDK.afWarnLog(map);
                    unregisterClient(new Object[]{aFg1oSDK, map}, 884869374, -884869365, System.identityHashCode(aFg1oSDK));
                    AFa1uSDK.unregisterClient(aFg1oSDK.afWarnLog, aFg1oSDK.f22648i, aFg1oSDK.afErrorLog);
                    throw null;
                }
            }
            map.getClass();
            unregisterClient(new Object[]{aFg1oSDK, map}, 291205159, -291205155, System.identityHashCode(aFg1oSDK));
            aFg1oSDK.i(map);
            aFg1oSDK.e(map);
            aFg1oSDK.getEntries(map);
            if (aFb1qSDK != null) {
                AppsFlyerLib = (getLevel + 109) % 128;
                aFb1qSDK.AFLogger(map);
                getLevel = (AppsFlyerLib + 53) % 128;
            }
            return null;
        }
        aFh1pSDK.getClass();
        Map<String, Object> map2 = aFh1pSDK.d;
        aFh1pSDK.AFKeystoreWrapper();
        AFd1bSDK.Companion companion = AFd1bSDK.INSTANCE;
        throw null;
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void unregisterClient(Map<String, Object> map, AFe1zSDK aFe1zSDK) {
        getLevel = (AppsFlyerLib + 19) % 128;
        map.getClass();
        aFe1zSDK.getClass();
        if (CollectionsKt.u((List) unregisterClient(new Object[0], 1713251753, -1713251742, (int) System.currentTimeMillis()), aFe1zSDK)) {
            AFc1eSDK aFc1eSDK = this.AFLoggerLogLevel;
            if (aFc1eSDK.setCustomerUserId) {
                map.put("app_set_id", MapsKt.h(new Pair("app_set_id_disabled", Boolean.TRUE)));
                if (this.AFLoggerLogLevel.setUserEmail != null) {
                    getLevel = (AppsFlyerLib + 59) % 128;
                    AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.APP_SET_ID, "App Set Id was collected, but will not be included in the payload.To prevent collection entirely, call disableAppSetId() before initializing the SDK.", false, 4, null);
                    return;
                } else {
                    AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.APP_SET_ID, "App Set ID collection is disabled. Skipping inclusion in the event payload.", false, 4, null);
                    return;
                }
            }
            AFc1rSDK aFc1rSDK = aFc1eSDK.setUserEmail;
            if (aFc1rSDK != null) {
                map.put("app_set_id", MapsKt.i(new Pair("scope", Integer.valueOf(aFc1rSDK.AFKeystoreWrapper)), new Pair(com.batch.android.s.b.a.f24015b, aFc1rSDK.unregisterClient)));
            }
        }
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final void unregisterClient(AFh1pSDK aFh1pSDK) {
        unregisterClient(new Object[]{this, aFh1pSDK}, 1765853168, -1765853166, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFg1rSDK
    public final long unregisterClient() {
        return ((Long) unregisterClient(new Object[]{this}, -2087428651, 2087428654, System.identityHashCode(this))).longValue();
    }
}
