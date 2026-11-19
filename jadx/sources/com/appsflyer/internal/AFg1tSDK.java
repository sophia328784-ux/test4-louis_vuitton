package com.appsflyer.internal;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.share.attribution.AppsFlyerRequestListener;
import defpackage.fc;
import defpackage.o60;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
public final class AFg1tSDK implements AFf1aSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFLoggerLogLevel = -1754894492;
    private static int AppsFlyerLib = 0;
    private static byte[] afDebugLog = {114, 125, -100, 112, 127, -119, 117, -124, 100, -120, 116, 113};
    private static int afErrorLog = -2119275651;
    private static int afInfoLog = -929107346;
    private static short[] afWarnLog = null;
    private static int getLevel = 1;
    private final AFc1bSDK AFKeystoreWrapper;
    private final AFc1iSDK AFLogger;
    private final AFa1aSDK d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AFf1fSDK f22649e;
    private final ScheduledExecutorService force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AFg1rSDK f22650i;
    private final AFc1eSDK registerClient;
    private final AFi1aSDK unregisterClient;
    private final AppsFlyerProperties v;
    private final AFd1zSDK w;

    public AFg1tSDK(AFc1bSDK aFc1bSDK, AFa1aSDK aFa1aSDK, AFi1aSDK aFi1aSDK, AFc1iSDK aFc1iSDK, AFc1eSDK aFc1eSDK, AFd1zSDK aFd1zSDK, AFg1rSDK aFg1rSDK, AFf1fSDK aFf1fSDK, AppsFlyerProperties appsFlyerProperties, ScheduledExecutorService scheduledExecutorService) {
        aFc1bSDK.getClass();
        aFa1aSDK.getClass();
        aFi1aSDK.getClass();
        aFc1iSDK.getClass();
        aFc1eSDK.getClass();
        aFd1zSDK.getClass();
        aFg1rSDK.getClass();
        aFf1fSDK.getClass();
        appsFlyerProperties.getClass();
        scheduledExecutorService.getClass();
        this.AFKeystoreWrapper = aFc1bSDK;
        this.d = aFa1aSDK;
        this.unregisterClient = aFi1aSDK;
        this.AFLogger = aFc1iSDK;
        this.registerClient = aFc1eSDK;
        this.w = aFd1zSDK;
        this.f22650i = aFg1rSDK;
        this.f22649e = aFf1fSDK;
        this.v = appsFlyerProperties;
        this.force = scheduledExecutorService;
    }

    private boolean AFKeystoreWrapper() {
        int i2 = getLevel + 43;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        AFc1eSDK aFc1eSDK = this.registerClient;
        if (i3 == 0 ? aFc1eSDK.getInstance <= 0 : aFc1eSDK.getInstance <= 1) {
            if (this.f22649e.AFLogger()) {
                return false;
            }
            AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, "Sending first launch for this session!", false, 4, null);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.registerClient.getInstance;
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", locale);
        long j2 = this.registerClient.getInstance;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(new Date(j2));
        long j3 = this.registerClient.onPause;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str2 = simpleDateFormat.format(new Date(j3));
        if (jCurrentTimeMillis < this.registerClient.setDebugLog) {
            int i4 = getLevel + 83;
            AppsFlyerLib = i4 % 128;
            int i5 = i4 % 2;
            AFf1fSDK aFf1fSDK = this.f22649e;
            if (i5 != 0) {
                aFf1fSDK.AFLogger();
                throw null;
            }
            if (!aFf1fSDK.AFLogger()) {
                AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", Arrays.copyOf(new Object[]{str, str2, Long.valueOf(jCurrentTimeMillis), Long.valueOf(this.registerClient.setDebugLog)}, 4)), false, 4, null);
                return true;
            }
        }
        if (this.f22649e.AFLogger()) {
            return false;
        }
        getLevel = (AppsFlyerLib + 59) % 128;
        AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", Arrays.copyOf(new Object[]{str, str2, Long.valueOf(jCurrentTimeMillis)}, 3)), false, 4, null);
        getLevel = (AppsFlyerLib + 13) % 128;
        return false;
    }

    private void AFLogger(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        AFc1bSDK aFc1bSDK = this.AFKeystoreWrapper;
        AFh1pSDK aFh1pSDKUnregisterClient = aFh1pSDK.unregisterClient(this.AFLogger.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0));
        aFh1pSDKUnregisterClient.getClass();
        AFa1pSDK aFa1pSDK = new AFa1pSDK(aFc1bSDK, aFh1pSDKUnregisterClient, this.d.d());
        long j2 = 0;
        if (aFh1pSDK.v == null && aFh1pSDK.w == null) {
            for (Referrer referrer : (Referrer[]) this.unregisterClient.unregisterClient.toArray(new Referrer[0])) {
                AppsFlyerLib = (getLevel + 113) % 128;
                if (referrer.getState() == Referrer.State.STARTED) {
                    getLevel = (AppsFlyerLib + 95) % 128;
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REFERRER, fc.h("Failed to get ", referrer.getSource(), " referrer, wait ..."), false, 4, null);
                    j2 = 500;
                }
            }
            if (this.d.registerClient()) {
                int i2 = getLevel + 15;
                AppsFlyerLib = i2 % 128;
                if (i2 % 2 != 0) {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REFERRER, "fetching Facebook deferred AppLink data, wait ...", true, 4, null);
                } else {
                    AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REFERRER, "fetching Facebook deferred AppLink data, wait ...", false, 4, null);
                }
                j2 = 500;
            }
            if (this.f22649e.d()) {
                int i3 = AppsFlyerLib + 5;
                getLevel = i3 % 128;
                if (i3 % 2 == 0) {
                    throw null;
                }
                j2 = 500;
            }
        }
        AFj1iSDK.AFLogger(this.force, aFa1pSDK, j2, TimeUnit.MILLISECONDS);
    }

    private static void a(int i2, short s, byte b2, int i3, int i4, Object[] objArr) {
        int i5;
        boolean z;
        AFk1rSDK aFk1rSDK = new AFk1rSDK();
        StringBuilder sb = new StringBuilder();
        int i6 = i2 + ((int) (((long) afErrorLog) ^ (-6851507024414479503L)));
        if (i6 == -1) {
            $11 = ($10 + 21) % 128;
            i5 = 1;
        } else {
            $10 = ($11 + 23) % 128;
            i5 = 0;
        }
        if (i5 != 0) {
            byte[] bArr = afDebugLog;
            if (bArr != null) {
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                int i7 = 0;
                while (i7 < length) {
                    int i8 = $11 + 93;
                    $10 = i8 % 128;
                    if (i8 % 2 != 0) {
                        bArr2[i7] = (byte) (((long) bArr[i7]) * (-6851507024414479503L));
                    } else {
                        bArr2[i7] = (byte) (((long) bArr[i7]) ^ (-6851507024414479503L));
                        i7++;
                    }
                }
                bArr = bArr2;
            }
            i6 = bArr != null ? (byte) (((byte) (((long) afDebugLog[i4 + ((int) (((long) afInfoLog) ^ (-6851507024414479503L)))]) ^ (-6851507024414479503L))) + ((int) (((long) afErrorLog) ^ (-6851507024414479503L)))) : (short) (((short) (((long) afWarnLog[i4 + ((int) (((long) afInfoLog) ^ (-6851507024414479503L)))]) ^ (-6851507024414479503L))) + ((int) (((long) afErrorLog) ^ (-6851507024414479503L))));
        }
        if (i6 > 0) {
            aFk1rSDK.AFLogger = ((i4 + i6) - 2) + ((int) (((long) afInfoLog) ^ (-6851507024414479503L))) + i5;
            char c2 = (char) (((int) (((long) AFLoggerLogLevel) ^ (-6851507024414479503L))) + i3);
            aFk1rSDK.registerClient = c2;
            sb.append(c2);
            aFk1rSDK.AFKeystoreWrapper = aFk1rSDK.registerClient;
            byte[] bArr3 = afDebugLog;
            if (bArr3 != null) {
                int length2 = bArr3.length;
                byte[] bArr4 = new byte[length2];
                $11 = ($10 + 7) % 128;
                for (int i9 = 0; i9 < length2; i9++) {
                    bArr4[i9] = (byte) (((long) bArr3[i9]) ^ (-6851507024414479503L));
                }
                bArr3 = bArr4;
            }
            if (bArr3 != null) {
                $11 = ($10 + 37) % 128;
                z = true;
            } else {
                z = false;
            }
            aFk1rSDK.d = 1;
            while (aFk1rSDK.d < i6) {
                int i10 = aFk1rSDK.AFLogger;
                if (z) {
                    byte[] bArr5 = afDebugLog;
                    aFk1rSDK.AFLogger = i10 - 1;
                    aFk1rSDK.registerClient = (char) (aFk1rSDK.AFKeystoreWrapper + (((byte) (((byte) (((long) bArr5[i10]) ^ (-6851507024414479503L))) + s)) ^ b2));
                } else {
                    short[] sArr = afWarnLog;
                    aFk1rSDK.AFLogger = i10 - 1;
                    aFk1rSDK.registerClient = (char) (aFk1rSDK.AFKeystoreWrapper + (((short) (((short) (((long) sArr[i10]) ^ (-6851507024414479503L))) + s)) ^ b2));
                }
                sb.append(aFk1rSDK.registerClient);
                aFk1rSDK.AFKeystoreWrapper = aFk1rSDK.registerClient;
                aFk1rSDK.d++;
            }
        }
        objArr[0] = sb.toString();
    }

    private static /* synthetic */ Object registerClient(Object[] objArr) {
        AFg1tSDK aFg1tSDK = (AFg1tSDK) objArr[0];
        AFh1pSDK aFh1pSDK = (AFh1pSDK) objArr[1];
        aFh1pSDK.getClass();
        Map<String, Object> map = aFh1pSDK.d;
        if (!aFg1tSDK.registerClient.afWarnLog) {
            getLevel = (AppsFlyerLib + 9) % 128;
            if (map.get("advertiserId") != null) {
                try {
                    String str = aFg1tSDK.registerClient.force;
                    if (str == null || str.length() == 0) {
                        if (map.remove("android_id") != null) {
                            getLevel = (AppsFlyerLib + 99) % 128;
                            AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.GENERAL, "validateGaidAndAndroidId :: removing: android_id", false, 4, null);
                            return null;
                        }
                    }
                } catch (Exception e2) {
                    AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "failed to remove AndroidID key from params; ", e2, false, false, false, false, 120, null);
                }
            }
        }
        return null;
    }

    private Map<String, Object> unregisterClient(Context context, AFh1pSDK aFh1pSDK) {
        String str;
        context.getClass();
        aFh1pSDK.getClass();
        boolean z = aFh1pSDK.v == null && aFh1pSDK.w == null;
        Map<String, Object> map = aFh1pSDK.d;
        long time = new Date().getTime();
        map.getClass();
        Object[] objArr = new Object[1];
        a(TextUtils.getTrimmedLength(""), (short) View.MeasureSpec.getSize(0), (byte) View.resolveSize(0, 0), (-382206900) - (ViewConfiguration.getMaximumFlingVelocity() >> 16), (-1227921695) - TextUtils.indexOf("", "", 0, 0), objArr);
        map.put(((String) objArr[0]).intern(), String.valueOf(time));
        try {
            if (this.f22649e.AFLogger()) {
                AFLogger.INSTANCE.i(LogTag.GENERAL, "AppsFlyer SDK Reporting has been stopped", true);
            } else {
                if (z) {
                    str = "Launch";
                } else {
                    str = aFh1pSDK.v;
                    AppsFlyerLib = (getLevel + 9) % 128;
                }
                AFLogger.INSTANCE.i(LogTag.GENERAL, "******* sendTrackingWithEvent: " + str, true);
            }
            unregisterClient(context);
            AFc1iSDK aFc1iSDK = this.AFLogger;
            int iAFLogger = aFc1iSDK.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0);
            if (z) {
                iAFLogger++;
                aFc1iSDK.AFKeystoreWrapper.d("appsFlyerCount", iAFLogger);
            }
            AFc1iSDK aFc1iSDK2 = this.AFLogger;
            int iAFLogger2 = aFc1iSDK2.AFKeystoreWrapper.AFLogger("appsFlyerInAppEventCount", 0);
            if (!z) {
                iAFLogger2++;
                aFc1iSDK2.AFKeystoreWrapper.d("appsFlyerInAppEventCount", iAFLogger2);
                AppsFlyerLib = (getLevel + 109) % 128;
            }
            this.f22650i.unregisterClient(map, iAFLogger, iAFLogger2);
        } catch (Throwable th) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Error while preparing to send event", th, true, true, true, false, 64, null);
        }
        int i2 = AppsFlyerLib + 95;
        getLevel = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 74 / 0;
        }
        return map;
    }

    @Override // com.appsflyer.internal.AFf1aSDK
    public final void d(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        int i2 = 1;
        if (AFKeystoreWrapper(aFh1pSDK)) {
            AppsFlyerLib = (getLevel + 97) % 128;
            AFLogger.INSTANCE.d(LogTag.GENERAL, o60.i(this.registerClient.setDebugLog / 1000, "Blocking multiple consecutive Launch events within ", " seconds time window"), true);
            return;
        }
        Context context = this.w.d;
        if (context == null) {
            int i3 = AppsFlyerLib + 59;
            getLevel = i3 % 128;
            if (i3 % 2 == 0) {
                AFLogger.INSTANCE.d(LogTag.ATTRIBUTION, "sendWithEvent - got null context. skipping event/launch.", false);
                return;
            } else {
                AFLogger.INSTANCE.d(LogTag.ATTRIBUTION, "sendWithEvent - got null context. skipping event/launch.", true);
                return;
            }
        }
        AFf1fSDK aFf1fSDK = this.f22649e;
        String str = (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDK}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDK));
        if (str != null && str.length() != 0) {
            AFj1iSDK.AFLogger(this.force, new p(this, aFh1pSDK, context, i2), 0L, TimeUnit.MILLISECONDS);
            return;
        }
        int i4 = (AppsFlyerLib + 61) % 128;
        getLevel = i4;
        AppsFlyerLib = (i4 + 111) % 128;
        AFLogger aFLogger = AFLogger.INSTANCE;
        LogTag logTag = LogTag.GENERAL;
        aFLogger.i(logTag, "AppsFlyer dev key is missing! AppsFlyer's SDK cannot send any events without providing the dev key.", true);
        aFLogger.i(logTag, "AppsFlyer will not track this event.", true);
        AppsFlyerRequestListener appsFlyerRequestListener = aFh1pSDK.AFLogger;
        if (appsFlyerRequestListener != null) {
            appsFlyerRequestListener.onError(41, "No dev key");
        }
    }

    private void d(AFh1pSDK aFh1pSDK, Context context) {
        getLevel = (AppsFlyerLib + 45) % 128;
        aFh1pSDK.getClass();
        context.getClass();
        this.v.saveProperties();
        if (!this.f22649e.AFLogger()) {
            AFLogger.INSTANCE.i(LogTag.GENERAL, "sendTrackingWith with context: ".concat(context.getClass().getName()), true);
            getLevel = (AppsFlyerLib + 69) % 128;
        }
        aFh1pSDK.AFKeystoreWrapper(unregisterClient(context, aFh1pSDK));
        AFLogger(new Object[]{this, aFh1pSDK}, 1204709251, -1204709251, System.identityHashCode(this));
        AFLogger(aFh1pSDK);
        AppsFlyerLib = (getLevel + 61) % 128;
    }

    public static /* synthetic */ Object AFLogger(Object[] objArr, int i2, int i3, int i4) {
        return registerClient(objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFLogger(AFg1tSDK aFg1tSDK, AFh1pSDK aFh1pSDK, Context context) {
        int i2 = getLevel + 107;
        AppsFlyerLib = i2 % 128;
        int i3 = i2 % 2;
        aFg1tSDK.d(aFh1pSDK, context);
        if (i3 != 0) {
            int i4 = 28 / 0;
        }
        getLevel = (AppsFlyerLib + 69) % 128;
    }

    private boolean AFKeystoreWrapper(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        if (!aFh1pSDK.AFLogger() && aFh1pSDK.v == null) {
            int i2 = (AppsFlyerLib + 61) % 128;
            getLevel = i2;
            if (aFh1pSDK.w == null) {
                AppsFlyerLib = (i2 + 99) % 128;
                String strAFLogger = this.AFLogger.AFLogger("AF_LAUNCH_PROTECT_ENABLED");
                if (strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : true) {
                    if (AFKeystoreWrapper()) {
                        AppsFlyerRequestListener appsFlyerRequestListener = aFh1pSDK.AFLogger;
                        if (appsFlyerRequestListener != null) {
                            appsFlyerRequestListener.onError(10, "Event timeout. Check 'minTimeBetweenSessions' param");
                            getLevel = (AppsFlyerLib + 39) % 128;
                        }
                        return true;
                    }
                } else {
                    AFLoggerBase.i$default(AFLogger.INSTANCE, LogTag.SDK_LIFECYCLE, o60.i(this.registerClient.setDebugLog / 1000, "Allowing multiple launches within a ", " second time window."), false, 4, null);
                }
                this.registerClient.getInstance = System.currentTimeMillis();
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036  */
    private static void unregisterClient(Context context) {
        String[] strArr;
        List listW;
        int i2 = AppsFlyerLib + 13;
        getLevel = i2 % 128;
        try {
            if (i2 % 2 == 0) {
                strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 24626).requestedPermissions;
                if (strArr != null) {
                    listW = ArraysKt.W(strArr);
                } else {
                    listW = null;
                }
            } else {
                strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
                if (strArr != null) {
                    listW = ArraysKt.W(strArr);
                } else {
                    listW = null;
                }
            }
            if (listW == null) {
                getLevel = (AppsFlyerLib + 17) % 128;
                listW = EmptyList.f71768b;
            }
            if (!listW.contains("android.permission.INTERNET")) {
                AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml", false, 4, null);
            }
            if (!listW.contains("android.permission.ACCESS_NETWORK_STATE")) {
                int i3 = getLevel + 31;
                AppsFlyerLib = i3 % 128;
                if (i3 % 2 != 0) {
                    AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml", true, 5, null);
                } else {
                    AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml", false, 4, null);
                }
            }
            if (Build.VERSION.SDK_INT <= 32 || listW.contains("com.google.android.gms.permission.AD_ID")) {
                return;
            }
            AFLoggerBase.w$default(AFLogger.INSTANCE, LogTag.GENERAL, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml", false, 4, null);
            int i4 = getLevel + 27;
            AppsFlyerLib = i4 % 128;
            if (i4 % 2 != 0) {
                int i5 = 89 / 0;
            }
        } catch (Exception e2) {
            AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.GENERAL, "Exception while validation permissions. ", e2, false, false, false, false, 120, null);
        }
    }

    private void unregisterClient(AFh1pSDK aFh1pSDK) {
        AFLogger(new Object[]{this, aFh1pSDK}, 1204709251, -1204709251, System.identityHashCode(this));
    }
}
