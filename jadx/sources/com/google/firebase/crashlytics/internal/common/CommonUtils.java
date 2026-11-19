package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Debug;
import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.Logger;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
public class CommonUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f34511a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Architecture {
        private static final /* synthetic */ Architecture[] $VALUES;
        public static final Architecture ARM64;
        public static final Architecture ARMV6;
        public static final Architecture ARMV7;
        public static final Architecture ARMV7S;
        public static final Architecture ARM_UNKNOWN;
        public static final Architecture PPC;
        public static final Architecture PPC64;
        public static final Architecture UNKNOWN;
        public static final Architecture X86_32;
        public static final Architecture X86_64;
        private static final Map<String, Architecture> matcher;

        static {
            Architecture architecture = new Architecture("X86_32", 0);
            X86_32 = architecture;
            Architecture architecture2 = new Architecture("X86_64", 1);
            X86_64 = architecture2;
            Architecture architecture3 = new Architecture("ARM_UNKNOWN", 2);
            ARM_UNKNOWN = architecture3;
            Architecture architecture4 = new Architecture("PPC", 3);
            PPC = architecture4;
            Architecture architecture5 = new Architecture("PPC64", 4);
            PPC64 = architecture5;
            Architecture architecture6 = new Architecture("ARMV6", 5);
            ARMV6 = architecture6;
            Architecture architecture7 = new Architecture("ARMV7", 6);
            ARMV7 = architecture7;
            Architecture architecture8 = new Architecture("UNKNOWN", 7);
            UNKNOWN = architecture8;
            Architecture architecture9 = new Architecture("ARMV7S", 8);
            ARMV7S = architecture9;
            Architecture architecture10 = new Architecture("ARM64", 9);
            ARM64 = architecture10;
            $VALUES = new Architecture[]{architecture, architecture2, architecture3, architecture4, architecture5, architecture6, architecture7, architecture8, architecture9, architecture10};
            HashMap map = new HashMap(4);
            matcher = map;
            map.put("armeabi-v7a", architecture7);
            map.put("armeabi", architecture6);
            map.put("arm64-v8a", architecture10);
            map.put("x86", architecture);
        }

        public static Architecture a() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                Logger.f34483b.a(2);
                return UNKNOWN;
            }
            Architecture architecture = matcher.get(str.toLowerCase(Locale.US));
            return architecture == null ? UNKNOWN : architecture;
        }

        public static Architecture valueOf(String str) {
            return (Architecture) Enum.valueOf(Architecture.class, str);
        }

        public static Architecture[] values() {
            return (Architecture[]) $VALUES.clone();
        }
    }

    public static synchronized long a(Context context) {
        ActivityManager.MemoryInfo memoryInfo;
        memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
                Logger.f34483b.b();
            }
        }
    }

    public static boolean c(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int iE = e(context, str, "bool");
            if (iE > 0) {
                return resources.getBoolean(iE);
            }
            int iE2 = e(context, str, "string");
            if (iE2 > 0) {
                return Boolean.parseBoolean(context.getString(iE2));
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static int d() {
        boolean zG = g();
        ?? r0 = zG;
        if (h()) {
            r0 = (zG ? 1 : 0) | 2;
        }
        return (Debug.isDebuggerConnected() || Debug.waitingForDebugger()) ? r0 | 4 : r0;
    }

    public static int e(Context context, String str, String str2) {
        String packageName;
        Resources resources = context.getResources();
        int i2 = context.getApplicationContext().getApplicationInfo().icon;
        if (i2 > 0) {
            try {
                packageName = context.getResources().getResourcePackageName(i2);
                if (ReferenceApiV3ConstKt.OS_NAME.equals(packageName)) {
                    packageName = context.getPackageName();
                }
            } catch (Resources.NotFoundException unused) {
                packageName = context.getPackageName();
            }
        } else {
            packageName = context.getPackageName();
        }
        return resources.getIdentifier(str, str2, packageName);
    }

    public static String f(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            byte b2 = bArr[i2];
            int i3 = i2 * 2;
            char[] cArr2 = f34511a;
            cArr[i3] = cArr2[(b2 & 255) >>> 4];
            cArr[i3 + 1] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public static boolean g() {
        if (Build.PRODUCT.contains("sdk")) {
            return true;
        }
        String str = Build.HARDWARE;
        return str.contains("goldfish") || str.contains("ranchu");
    }

    public static boolean h() {
        boolean zG = g();
        String str = Build.TAGS;
        if ((zG || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !zG && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static String i(String str) {
        byte[] bytes = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
            messageDigest.update(bytes);
            return f(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            Logger.f34483b.b();
            return "";
        }
    }

    public static String j(FileInputStream fileInputStream) {
        Scanner scannerUseDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
        try {
            String next = scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
            scannerUseDelimiter.close();
            return next;
        } catch (Throwable th) {
            if (scannerUseDelimiter != null) {
                try {
                    scannerUseDelimiter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
