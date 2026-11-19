package com.appsflyer.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.util.OptionalFeaturesValidator;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1fSDK {
    private static int $10 = 0;
    private static int $11 = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f22635e = 1;
    private static int force;
    private static char[] v = {63555, 63508, 63517, 63515, 63504, 63505, 63514, 63517, 63512, 63514, 63519, 63488};
    Map<String, Object> AFKeystoreWrapper;
    private final OptionalFeaturesValidator AFLogger;
    private long d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile String f22636i;
    private final AFd1zSDK registerClient;
    private boolean unregisterClient = false;
    private volatile boolean w = false;

    public AFf1fSDK(AFd1zSDK aFd1zSDK, OptionalFeaturesValidator optionalFeaturesValidator) {
        this.registerClient = aFd1zSDK;
        this.AFLogger = optionalFeaturesValidator;
    }

    private long AFLogger(AFc1iSDK aFc1iSDK) {
        StringBuilder sb = new StringBuilder();
        sb.append(AFb1jSDK.AFLogger(aFc1iSDK.AFKeystoreWrapper));
        sb.append(w());
        long jAFLogger = AFj1nSDK.AFLogger(AFj1nSDK.unregisterClient(sb.toString()));
        f22635e = (force + 57) % 128;
        return jAFLogger;
    }

    private static void a(int[] iArr, String str, boolean z, Object[] objArr) throws UnsupportedEncodingException {
        String str2 = str;
        int i2 = $10;
        int i3 = i2 + 37;
        $11 = i3 % 128;
        Object bytes = str2;
        if (i3 % 2 == 0) {
            throw null;
        }
        if (str2 != null) {
            $11 = (i2 + 51) % 128;
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        AFk1mSDK aFk1mSDK = new AFk1mSDK();
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[2];
        int i7 = iArr[3];
        char[] cArr = v;
        if (cArr != null) {
            int length = cArr.length;
            char[] cArr2 = new char[length];
            for (int i8 = 0; i8 < length; i8++) {
                cArr2[i8] = (char) (((long) cArr[i8]) ^ (-221298424148002701L));
            }
            cArr = cArr2;
        }
        char[] cArr3 = new char[i5];
        System.arraycopy(cArr, i4, cArr3, 0, i5);
        if (bArr != null) {
            char[] cArr4 = new char[i5];
            aFk1mSDK.d = 0;
            char c2 = 0;
            while (true) {
                int i9 = aFk1mSDK.d;
                if (i9 >= i5) {
                    break;
                }
                if (bArr[i9] == 1) {
                    int i10 = $11 + 81;
                    $10 = i10 % 128;
                    if (i10 % 2 != 0) {
                        cArr4[i9] = (char) ((cArr3[i9] % 2) - c2);
                    } else {
                        cArr4[i9] = (char) (((cArr3[i9] * 2) + 1) - c2);
                    }
                } else {
                    cArr4[i9] = (char) ((cArr3[i9] * 2) - c2);
                }
                c2 = cArr4[i9];
                aFk1mSDK.d = i9 + 1;
            }
            cArr3 = cArr4;
        }
        if (i7 > 0) {
            int i11 = $10 + 9;
            $11 = i11 % 128;
            if (i11 % 2 == 0) {
                char[] cArr5 = new char[i5];
                System.arraycopy(cArr3, 1, cArr5, 1, i5);
                System.arraycopy(cArr5, 0, cArr3, i5 * i7, i7);
                System.arraycopy(cArr5, i7, cArr3, 0, i5 >>> i7);
            } else {
                char[] cArr6 = new char[i5];
                System.arraycopy(cArr3, 0, cArr6, 0, i5);
                int i12 = i5 - i7;
                System.arraycopy(cArr6, 0, cArr3, i12, i7);
                System.arraycopy(cArr6, i7, cArr3, 0, i12);
            }
        }
        if (z) {
            char[] cArr7 = new char[i5];
            aFk1mSDK.d = 0;
            while (true) {
                int i13 = aFk1mSDK.d;
                if (i13 >= i5) {
                    break;
                }
                cArr7[i13] = cArr3[(i5 - i13) - 1];
                aFk1mSDK.d = i13 + 1;
            }
            cArr3 = cArr7;
        }
        if (i6 > 0) {
            aFk1mSDK.d = 0;
            while (true) {
                int i14 = aFk1mSDK.d;
                if (i14 >= i5) {
                    break;
                }
                cArr3[i14] = (char) (cArr3[i14] - iArr[2]);
                aFk1mSDK.d = i14 + 1;
                $11 = ($10 + 103) % 128;
            }
        }
        objArr[0] = new String(cArr3);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    public static boolean d(AFh1pSDK aFh1pSDK, AFc1iSDK aFc1iSDK) {
        String strAFLogger;
        String str;
        String str2 = aFc1iSDK.unregisterClient;
        if (str2 != null) {
            f22635e = (force + 99) % 128;
            if (str2.length() == 0) {
                force = (f22635e + 73) % 128;
                strAFLogger = aFc1iSDK.AFLogger("com.appsflyer.security.uuid");
                if (strAFLogger != null || strAFLogger.length() == 0) {
                    str = null;
                } else {
                    String strSubstring = strAFLogger.substring(0, 8);
                    aFc1iSDK.unregisterClient = strSubstring;
                    str = strSubstring;
                }
            } else {
                str = aFc1iSDK.unregisterClient;
            }
        } else {
            force = (f22635e + 73) % 128;
            strAFLogger = aFc1iSDK.AFLogger("com.appsflyer.security.uuid");
            if (strAFLogger != null) {
                str = null;
            } else {
                str = null;
            }
        }
        if (str == null || str.isEmpty()) {
            AFLogger.INSTANCE.d(LogTag.SECURITY_SDK, "the module is not detected");
            return false;
        }
        try {
            Map<String, Object> map = aFh1pSDK.d;
            Object[] objArr = new Object[1];
            a(new int[]{0, 12, 0, 3}, "\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001", false, objArr);
            long j2 = Long.parseLong(String.valueOf(map.get(((String) objArr[0]).intern())));
            char[] charArray = str.toCharArray();
            int i2 = ((int) (j2 % 94)) + 33;
            for (int i3 = 0; i3 < charArray.length; i3++) {
                charArray[i3] = (char) (charArray[i3] ^ i2);
            }
            aFh1pSDK.registerClient.put("af-sdk-sbid", Base64.encodeToString(new String(charArray).getBytes(Charset.defaultCharset()), 2));
            return true;
        } catch (Exception e2) {
            AFLogger.INSTANCE.e(LogTag.GENERAL, "Exception occurred while generating sbid ", e2);
            return false;
        }
    }

    private static AFf1cSDK e() {
        AFf1cSDK aFf1cSDK = new AFf1cSDK();
        int i2 = force + 123;
        f22635e = i2 % 128;
        if (i2 % 2 != 0) {
            return aFf1cSDK;
        }
        throw null;
    }

    private static /* synthetic */ Object registerClient(Object[] objArr) {
        try {
            try {
                Object[] objArr2 = {(Map) objArr[1], ((AFf1fSDK) objArr[0]).registerClient.d};
                Map map = AFa1bSDK.getInstance;
                Object declaredConstructor = map.get(1578612921);
                if (declaredConstructor == null) {
                    declaredConstructor = ((Class) AFa1bSDK.AFLogger((char) ((ViewConfiguration.getEdgeSlop() >> 16) + 63903), 124 - (ViewConfiguration.getScrollDefaultDelay() >> 16), 37 - TextUtils.getTrimmedLength(""))).getDeclaredConstructor(Map.class, Context.class);
                    map.put(1578612921, declaredConstructor);
                }
                Object objNewInstance = ((Constructor) declaredConstructor).newInstance(objArr2);
                int i2 = f22635e + 63;
                force = i2 % 128;
                if (i2 % 2 == 0) {
                    return objNewInstance;
                }
                throw null;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        } catch (Throwable th2) {
            AFLogger.INSTANCE.e(LogTag.ANTI_FRAUD, "AFCksmV3: reflection init failed", th2, false, false);
            return new HashMap();
        }
    }

    public static /* synthetic */ Object unregisterClient(Object[] objArr, int i2, int i3, int i4) {
        int i5 = ~i2;
        int i6 = ~i3;
        int i7 = ~i4;
        int i8 = (((~(i2 | i3)) | (~(i5 | i7))) * 564) + ((~(i4 | i5 | i3)) * 1128) + (((~(i6 | i7)) | i5 | (~(i3 | i4))) * (-564)) + (i3 * 565) + (i2 * (-563));
        if (i8 != 1) {
            return i8 != 2 ? registerClient(objArr) : AFLogger(objArr);
        }
        AFc1hSDK aFc1hSDK = new AFc1hSDK((Map) objArr[1], ((AFf1fSDK) objArr[0]).registerClient.d);
        f22635e = (force + 73) % 128;
        return aFc1hSDK;
    }

    private boolean v() {
        Map<String, Object> map = this.AFKeystoreWrapper;
        if (map != null && !map.isEmpty()) {
            f22635e = (force + 53) % 128;
            return true;
        }
        int i2 = force + 85;
        f22635e = i2 % 128;
        if (i2 % 2 != 0) {
            return false;
        }
        throw null;
    }

    private long w() {
        int i2 = f22635e;
        int i3 = i2 + 111;
        force = i3 % 128;
        int i4 = i3 % 2;
        long j2 = this.d;
        if (i4 != 0) {
            int i5 = 0 / 0;
        }
        force = (i2 + 75) % 128;
        return j2;
    }

    public final Map<String, Object> AFKeystoreWrapper() {
        HashMap map = new HashMap();
        if (v()) {
            f22635e = (force + 57) % 128;
            map.put("lvl", this.AFKeystoreWrapper);
            f22635e = (force + 101) % 128;
            return map;
        }
        if (this.unregisterClient) {
            this.AFKeystoreWrapper = new HashMap();
            registerClient();
            this.AFKeystoreWrapper.put("error", "pending LVL response");
            map.put("lvl", this.AFKeystoreWrapper);
        }
        return map;
    }

    public final boolean AFLogger() {
        int i2 = force + 83;
        f22635e = i2 % 128;
        int i3 = i2 % 2;
        boolean z = this.w;
        if (i3 == 0) {
            throw null;
        }
        f22635e = (force + 81) % 128;
        return z;
    }

    public final void AFLogger(boolean z) {
        int i2 = force + 1;
        f22635e = i2 % 128;
        if (i2 % 2 != 0) {
            this.w = z;
            f22635e = (force + 29) % 128;
        } else {
            this.w = z;
            throw null;
        }
    }

    private static /* synthetic */ Object AFLogger(Object[] objArr) {
        AFf1fSDK aFf1fSDK = (AFf1fSDK) objArr[0];
        int i2 = f22635e + 17;
        force = i2 % 128;
        int i3 = i2 % 2;
        String str = aFf1fSDK.f22636i;
        if (i3 != 0) {
            throw null;
        }
        int i4 = f22635e + 83;
        force = i4 % 128;
        if (i4 % 2 == 0) {
            return str;
        }
        throw null;
    }

    public final Map<String, Object> AFKeystoreWrapper(Map<String, Object> map) {
        return (Map) unregisterClient(new Object[]{this, map}, 389111715, -389111715, System.identityHashCode(this));
    }

    public final Map<String, Object> unregisterClient(Map<String, Object> map) {
        return (Map) unregisterClient(new Object[]{this, map}, 1953197941, -1953197940, System.identityHashCode(this));
    }

    public final String unregisterClient() {
        return (String) unregisterClient(new Object[]{this}, -1660886869, 1660886871, System.identityHashCode(this));
    }

    public static void registerClient(AFh1pSDK aFh1pSDK, byte[] bArr) {
        try {
            new AFb1sSDK(aFh1pSDK, bArr).afInfoLog();
            int i2 = f22635e + 85;
            force = i2 % 128;
            if (i2 % 2 != 0) {
                throw null;
            }
        } catch (Exception e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            aFLogger.e(LogTag.SECURITY, "native: reflection init failed", e2, false, false);
            aFLogger.e(LogTag.SECURITY_SDK, "the module detected but malfunctioning", e2, false, false);
        }
    }

    public final void registerClient() {
        int i2 = force + 89;
        f22635e = i2 % 128;
        int i3 = i2 % 2;
        this.AFKeystoreWrapper.put("ttr", Long.valueOf(System.currentTimeMillis() - this.d));
        this.AFKeystoreWrapper.put("lvl_timestamp", Long.valueOf(w()));
        int i4 = force + 43;
        f22635e = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    public final boolean d() {
        int i2 = f22635e + 23;
        force = i2 % 128;
        int i3 = i2 % 2;
        boolean z = this.unregisterClient;
        if (i3 != 0) {
            throw null;
        }
        if (z && !v()) {
            force = (f22635e + 63) % 128;
            return true;
        }
        int i4 = f22635e + 1;
        force = i4 % 128;
        if (i4 % 2 == 0) {
            return false;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if ((r4 % 2) != 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        r4 = 86 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r4.d = java.lang.System.currentTimeMillis();
        r4.unregisterClient = e().AFLogger(AFLogger(r5), r4.registerClient.d, new com.appsflyer.internal.AFf1fSDK.AnonymousClass3(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
    
        if (r0 == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (r1.isOptionalFeaturePresent(com.appsflyer.sdk_base.util.SupportedOptionalFeatures.LVL) == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        r4 = com.appsflyer.internal.AFf1fSDK.force + 61;
        com.appsflyer.internal.AFf1fSDK.f22635e = r4 % 128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.appsflyer.internal.AFc1iSDK r5) {
        /*
            r4 = this;
            int r0 = com.appsflyer.internal.AFf1fSDK.force
            int r0 = r0 + 119
            int r1 = r0 % 128
            com.appsflyer.internal.AFf1fSDK.f22635e = r1
            int r0 = r0 % 2
            com.appsflyer.sdk_base.util.OptionalFeaturesValidator r1 = r4.AFLogger
            if (r0 != 0) goto L1b
            com.appsflyer.sdk_base.util.SupportedOptionalFeatures r0 = com.appsflyer.sdk_base.util.SupportedOptionalFeatures.LVL
            boolean r0 = r1.isOptionalFeaturePresent(r0)
            r1 = 82
            int r1 = r1 / 0
            if (r0 != 0) goto L34
            goto L23
        L1b:
            com.appsflyer.sdk_base.util.SupportedOptionalFeatures r0 = com.appsflyer.sdk_base.util.SupportedOptionalFeatures.LVL
            boolean r0 = r1.isOptionalFeaturePresent(r0)
            if (r0 != 0) goto L34
        L23:
            int r4 = com.appsflyer.internal.AFf1fSDK.force
            int r4 = r4 + 61
            int r5 = r4 % 128
            com.appsflyer.internal.AFf1fSDK.f22635e = r5
            int r4 = r4 % 2
            if (r4 != 0) goto L33
            r4 = 86
            int r4 = r4 / 0
        L33:
            return
        L34:
            long r0 = java.lang.System.currentTimeMillis()
            r4.d = r0
            com.appsflyer.internal.AFf1cSDK r0 = e()
            long r1 = r4.AFLogger(r5)
            com.appsflyer.internal.AFd1zSDK r5 = r4.registerClient
            android.content.Context r5 = r5.d
            com.appsflyer.internal.AFf1fSDK$3 r3 = new com.appsflyer.internal.AFf1fSDK$3
            r3.<init>()
            boolean r5 = r0.AFLogger(r1, r5, r3)
            r4.unregisterClient = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1fSDK.d(com.appsflyer.internal.AFc1iSDK):void");
    }

    public final void d(String str) {
        int i2 = force + 85;
        f22635e = i2 % 128;
        if (i2 % 2 == 0) {
            this.f22636i = str;
            int i3 = 92 / 0;
        } else {
            this.f22636i = str;
        }
        f22635e = (force + 5) % 128;
    }
}
