package com.networkbench.agent.impl.e;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.d;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static r f37010c = r.u();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f37008a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static double f37009b = -1.0d;
    private static String d = "";

    /* JADX INFO: renamed from: com.networkbench.agent.impl.e.b$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37011a;

        static {
            int[] iArr = new int[PrivacyDataType.values().length];
            f37011a = iArr;
            try {
                iArr[PrivacyDataType.PrivacyDataManufacturer.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataManufacturerModel.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataOSVersion.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataBundleId.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataAppName.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataAppVersion.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataCarrierCode.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataDeviceType.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataNetType.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37011a[PrivacyDataType.PrivacyDataDeviceSize.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static String a(PrivacyDataType privacyDataType) {
        if (d(privacyDataType)) {
            return "";
        }
        switch (AnonymousClass1.f37011a[privacyDataType.ordinal()]) {
            case 1:
                return c();
            case 2:
                return d();
            case 3:
                return a();
            case 4:
                return e();
            case 5:
                return f();
            case 6:
                return l();
            case 7:
                return g();
            default:
                return "";
        }
    }

    public static double b() {
        double d2 = f37009b;
        if (d2 != -1.0d) {
            return d2;
        }
        f37009b = 0.0d;
        try {
            DisplayMetrics displayMetrics = f37010c.J().getResources().getDisplayMetrics();
            f37009b = Math.sqrt(Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d) + Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d));
        } catch (Throwable unused) {
        }
        return f37009b;
    }

    public static int c(PrivacyDataType privacyDataType) {
        if (d(privacyDataType)) {
            return 0;
        }
        int i2 = AnonymousClass1.f37011a[privacyDataType.ordinal()];
        if (i2 == 9) {
            return i();
        }
        if (i2 != 10) {
            return 0;
        }
        return k();
    }

    public static boolean d(PrivacyDataType privacyDataType) {
        return a.a().a(privacyDataType);
    }

    public static String e() {
        return f37010c.J().getPackageName();
    }

    public static String f() {
        try {
            PackageManager packageManager = f37010c.J().getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(f37010c.J().getPackageName(), 0);
            return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : f37010c.J().getPackageName();
        } catch (Throwable th) {
            String packageName = f37010c.J().getPackageName();
            r.A.f(th.toString());
            return packageName;
        }
    }

    public static String g() {
        return NBSAgent.getActiveNetworkCarrier();
    }

    public static String h() {
        return "";
    }

    public static int i() {
        TelephonyManager telephonyManager;
        try {
            if (!v.a(f37010c.J())) {
                return 0;
            }
            if (v.b(f37010c.J())) {
                return 1;
            }
            if (a(f37010c.J()) && (telephonyManager = (TelephonyManager) f37010c.J().getSystemService("phone")) != null) {
                return telephonyManager.getNetworkType();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    private static String j() {
        return m() ? "HarmonyOS" : Build.VERSION.RELEASE;
    }

    private static int k() {
        int i2 = f37010c.J().getResources().getConfiguration().screenLayout & 15;
        if (i2 == 1) {
            return d.SMALL.ordinal();
        }
        if (i2 == 2) {
            return d.NORMAL.ordinal();
        }
        if (i2 != 3) {
            return i2 > 3 ? d.XLARGE.ordinal() : d.UNKNOWN.ordinal();
        }
        return d.LARGE.ordinal();
    }

    private static String l() {
        if (ak.r(d)) {
            try {
                d = f37010c.J().getPackageManager().getPackageInfo(f37010c.J().getPackageName(), 0).versionName;
                g.i("setVersionName  getAppVersion: " + d);
            } catch (Throwable th) {
                g.p("getAppVersion error:" + th.toString());
            }
        }
        return d;
    }

    private static boolean m() {
        if (r.u().f38394e) {
            try {
                Class.forName("ohos.utils.system.SystemCapability");
                return true;
            } catch (ClassNotFoundException unused) {
            }
        }
        return false;
    }

    private static String n() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "hw_sc.build.platform.version");
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static String d() {
        return Build.MODEL;
    }

    public static String c() {
        return Build.MANUFACTURER;
    }

    public static String a() {
        boolean zM = m();
        String strN = n();
        if (zM) {
            return !ak.r(strN) ? strN : Build.VERSION.RELEASE;
        }
        return Build.VERSION.RELEASE;
    }

    public static void a(String str) {
        if (!d(PrivacyDataType.PrivacyDataAppVersion)) {
            d = str;
            g.p("setVersionName : " + d);
            return;
        }
        d = "";
        g.p("setVersionName  PrivacyDataAppVersion is in Blacklist");
    }

    public static double b(PrivacyDataType privacyDataType) {
        if (!d(privacyDataType) && AnonymousClass1.f37011a[privacyDataType.ordinal()] == 8) {
            return b();
        }
        return 0.0d;
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        if (context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) != 0) {
            return false;
        }
        r.A.a("isGetNetworkTypePermission get READ_PHONE_STATE permission");
        return true;
    }
}
