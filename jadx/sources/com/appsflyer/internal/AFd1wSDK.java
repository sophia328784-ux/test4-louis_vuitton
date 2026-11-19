package com.appsflyer.internal;

import android.os.Build;
import android.telephony.cdma.CdmaCellLocation;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.LogTag;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1wSDK implements AFd1uSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int[] AFLoggerLogLevel = null;
    private static int afInfoLog = 1;
    private static int afWarnLog;
    private static final int d;
    private int AFKeystoreWrapper;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AFc1bSDK f22623e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f22624i;
    private boolean v;
    private AppsFlyerProperties w;
    private List<String> AFLogger = new ArrayList();
    private boolean unregisterClient = true;
    private final Map<String, Object> registerClient = new HashMap();
    private SecureRandom force = new SecureRandom();

    static {
        force();
        d = 98166;
        int i2 = afWarnLog + 43;
        afInfoLog = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    public AFd1wSDK(AFc1bSDK aFc1bSDK) {
        this.w = aFc1bSDK.registerClient();
        String strAFLogger = aFc1bSDK.AFLogger().AFLogger("AF_DISABLE_REMOTE_DEBUGGER");
        this.v = true ^ (strAFLogger != null ? Boolean.parseBoolean(strAFLogger) : false);
        this.AFKeystoreWrapper = 0;
        this.f22624i = false;
        this.f22623e = aFc1bSDK;
    }

    private synchronized void AFKeystoreWrapper(String str, String str2, String str3) {
        try {
            Map<String, Object> map = this.registerClient;
            Object[] objArr = new Object[1];
            a(new int[]{579646829, 1366893693, -1057920183, -376234262}, 5 - (CdmaCellLocation.convertQuartSecToDecDegrees(0) > 0.0d ? 1 : (CdmaCellLocation.convertQuartSecToDecDegrees(0) == 0.0d ? 0 : -1)), objArr);
            map.put(((String) objArr[0]).intern(), Build.BRAND);
            this.registerClient.put("model", Build.MODEL);
            this.registerClient.put("platform", "Android");
            this.registerClient.put("platform_version", Build.VERSION.RELEASE);
            if (str != null) {
                try {
                    afInfoLog = (afWarnLog + 121) % 128;
                    if (str.length() > 0) {
                        int i2 = afWarnLog + 119;
                        afInfoLog = i2 % 128;
                        int i3 = i2 % 2;
                        Map<String, Object> map2 = this.registerClient;
                        if (i3 == 0) {
                            map2.put("advertiserId", str);
                            int i4 = 57 / 0;
                        } else {
                            map2.put("advertiserId", str);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (str2 != null && str2.length() > 0) {
                int i5 = afWarnLog + 37;
                afInfoLog = i5 % 128;
                int i6 = i5 % 2;
                Map<String, Object> map3 = this.registerClient;
                if (i6 == 0) {
                    map3.put("imei", str2);
                    throw null;
                }
                map3.put("imei", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.registerClient.put("android_id", str3);
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void AFLogger(String str, String str2, String... strArr) {
        String string;
        if (afErrorLog()) {
            int i2 = afWarnLog + 79;
            afInfoLog = i2 % 128;
            int i3 = i2 % 2;
            int i4 = this.AFKeystoreWrapper;
            if (i3 == 0) {
                throw null;
            }
            if (i4 < 98304) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strJoin = TextUtils.join(", ", strArr);
                    if (str != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(jCurrentTimeMillis);
                        sb.append(" ");
                        sb.append(Thread.currentThread().getId());
                        sb.append(" _/AppsFlyer_7.0.1 [");
                        sb.append(str);
                        sb.append("] ");
                        sb.append(str2);
                        sb.append(" ");
                        sb.append(strJoin);
                        string = sb.toString();
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(jCurrentTimeMillis);
                        sb2.append(" ");
                        sb2.append(Thread.currentThread().getId());
                        sb2.append(" ");
                        sb2.append(str2);
                        sb2.append("/AppsFlyer_7.0.1 ");
                        sb2.append(strJoin);
                        string = sb2.toString();
                    }
                    int length = this.AFKeystoreWrapper + (string.length() << 1);
                    int i5 = d;
                    boolean z = false;
                    if (length > i5) {
                        string = string.substring(0, (i5 - this.AFKeystoreWrapper) / 2);
                        z = true;
                    }
                    this.AFLogger.add(string);
                    this.AFKeystoreWrapper += string.length() << 1;
                    if (z) {
                        afInfoLog = (afWarnLog + 49) % 128;
                        this.AFLogger.add("+~+~ The limit has been exceeded, and no more data is available. +~+~");
                        this.AFKeystoreWrapper += 138;
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    private synchronized Map<String, Object> AFLoggerLogLevel() {
        Map<String, Object> map;
        int i2 = afWarnLog + 101;
        afInfoLog = i2 % 128;
        int i3 = i2 % 2;
        Map<String, Object> map2 = this.registerClient;
        if (i3 == 0) {
            map2.put(DbParams.KEY_DATA, this.AFLogger);
            afDebugLog();
            throw null;
        }
        map2.put(DbParams.KEY_DATA, this.AFLogger);
        afDebugLog();
        map = this.registerClient;
        afInfoLog = (afWarnLog + 59) % 128;
        return map;
    }

    private static void a(int[] iArr, int i2, Object[] objArr) {
        AFk1oSDK aFk1oSDK = new AFk1oSDK();
        char[] cArr = new char[4];
        char[] cArr2 = new char[iArr.length * 2];
        int[] iArr2 = AFLoggerLogLevel;
        if (iArr2 != null) {
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            loop0: while (true) {
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break loop0;
                    }
                    int i4 = $11 + 115;
                    $10 = i4 % 128;
                    if (i4 % 2 != 0) {
                        iArr3[i3] = (int) (((long) iArr2[i3]) * 8546810173735754695L);
                    } else {
                        iArr3[i3] = (int) (((long) iArr2[i3]) ^ 8546810173735754695L);
                        i3++;
                    }
                }
            }
            iArr2 = iArr3;
        }
        int length2 = iArr2.length;
        int[] iArr4 = new int[length2];
        int[] iArr5 = AFLoggerLogLevel;
        if (iArr5 != null) {
            int length3 = iArr5.length;
            int[] iArr6 = new int[length3];
            int i5 = 0;
            while (i5 < length3) {
                iArr6[i5] = (int) (((long) iArr5[i5]) ^ 8546810173735754695L);
                i5++;
                $11 = ($10 + 51) % 128;
            }
            iArr5 = iArr6;
        }
        System.arraycopy(iArr5, 0, iArr4, 0, length2);
        aFk1oSDK.AFKeystoreWrapper = 0;
        while (true) {
            int i6 = aFk1oSDK.AFKeystoreWrapper;
            if (i6 >= iArr.length) {
                objArr[0] = new String(cArr2, 0, i2);
                return;
            }
            $10 = ($11 + 3) % 128;
            int i7 = iArr[i6];
            char c2 = (char) (i7 >> 16);
            cArr[0] = c2;
            char c3 = (char) i7;
            cArr[1] = c3;
            char c4 = (char) (iArr[i6 + 1] >> 16);
            cArr[2] = c4;
            char c5 = (char) iArr[i6 + 1];
            cArr[3] = c5;
            aFk1oSDK.AFLogger = (c2 << 16) + c3;
            aFk1oSDK.d = (c4 << 16) + c5;
            AFk1oSDK.unregisterClient(iArr4);
            for (int i8 = 0; i8 < 16; i8++) {
                $11 = ($10 + 33) % 128;
                int i9 = aFk1oSDK.AFLogger ^ iArr4[i8];
                aFk1oSDK.AFLogger = i9;
                int iD = AFk1oSDK.d(i9) ^ aFk1oSDK.d;
                int i10 = aFk1oSDK.AFLogger;
                aFk1oSDK.AFLogger = iD;
                aFk1oSDK.d = i10;
            }
            int i11 = aFk1oSDK.AFLogger;
            int i12 = aFk1oSDK.d;
            aFk1oSDK.AFLogger = i12;
            aFk1oSDK.d = i11;
            int i13 = i11 ^ iArr4[16];
            aFk1oSDK.d = i13;
            int i14 = i12 ^ iArr4[17];
            aFk1oSDK.AFLogger = i14;
            cArr[0] = (char) (i14 >>> 16);
            cArr[1] = (char) i14;
            cArr[2] = (char) (i13 >>> 16);
            cArr[3] = (char) i13;
            AFk1oSDK.unregisterClient(iArr4);
            int i15 = aFk1oSDK.AFKeystoreWrapper;
            cArr2[i15 * 2] = cArr[0];
            cArr2[(i15 * 2) + 1] = cArr[1];
            cArr2[(i15 * 2) + 2] = cArr[2];
            cArr2[(i15 * 2) + 3] = cArr[3];
            aFk1oSDK.AFKeystoreWrapper = i15 + 2;
        }
    }

    private synchronized void afDebugLog() {
        this.AFLogger = new ArrayList();
        this.AFKeystoreWrapper = 0;
        int i2 = afWarnLog + 19;
        afInfoLog = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
    }

    private boolean afErrorLog() {
        if (!this.v || (!this.unregisterClient && !this.f22624i)) {
            afWarnLog = (afInfoLog + 95) % 128;
            return false;
        }
        int i2 = afWarnLog + 15;
        afInfoLog = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 43 / 0;
        }
        return true;
    }

    private boolean afInfoLog() {
        afInfoLog = (afWarnLog + 81) % 128;
        boolean zAFKeystoreWrapper = this.f22623e.AFKeystoreWrapper().AFKeystoreWrapper("participantInProxy");
        int i2 = afInfoLog + 125;
        afWarnLog = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 49 / 0;
        }
        return zAFKeystoreWrapper;
    }

    private void afWarnLog() {
        registerClient(new Object[]{this}, -811614036, 811614038, System.identityHashCode(this));
    }

    private synchronized void d(String str, AFc1eSDK aFc1eSDK) {
        try {
            String string = this.w.getString("remote_debug_static_data");
            this.registerClient.clear();
            if (string != null) {
                try {
                    this.registerClient.putAll(AFg1dSDK.unregisterClient(new JSONObject(string)));
                    afInfoLog = (afWarnLog + 121) % 128;
                } catch (Throwable unused) {
                }
            } else {
                AFKeystoreWrapper(this.f22623e.AFLogger().AFLogger(), aFc1eSDK.AFLoggerLogLevel, aFc1eSDK.force);
                StringBuilder sb = new StringBuilder("7.0.1.");
                sb.append(AFa1tSDK.unregisterClient);
                String string2 = sb.toString();
                AFf1fSDK aFf1fSDKAppsFlyerLib = this.f22623e.AppsFlyerLib();
                AFLogger(string2, (String) AFf1fSDK.unregisterClient(new Object[]{aFf1fSDKAppsFlyerLib}, -1660886869, 1660886871, System.identityHashCode(aFf1fSDKAppsFlyerLib)), this.w.getString("KSAppsFlyerId"), AFb1jSDK.AFLogger(this.f22623e.AFLogger().AFKeystoreWrapper));
                try {
                    int i2 = this.f22623e.AFLogger().r_().versionCode;
                    String strAFLogger = this.f22623e.AFLogger().AFLogger("CHANNEL");
                    if (strAFLogger != null) {
                        int i3 = afInfoLog + 15;
                        afWarnLog = i3 % 128;
                        if (i3 % 2 != 0) {
                            strAFLogger.equals("");
                            throw null;
                        }
                        if (strAFLogger.equals("")) {
                            strAFLogger = null;
                        }
                    }
                    d(str, String.valueOf(i2), strAFLogger, this.w.getString("preInstallName"));
                    afWarnLog = (afInfoLog + 77) % 128;
                } catch (Throwable unused2) {
                }
                this.w.set("remote_debug_static_data", new JSONObject(this.registerClient).toString());
            }
            this.registerClient.put("launch_counter", String.valueOf(this.f22623e.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0)));
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void e() {
        afWarnLog = (afInfoLog + 11) % 128;
        if (this.f22624i) {
            return;
        }
        this.f22624i = true;
        try {
            AFLogger("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            afInfoLog = (afWarnLog + 13) % 128;
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.PROXY, "Error while starting remote debugger", th, true, true, true);
        }
    }

    public static void force() {
        AFLoggerLogLevel = new int[]{-568377693, 1688322947, 854413037, -687779850, -1810683974, 1583969886, -2000849430, -146928909, 707207527, -2090776958, -563356009, 1806852058, -1348460850, 177728571, -1217440324, -910513204, -1775435922, 1154080255};
    }

    public static /* synthetic */ Object registerClient(Object[] objArr, int i2, int i3, int i4) {
        int i5 = ~i3;
        int i6 = ~i4;
        int i7 = (((~(i2 | i3)) | (~(i4 | i5))) * 49) + (((~((~i2) | i6)) | i5 | (~(i2 | i4))) * (-49)) + (((~(i5 | i6)) | (~(i5 | i2))) * 98) + (i3 * (-97)) + (i2 * 50);
        int i8 = 1;
        if (i7 == 1) {
            return d(objArr);
        }
        if (i7 == 2) {
            AFd1wSDK aFd1wSDK = (AFd1wSDK) objArr[0];
            afWarnLog = (afInfoLog + 39) % 128;
            aFd1wSDK.f22623e.AFKeystoreWrapper().AFLogger("participantInProxy");
            afWarnLog = (afInfoLog + 59) % 128;
            return null;
        }
        if (i7 != 3) {
            AFd1wSDK aFd1wSDK2 = (AFd1wSDK) objArr[0];
            float fFloatValue = ((Number) objArr[1]).floatValue();
            afWarnLog = (afInfoLog + 61) % 128;
            double d2 = fFloatValue;
            if (d2 >= 1.0d) {
                return Boolean.TRUE;
            }
            if (d2 > 0.0d && aFd1wSDK2.w() <= fFloatValue) {
                afInfoLog = (afWarnLog + 115) % 128;
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }
        String str = (String) objArr[0];
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) objArr[1];
        int i9 = (afInfoLog + 123) % 128;
        afWarnLog = i9;
        if (stackTraceElementArr == null) {
            int i10 = i9 + 57;
            afInfoLog = i10 % 128;
            if (i10 % 2 != 0) {
                return new String[]{str};
            }
            String[] strArr = new String[0];
            strArr[1] = str;
            return strArr;
        }
        String[] strArr2 = new String[stackTraceElementArr.length + 1];
        strArr2[0] = str;
        while (i8 < stackTraceElementArr.length) {
            int i11 = afWarnLog + 73;
            afInfoLog = i11 % 128;
            if (i11 % 2 == 0) {
                strArr2[i8] = stackTraceElementArr[i8].toString();
                i8 += 50;
            } else {
                strArr2[i8] = stackTraceElementArr[i8].toString();
                i8++;
            }
        }
        return strArr2;
    }

    private static String v() {
        int i2 = (afWarnLog + 57) % 128;
        afInfoLog = i2;
        int i3 = i2 + 13;
        afWarnLog = i3 % 128;
        if (i3 % 2 == 0) {
            return "7.0.1";
        }
        throw null;
    }

    private float w() {
        int i2 = afWarnLog + 91;
        afInfoLog = i2 % 128;
        int i3 = i2 % 2;
        float fNextFloat = this.force.nextFloat();
        if (i3 == 0) {
            int i4 = 72 / 0;
        }
        int i5 = afWarnLog + 33;
        afInfoLog = i5 % 128;
        if (i5 % 2 != 0) {
            return fNextFloat;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final boolean i() {
        int i2 = (afWarnLog + 61) % 128;
        afInfoLog = i2;
        boolean z = this.f22624i;
        afWarnLog = (i2 + 63) % 128;
        return z;
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final synchronized void unregisterClient() {
        try {
            int i2 = afInfoLog + 13;
            afWarnLog = i2 % 128;
            int i3 = i2 % 2;
            Map<String, Object> map = this.registerClient;
            if (i3 != 0) {
                map.clear();
                this.AFLogger.clear();
                this.AFKeystoreWrapper = 1;
            } else {
                map.clear();
                this.AFLogger.clear();
                this.AFKeystoreWrapper = 0;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0077, code lost:
    
        if (r8 == null) goto L9;
     */
    @Override // com.appsflyer.internal.AFd1uSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v_(java.lang.String r8, android.content.pm.PackageManager r9) {
        /*
            r7 = this;
            int r9 = com.appsflyer.internal.AFd1wSDK.afWarnLog
            int r9 = r9 + 73
            int r0 = r9 % 128
            com.appsflyer.internal.AFd1wSDK.afInfoLog = r0
            r0 = 2
            int r9 = r9 % r0
            r1 = 1660886871(0x62ff1f57, float:2.353089E21)
            r2 = -1660886869(0xffffffff9d00e0ab, float:-1.705681E-21)
            r3 = -1483898606(0xffffffffa78d8112, float:-3.92753E-15)
            r4 = 1483898607(0x58727eef, float:1.06650796E15)
            if (r9 != 0) goto L4b
            java.lang.Object[] r8 = new java.lang.Object[]{r7, r8}     // Catch: java.lang.Throwable -> La3
            int r9 = java.lang.System.identityHashCode(r7)     // Catch: java.lang.Throwable -> La3
            java.lang.Object r8 = registerClient(r8, r4, r3, r9)     // Catch: java.lang.Throwable -> La3
            java.util.Map r8 = (java.util.Map) r8     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFc1bSDK r9 = r7.f22623e     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFf1fSDK r9 = r9.AppsFlyerLib()     // Catch: java.lang.Throwable -> La3
            java.lang.Object[] r3 = new java.lang.Object[]{r9}     // Catch: java.lang.Throwable -> La3
            int r9 = java.lang.System.identityHashCode(r9)     // Catch: java.lang.Throwable -> La3
            java.lang.Object r9 = com.appsflyer.internal.AFf1fSDK.unregisterClient(r3, r2, r1, r9)     // Catch: java.lang.Throwable -> La3
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFc1bSDK r1 = r7.f22623e     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFd1sSDK r1 = r1.unregisterClient()     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFd1vSDK r8 = r1.d(r8, r9)     // Catch: java.lang.Throwable -> La3
            r9 = 40
            int r9 = r9 / 0
            if (r8 != 0) goto L8c
            goto L79
        L4b:
            java.lang.Object[] r8 = new java.lang.Object[]{r7, r8}     // Catch: java.lang.Throwable -> La3
            int r9 = java.lang.System.identityHashCode(r7)     // Catch: java.lang.Throwable -> La3
            java.lang.Object r8 = registerClient(r8, r4, r3, r9)     // Catch: java.lang.Throwable -> La3
            java.util.Map r8 = (java.util.Map) r8     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFc1bSDK r9 = r7.f22623e     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFf1fSDK r9 = r9.AppsFlyerLib()     // Catch: java.lang.Throwable -> La3
            java.lang.Object[] r3 = new java.lang.Object[]{r9}     // Catch: java.lang.Throwable -> La3
            int r9 = java.lang.System.identityHashCode(r9)     // Catch: java.lang.Throwable -> La3
            java.lang.Object r9 = com.appsflyer.internal.AFf1fSDK.unregisterClient(r3, r2, r1, r9)     // Catch: java.lang.Throwable -> La3
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFc1bSDK r1 = r7.f22623e     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFd1sSDK r1 = r1.unregisterClient()     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.AFd1vSDK r8 = r1.d(r8, r9)     // Catch: java.lang.Throwable -> La3
            if (r8 != 0) goto L8c
        L79:
            com.appsflyer.AFLogger r1 = com.appsflyer.AFLogger.INSTANCE     // Catch: java.lang.Throwable -> La3
            com.appsflyer.sdk_base.logger.LogTag r2 = com.appsflyer.sdk_base.logger.LogTag.PROXY     // Catch: java.lang.Throwable -> La3
            java.lang.String r3 = "Could not send proxy data: request is null"
            java.lang.NullPointerException r4 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> La3
            java.lang.String r7 = "request was null"
            r4.<init>(r7)     // Catch: java.lang.Throwable -> La3
            r5 = 0
            r6 = 0
            r1.e(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> La3
            return
        L8c:
            com.appsflyer.internal.AFc1bSDK r7 = r7.f22623e     // Catch: java.lang.Throwable -> La3
            java.util.concurrent.ExecutorService r7 = r7.d()     // Catch: java.lang.Throwable -> La3
            com.appsflyer.internal.g r9 = new com.appsflyer.internal.g     // Catch: java.lang.Throwable -> La3
            r9.<init>(r8, r0)     // Catch: java.lang.Throwable -> La3
            r7.execute(r9)     // Catch: java.lang.Throwable -> La3
            int r7 = com.appsflyer.internal.AFd1wSDK.afWarnLog
            int r7 = r7 + 17
            int r7 = r7 % 128
            com.appsflyer.internal.AFd1wSDK.afInfoLog = r7
            return
        La3:
            r0 = move-exception
            r7 = r0
            r3 = r7
            com.appsflyer.AFLogger r0 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.sdk_base.logger.LogTag r1 = com.appsflyer.sdk_base.logger.LogTag.PROXY
            r4 = 0
            r5 = 0
            java.lang.String r2 = "Could not send proxy data"
            r0.e(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1wSDK.v_(java.lang.String, android.content.pm.PackageManager):void");
    }

    private void unregisterClient(boolean z) {
        afInfoLog = (afWarnLog + 121) % 128;
        this.f22623e.AFKeystoreWrapper().registerClient("participantInProxy", z);
        int i2 = afWarnLog + 89;
        afInfoLog = i2 % 128;
        if (i2 % 2 == 0) {
            int i3 = 31 / 0;
        }
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void AFKeystoreWrapper(String str, int i2, String str2) {
        int i3 = afInfoLog + 123;
        afWarnLog = i3 % 128;
        if (i3 % 2 != 0) {
            String[] strArr = new String[5];
            strArr[0] = String.valueOf(i2);
            strArr[0] = str2;
            AFLogger("server_response", str, strArr);
        } else {
            AFLogger("server_response", str, String.valueOf(i2), str2);
        }
        int i4 = afInfoLog + 119;
        afWarnLog = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 52 / 0;
        }
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void AFKeystoreWrapper() {
        int i2 = (afInfoLog + 105) % 128;
        afWarnLog = i2;
        this.v = false;
        int i3 = i2 + 71;
        afInfoLog = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void AFKeystoreWrapper(String str, String str2) {
        afWarnLog = (afInfoLog + 115) % 128;
        AFLogger("server_request", str, str2);
        int i2 = afInfoLog + 51;
        afWarnLog = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    private boolean AFKeystoreWrapper(String str) {
        int i2 = (afInfoLog + 5) % 128;
        afWarnLog = i2;
        if (str == null) {
            return true;
        }
        afInfoLog = (i2 + 25) % 128;
        if (str.trim().length() == 0) {
            return true;
        }
        return str.equals(this.f22623e.AFLogger().r_().versionName);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:12:0x0026 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    private static AFh1cSDK AFKeystoreWrapper(AFh1aSDK aFh1aSDK) {
        AFh1gSDK aFh1gSDK;
        AFh1cSDK aFh1cSDK;
        int i2;
        int i3 = afWarnLog;
        int i4 = i3 + 93;
        int i5 = i4 % 128;
        afInfoLog = i5;
        if (i4 % 2 == 0) {
            int i6 = 20 / 0;
            if (aFh1aSDK != null) {
                aFh1gSDK = aFh1aSDK.registerClient;
                if (aFh1gSDK != null) {
                    aFh1cSDK = aFh1gSDK.unregisterClient;
                    i2 = i5 + 51;
                    afWarnLog = i2 % 128;
                    if (i2 % 2 == 0) {
                        return aFh1cSDK;
                    }
                    throw null;
                }
            }
        } else if (aFh1aSDK != null) {
            aFh1gSDK = aFh1aSDK.registerClient;
            if (aFh1gSDK != null) {
                aFh1cSDK = aFh1gSDK.unregisterClient;
                i2 = i5 + 51;
                afWarnLog = i2 % 128;
                if (i2 % 2 == 0) {
                    return aFh1cSDK;
                }
                throw null;
            }
        }
        afInfoLog = (i3 + 1) % 128;
        return null;
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void AFLogger(String str, String str2) {
        int i2 = afWarnLog + 115;
        afInfoLog = i2 % 128;
        if (i2 % 2 == 0) {
            AFLogger(null, str, str2);
        } else {
            AFLogger(null, str, str2);
        }
    }

    private synchronized void AFLogger(String str, String str2, String str3, String str4) {
        int i2 = afWarnLog + 117;
        afInfoLog = i2 % 128;
        int i3 = i2 % 2;
        Map<String, Object> map = this.registerClient;
        try {
            if (i3 == 0) {
                map.put("sdk_version", str);
                throw null;
            }
            map.put("sdk_version", str);
            if (str2 != null) {
                int i4 = afWarnLog + 119;
                afInfoLog = i4 % 128;
                if (i4 % 2 != 0) {
                    if (str2.length() > 0) {
                        this.registerClient.put("devkey", str2);
                    }
                } else {
                    str2.length();
                    throw null;
                }
            }
            if (str3 != null) {
                int i5 = afInfoLog + 81;
                afWarnLog = i5 % 128;
                if (i5 % 2 == 0) {
                    if (str3.length() > 0) {
                        this.registerClient.put("originalAppsFlyerId", str3);
                    }
                } else {
                    str3.length();
                    throw null;
                }
            }
            if (str4 != null) {
                afWarnLog = (afInfoLog + 89) % 128;
                if (str4.length() > 0) {
                    this.registerClient.put("uid", str4);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void registerClient(Throwable th) {
        String message;
        Throwable cause = th.getCause();
        String simpleName = th.getClass().getSimpleName();
        if (cause == null) {
            int i2 = afInfoLog + 121;
            afWarnLog = i2 % 128;
            if (i2 % 2 == 0) {
                message = th.getMessage();
            } else {
                th.getMessage();
                throw null;
            }
        } else {
            message = cause.getMessage();
        }
        AFLogger(MvelScriptManager.VAR_EXCEPTION, simpleName, (String[]) registerClient(new Object[]{message, cause == null ? th.getStackTrace() : cause.getStackTrace()}, -1008260537, 1008260540, (int) System.currentTimeMillis()));
        int i3 = afInfoLog + 17;
        afWarnLog = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final boolean AFLogger() {
        afInfoLog = (afWarnLog + 23) % 128;
        boolean zD = d(AFKeystoreWrapper(this.f22623e.i().unregisterClient.AFLogger), AFKeystoreWrapper(this.f22623e.i().unregisterClient.d));
        if (zD) {
            int i2 = afInfoLog + 49;
            afWarnLog = i2 % 128;
            if (i2 % 2 == 0) {
                e();
                return zD;
            }
            e();
            throw null;
        }
        registerClient();
        d();
        afWarnLog = (afInfoLog + 25) % 128;
        return zD;
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final synchronized void registerClient() {
        afInfoLog = (afWarnLog + 51) % 128;
        this.unregisterClient = false;
        unregisterClient();
        afDebugLog();
        afWarnLog = (afInfoLog + 63) % 128;
    }

    private Map<String, Object> registerClient(String str) {
        return (Map) registerClient(new Object[]{this, str}, 1483898607, -1483898606, System.identityHashCode(this));
    }

    private boolean AFLogger(AFh1cSDK aFh1cSDK, AFh1cSDK aFh1cSDK2) {
        if (aFh1cSDK.equals(aFh1cSDK2)) {
            afWarnLog = (afInfoLog + 79) % 128;
            return afInfoLog();
        }
        boolean zBooleanValue = ((Boolean) registerClient(new Object[]{this, Float.valueOf(aFh1cSDK.AFKeystoreWrapper)}, 830139978, -830139978, System.identityHashCode(this))).booleanValue();
        unregisterClient(zBooleanValue);
        afInfoLog = (afWarnLog + 33) % 128;
        return zBooleanValue;
    }

    @Override // com.appsflyer.internal.AFd1uSDK
    public final void d(String str, String... strArr) {
        int i2 = afWarnLog + 87;
        afInfoLog = i2 % 128;
        if (i2 % 2 != 0) {
            AFLogger("public_api_call", str, strArr);
            afInfoLog = (afWarnLog + 97) % 128;
        } else {
            AFLogger("public_api_call", str, strArr);
            throw null;
        }
    }

    private static /* synthetic */ Object d(Object[] objArr) {
        AFd1wSDK aFd1wSDK = (AFd1wSDK) objArr[0];
        String str = (String) objArr[1];
        int i2 = afWarnLog + 5;
        afInfoLog = i2 % 128;
        if (i2 % 2 != 0) {
            aFd1wSDK.d(str, aFd1wSDK.f22623e.setAndroidIdData());
            return aFd1wSDK.AFLoggerLogLevel();
        }
        aFd1wSDK.d(str, aFd1wSDK.f22623e.setAndroidIdData());
        aFd1wSDK.AFLoggerLogLevel();
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0036 A[Catch: all -> 0x002e, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0004, B:9:0x0016, B:11:0x0025, B:18:0x0036, B:28:0x0060, B:30:0x006a), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0042 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0048 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0050 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x006a A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #1 {, blocks: (B:5:0x0004, B:9:0x0016, B:11:0x0025, B:18:0x0036, B:28:0x0060, B:30:0x006a), top: B:43:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0076 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x007c A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0084 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #0 {all -> 0x0085, blocks: (B:7:0x0010, B:10:0x001e, B:15:0x0030, B:16:0x0033, B:20:0x0042, B:22:0x0048, B:23:0x0050, B:25:0x0053, B:27:0x0059, B:32:0x0076, B:34:0x007c, B:35:0x0084), top: B:42:0x0002 }] */
    private synchronized void d(String str, String str2, String str3, String str4) {
        int i2;
        int i3;
        try {
            if (str != null) {
                int i4 = afInfoLog + 9;
                afWarnLog = i4 % 128;
                if (i4 % 2 != 0) {
                    str.length();
                    throw null;
                }
                if (str.length() > 0) {
                    afInfoLog = (afWarnLog + 3) % 128;
                    this.registerClient.put("app_id", str);
                    afWarnLog = (afInfoLog + 27) % 128;
                }
                if (str2 != null) {
                    i3 = afWarnLog + 55;
                    afInfoLog = i3 % 128;
                    if (i3 % 2 != 0) {
                        if (str2.length() > 0) {
                            this.registerClient.put("app_version", str2);
                        }
                    } else {
                        throw null;
                    }
                }
                if (str3 != null && str3.length() > 0) {
                    this.registerClient.put("channel", str3);
                    afWarnLog = (afInfoLog + 53) % 128;
                }
                if (str4 != null) {
                    i2 = afWarnLog + 107;
                    afInfoLog = i2 % 128;
                    if (i2 % 2 != 0) {
                        if (str4.length() > 0) {
                            this.registerClient.put("preInstall", str4);
                        }
                    } else {
                        throw null;
                    }
                }
            } else {
                if (str2 != null) {
                    i3 = afWarnLog + 55;
                    afInfoLog = i3 % 128;
                    if (i3 % 2 != 0) {
                        if (str2.length() > 0) {
                            this.registerClient.put("app_version", str2);
                        }
                    } else {
                        throw null;
                    }
                }
                if (str3 != null) {
                    this.registerClient.put("channel", str3);
                    afWarnLog = (afInfoLog + 53) % 128;
                }
                if (str4 != null) {
                    i2 = afWarnLog + 107;
                    afInfoLog = i2 % 128;
                    if (i2 % 2 != 0) {
                        if (str4.length() > 0) {
                            this.registerClient.put("preInstall", str4);
                        }
                    } else {
                        throw null;
                    }
                }
            }
            throw th;
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0026 A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #1 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000e, B:17:0x0026, B:13:0x0021, B:23:0x0034, B:25:0x0054, B:30:0x0060, B:9:0x001c, B:22:0x0033, B:24:0x0038), top: B:37:0x0001, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0030 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:21:0x0032  */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0030, please report this as an issue */
    @Override // com.appsflyer.internal.AFd1uSDK
    public final synchronized void d() {
        int i2;
        try {
            int i3 = afWarnLog;
            afInfoLog = (i3 + 81) % 128;
            if (!this.f22624i) {
                int i4 = i3 + 123;
                afInfoLog = i4 % 128;
                int i5 = i4 % 2;
                boolean z = this.unregisterClient;
                if (i5 != 0) {
                    if (!z) {
                        i2 = i3 + 17;
                        afInfoLog = i2 % 128;
                        if (i2 % 2 != 0) {
                            return;
                        } else {
                            throw null;
                        }
                    }
                    throw th;
                }
                int i6 = 80 / 0;
                if (!z) {
                    i2 = i3 + 17;
                    afInfoLog = i2 % 128;
                    if (i2 % 2 != 0) {
                        return;
                    } else {
                        throw null;
                    }
                }
                throw th;
                throw th;
            }
            this.f22624i = false;
            this.unregisterClient = false;
            try {
                AFLogger("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
                afWarnLog = (afInfoLog + 31) % 128;
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(LogTag.PROXY, "Error while stopping remote debugger", th, true, true, true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean d(AFh1cSDK aFh1cSDK, AFh1cSDK aFh1cSDK2) {
        try {
            if (aFh1cSDK == null) {
                registerClient(new Object[]{this}, -811614036, 811614038, System.identityHashCode(this));
                return false;
            }
            if (TimeUnit.SECONDS.toMillis(aFh1cSDK.AFLogger) <= AFh1cSDK.registerClient()) {
                return false;
            }
            afInfoLog = (afWarnLog + 93) % 128;
            if (this.f22623e.AFLogger().AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) > aFh1cSDK.unregisterClient) {
                return false;
            }
            if (!AFLogger(aFh1cSDK, aFh1cSDK2)) {
                afWarnLog = (afInfoLog + 45) % 128;
                return false;
            }
            if (!AFKeystoreWrapper(aFh1cSDK.com.networkbench.agent.impl.NBSSpanMetricUnit.Day java.lang.String)) {
                return false;
            }
            if (!d(aFh1cSDK.i)) {
                afInfoLog = (afWarnLog + 57) % 128;
                return false;
            }
            int i2 = afWarnLog + 73;
            afInfoLog = i2 % 128;
            if (i2 % 2 != 0) {
                return true;
            }
            int i3 = 72 / 0;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    private static boolean d(String str) {
        int i2 = afInfoLog + 75;
        afWarnLog = i2 % 128;
        if (i2 % 2 != 0) {
            int i3 = 7 / 0;
            if (str != null) {
                if (str.trim().length() != 0) {
                    new AFd1ySDK();
                    return AFd1ySDK.registerClient(v(), str);
                }
            }
        } else if (str != null) {
            if (str.trim().length() != 0) {
                new AFd1ySDK();
                return AFd1ySDK.registerClient(v(), str);
            }
        }
        int i4 = afInfoLog + 41;
        afWarnLog = i4 % 128;
        if (i4 % 2 != 0) {
            int i5 = 68 / 0;
        }
        return true;
    }

    private boolean d(float f2) {
        return ((Boolean) registerClient(new Object[]{this, Float.valueOf(f2)}, 830139978, -830139978, System.identityHashCode(this))).booleanValue();
    }

    private static String[] d(String str, StackTraceElement[] stackTraceElementArr) {
        return (String[]) registerClient(new Object[]{str, stackTraceElementArr}, -1008260537, 1008260540, (int) System.currentTimeMillis());
    }
}
