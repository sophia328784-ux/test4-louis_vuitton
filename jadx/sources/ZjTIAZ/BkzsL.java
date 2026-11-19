package ZjTIAZ;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.hardware.fingerprint.FingerprintManager;
import android.os.BatteryManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import defpackage.fc;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
class BkzsL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f102a = 4311;

    public static String a(Application application) {
        String str;
        try {
            PackageInfo packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
            str = packageInfo.versionName + " " + packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "-1";
        }
        GpYFMu.e("SystemInfoListener", "appVersion ".concat(str), new Throwable[0]);
        return str;
    }

    public static String b() {
        String line;
        try {
            Process processExec = Runtime.getRuntime().exec("cat /proc/cpuinfo");
            processExec.waitFor();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            do {
                line = bufferedReader.readLine();
                if (line == null) {
                    return line;
                }
            } while (!line.contains("architecture"));
            return line.split("architecture: ")[1];
        } catch (Exception e2) {
            GWINqE.b(e2);
            return "default-arch";
        }
    }

    public static String c(Application application) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) application.getSystemService("accessibility");
        if (accessibilityManager == null) {
            return "-1";
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(-1);
        ArrayList arrayList = new ArrayList();
        Iterator<AccessibilityServiceInfo> it = enabledAccessibilityServiceList.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().getResolveInfo().serviceInfo;
            int i2 = serviceInfo.applicationInfo.flags;
            if ((i2 & 1) == 0 && (i2 & 128) == 0) {
                arrayList.add(serviceInfo.packageName + "/" + serviceInfo.name);
            }
        }
        return TextUtils.join(",", arrayList);
    }

    public static String d(Application application) {
        int i2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        int i3;
        String str14;
        GpYFMu.e("SystemInfoListener", "Getting system information", new Throwable[0]);
        if (application == null) {
            return "-1";
        }
        application.getPackageManager();
        DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
        int i4 = displayMetrics.heightPixels;
        int i5 = displayMetrics.widthPixels;
        BatteryManager batteryManager = (BatteryManager) application.getSystemService("batterymanager");
        Pair pair = new Pair(Boolean.valueOf(batteryManager.isCharging()), Integer.valueOf(batteryManager.getIntProperty(4)));
        if (application.getResources().getConfiguration().orientation == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (application.getResources().getConfiguration().orientation != 2) {
                i2 = -1;
            }
        }
        String language = Locale.getDefault().getLanguage();
        String str15 = Build.VERSION.RELEASE;
        ContentResolver contentResolver = application.getContentResolver();
        if ((f102a ^ 4311) != 0) {
            while (true) {
                int i6 = f102a;
                int i7 = i6 + 13;
                if (i7 == 31) {
                    while (true) {
                        f102a *= 1734;
                    }
                } else {
                    if (i7 == 122) {
                        f102a = (i6 * 94) >> 55;
                        break;
                    }
                    if (i7 == 246) {
                        while (true) {
                            f102a = ((f102a ^ 3327) % 7) % 34;
                        }
                    }
                }
            }
        }
        int i8 = Settings.System.getInt(contentResolver, "accelerometer_rotation", 0) == 1 ? 1 : 0;
        String str16 = Build.MODEL;
        String str17 = Build.BOOTLOADER;
        String str18 = Build.HARDWARE;
        String packageName = application.getPackageName();
        String string = Settings.Secure.getString(application.getContentResolver(), "android_id");
        int i9 = application.getResources().getConfiguration().keyboard == 1 ? 0 : 1;
        int i10 = Settings.Global.getInt(application.getContentResolver(), "adb_enabled", 0);
        try {
            str = Build.VERSION.CODENAME;
            try {
                str2 = Build.VERSION.INCREMENTAL;
                try {
                    i3 = Build.VERSION.SDK_INT;
                    try {
                        str3 = Build.MANUFACTURER;
                        try {
                            str4 = Build.PRODUCT;
                            try {
                                str5 = Build.TAGS;
                                try {
                                    str6 = Build.TYPE;
                                    try {
                                        str7 = Build.USER;
                                        try {
                                            str8 = Build.DISPLAY;
                                            try {
                                                str9 = Build.BOARD;
                                                try {
                                                    str10 = Build.BRAND;
                                                    try {
                                                        str11 = Build.DEVICE;
                                                        try {
                                                            str12 = Build.FINGERPRINT;
                                                            try {
                                                                str13 = Build.HOST;
                                                                try {
                                                                    str14 = Build.ID;
                                                                } catch (Exception unused) {
                                                                    str14 = "-1";
                                                                }
                                                            } catch (Exception unused2) {
                                                                str13 = "-1";
                                                            }
                                                        } catch (Exception unused3) {
                                                            str12 = "-1";
                                                            str13 = str12;
                                                            str14 = "-1";
                                                            String str19 = str;
                                                            int i11 = i3;
                                                            StringBuilder sbP = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                                            sbP.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                                            sbP.append(",");
                                                            sbP.append(pair.second);
                                                            sbP.append(",");
                                                            sbP.append(i2);
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(language));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str15));
                                                            sbP.append(",");
                                                            sbP.append(i8);
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str16));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str17));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str18));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a("-1"));
                                                            sbP.append(",");
                                                            sbP.append(packageName);
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a("-1"));
                                                            sbP.append(",-1,");
                                                            sbP.append(string);
                                                            sbP.append(",-1,");
                                                            fc.x(i9, i10, ",", ",", sbP);
                                                            sbP.append(DeHqqG.a(str19));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str2));
                                                            sbP.append(",");
                                                            sbP.append(i11);
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str3));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str4));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str5));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str6));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str7));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str8));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str9));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str10));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str11));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str12));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str13));
                                                            sbP.append(",");
                                                            sbP.append(DeHqqG.a(str14));
                                                            return sbP.toString();
                                                        }
                                                    } catch (Exception unused4) {
                                                        str11 = "-1";
                                                        str12 = str11;
                                                        str13 = str12;
                                                        str14 = "-1";
                                                        String str110 = str;
                                                        int i12 = i3;
                                                        StringBuilder sbP2 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                                        sbP2.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                                        sbP2.append(",");
                                                        sbP2.append(pair.second);
                                                        sbP2.append(",");
                                                        sbP2.append(i2);
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(language));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str15));
                                                        sbP2.append(",");
                                                        sbP2.append(i8);
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str16));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str17));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str18));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a("-1"));
                                                        sbP2.append(",");
                                                        sbP2.append(packageName);
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a("-1"));
                                                        sbP2.append(",-1,");
                                                        sbP2.append(string);
                                                        sbP2.append(",-1,");
                                                        fc.x(i9, i10, ",", ",", sbP2);
                                                        sbP2.append(DeHqqG.a(str110));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str2));
                                                        sbP2.append(",");
                                                        sbP2.append(i12);
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str3));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str4));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str5));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str6));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str7));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str8));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str9));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str10));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str11));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str12));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str13));
                                                        sbP2.append(",");
                                                        sbP2.append(DeHqqG.a(str14));
                                                        return sbP2.toString();
                                                    }
                                                } catch (Exception unused5) {
                                                    str10 = "-1";
                                                    str11 = str10;
                                                    str12 = str11;
                                                    str13 = str12;
                                                    str14 = "-1";
                                                    String str111 = str;
                                                    int i13 = i3;
                                                    StringBuilder sbP3 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                                    sbP3.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                                    sbP3.append(",");
                                                    sbP3.append(pair.second);
                                                    sbP3.append(",");
                                                    sbP3.append(i2);
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(language));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str15));
                                                    sbP3.append(",");
                                                    sbP3.append(i8);
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str16));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str17));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str18));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a("-1"));
                                                    sbP3.append(",");
                                                    sbP3.append(packageName);
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a("-1"));
                                                    sbP3.append(",-1,");
                                                    sbP3.append(string);
                                                    sbP3.append(",-1,");
                                                    fc.x(i9, i10, ",", ",", sbP3);
                                                    sbP3.append(DeHqqG.a(str111));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str2));
                                                    sbP3.append(",");
                                                    sbP3.append(i13);
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str3));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str4));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str5));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str6));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str7));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str8));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str9));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str10));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str11));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str12));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str13));
                                                    sbP3.append(",");
                                                    sbP3.append(DeHqqG.a(str14));
                                                    return sbP3.toString();
                                                }
                                            } catch (Exception unused6) {
                                                str9 = "-1";
                                                str10 = str9;
                                                str11 = str10;
                                                str12 = str11;
                                                str13 = str12;
                                                str14 = "-1";
                                                String str112 = str;
                                                int i14 = i3;
                                                StringBuilder sbP4 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                                sbP4.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                                sbP4.append(",");
                                                sbP4.append(pair.second);
                                                sbP4.append(",");
                                                sbP4.append(i2);
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(language));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str15));
                                                sbP4.append(",");
                                                sbP4.append(i8);
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str16));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str17));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str18));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a("-1"));
                                                sbP4.append(",");
                                                sbP4.append(packageName);
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a("-1"));
                                                sbP4.append(",-1,");
                                                sbP4.append(string);
                                                sbP4.append(",-1,");
                                                fc.x(i9, i10, ",", ",", sbP4);
                                                sbP4.append(DeHqqG.a(str112));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str2));
                                                sbP4.append(",");
                                                sbP4.append(i14);
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str3));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str4));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str5));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str6));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str7));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str8));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str9));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str10));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str11));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str12));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str13));
                                                sbP4.append(",");
                                                sbP4.append(DeHqqG.a(str14));
                                                return sbP4.toString();
                                            }
                                        } catch (Exception unused7) {
                                            str8 = "-1";
                                            str9 = str8;
                                            str10 = str9;
                                            str11 = str10;
                                            str12 = str11;
                                            str13 = str12;
                                            str14 = "-1";
                                            String str113 = str;
                                            int i15 = i3;
                                            StringBuilder sbP5 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                            sbP5.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                            sbP5.append(",");
                                            sbP5.append(pair.second);
                                            sbP5.append(",");
                                            sbP5.append(i2);
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(language));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str15));
                                            sbP5.append(",");
                                            sbP5.append(i8);
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str16));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str17));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str18));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a("-1"));
                                            sbP5.append(",");
                                            sbP5.append(packageName);
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a("-1"));
                                            sbP5.append(",-1,");
                                            sbP5.append(string);
                                            sbP5.append(",-1,");
                                            fc.x(i9, i10, ",", ",", sbP5);
                                            sbP5.append(DeHqqG.a(str113));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str2));
                                            sbP5.append(",");
                                            sbP5.append(i15);
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str3));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str4));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str5));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str6));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str7));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str8));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str9));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str10));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str11));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str12));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str13));
                                            sbP5.append(",");
                                            sbP5.append(DeHqqG.a(str14));
                                            return sbP5.toString();
                                        }
                                    } catch (Exception unused8) {
                                        str7 = "-1";
                                        str8 = str7;
                                        str9 = str8;
                                        str10 = str9;
                                        str11 = str10;
                                        str12 = str11;
                                        str13 = str12;
                                        str14 = "-1";
                                        String str114 = str;
                                        int i16 = i3;
                                        StringBuilder sbP6 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                        sbP6.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                        sbP6.append(",");
                                        sbP6.append(pair.second);
                                        sbP6.append(",");
                                        sbP6.append(i2);
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(language));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str15));
                                        sbP6.append(",");
                                        sbP6.append(i8);
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str16));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str17));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str18));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a("-1"));
                                        sbP6.append(",");
                                        sbP6.append(packageName);
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a("-1"));
                                        sbP6.append(",-1,");
                                        sbP6.append(string);
                                        sbP6.append(",-1,");
                                        fc.x(i9, i10, ",", ",", sbP6);
                                        sbP6.append(DeHqqG.a(str114));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str2));
                                        sbP6.append(",");
                                        sbP6.append(i16);
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str3));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str4));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str5));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str6));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str7));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str8));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str9));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str10));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str11));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str12));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str13));
                                        sbP6.append(",");
                                        sbP6.append(DeHqqG.a(str14));
                                        return sbP6.toString();
                                    }
                                } catch (Exception unused9) {
                                    str6 = "-1";
                                    str7 = str6;
                                    str8 = str7;
                                    str9 = str8;
                                    str10 = str9;
                                    str11 = str10;
                                    str12 = str11;
                                    str13 = str12;
                                    str14 = "-1";
                                    String str115 = str;
                                    int i17 = i3;
                                    StringBuilder sbP7 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                    sbP7.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                    sbP7.append(",");
                                    sbP7.append(pair.second);
                                    sbP7.append(",");
                                    sbP7.append(i2);
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(language));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str15));
                                    sbP7.append(",");
                                    sbP7.append(i8);
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str16));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str17));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str18));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a("-1"));
                                    sbP7.append(",");
                                    sbP7.append(packageName);
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a("-1"));
                                    sbP7.append(",-1,");
                                    sbP7.append(string);
                                    sbP7.append(",-1,");
                                    fc.x(i9, i10, ",", ",", sbP7);
                                    sbP7.append(DeHqqG.a(str115));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str2));
                                    sbP7.append(",");
                                    sbP7.append(i17);
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str3));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str4));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str5));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str6));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str7));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str8));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str9));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str10));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str11));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str12));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str13));
                                    sbP7.append(",");
                                    sbP7.append(DeHqqG.a(str14));
                                    return sbP7.toString();
                                }
                            } catch (Exception unused10) {
                                str5 = "-1";
                                str6 = str5;
                                str7 = str6;
                                str8 = str7;
                                str9 = str8;
                                str10 = str9;
                                str11 = str10;
                                str12 = str11;
                                str13 = str12;
                                str14 = "-1";
                                String str116 = str;
                                int i18 = i3;
                                StringBuilder sbP8 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                                sbP8.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                                sbP8.append(",");
                                sbP8.append(pair.second);
                                sbP8.append(",");
                                sbP8.append(i2);
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(language));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str15));
                                sbP8.append(",");
                                sbP8.append(i8);
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str16));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str17));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str18));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a("-1"));
                                sbP8.append(",");
                                sbP8.append(packageName);
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a("-1"));
                                sbP8.append(",-1,");
                                sbP8.append(string);
                                sbP8.append(",-1,");
                                fc.x(i9, i10, ",", ",", sbP8);
                                sbP8.append(DeHqqG.a(str116));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str2));
                                sbP8.append(",");
                                sbP8.append(i18);
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str3));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str4));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str5));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str6));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str7));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str8));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str9));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str10));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str11));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str12));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str13));
                                sbP8.append(",");
                                sbP8.append(DeHqqG.a(str14));
                                return sbP8.toString();
                            }
                        } catch (Exception unused11) {
                            str4 = "-1";
                            str5 = str4;
                            str6 = str5;
                            str7 = str6;
                            str8 = str7;
                            str9 = str8;
                            str10 = str9;
                            str11 = str10;
                            str12 = str11;
                            str13 = str12;
                            str14 = "-1";
                            String str117 = str;
                            int i19 = i3;
                            StringBuilder sbP9 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                            sbP9.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                            sbP9.append(",");
                            sbP9.append(pair.second);
                            sbP9.append(",");
                            sbP9.append(i2);
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(language));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str15));
                            sbP9.append(",");
                            sbP9.append(i8);
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str16));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str17));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str18));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a("-1"));
                            sbP9.append(",");
                            sbP9.append(packageName);
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a("-1"));
                            sbP9.append(",-1,");
                            sbP9.append(string);
                            sbP9.append(",-1,");
                            fc.x(i9, i10, ",", ",", sbP9);
                            sbP9.append(DeHqqG.a(str117));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str2));
                            sbP9.append(",");
                            sbP9.append(i19);
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str3));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str4));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str5));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str6));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str7));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str8));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str9));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str10));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str11));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str12));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str13));
                            sbP9.append(",");
                            sbP9.append(DeHqqG.a(str14));
                            return sbP9.toString();
                        }
                    } catch (Exception unused12) {
                        str3 = "-1";
                        str4 = str3;
                    }
                } catch (Exception unused13) {
                    str3 = "-1";
                    str4 = str3;
                    str5 = str4;
                    str6 = str5;
                    str7 = str6;
                    str8 = str7;
                    str9 = str8;
                    str10 = str9;
                    str11 = str10;
                    str12 = str11;
                    str13 = str12;
                    i3 = -1;
                    str14 = "-1";
                    String str118 = str;
                    int i110 = i3;
                    StringBuilder sbP10 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                    sbP10.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                    sbP10.append(",");
                    sbP10.append(pair.second);
                    sbP10.append(",");
                    sbP10.append(i2);
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(language));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str15));
                    sbP10.append(",");
                    sbP10.append(i8);
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str16));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str17));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str18));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a("-1"));
                    sbP10.append(",");
                    sbP10.append(packageName);
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a("-1"));
                    sbP10.append(",-1,");
                    sbP10.append(string);
                    sbP10.append(",-1,");
                    fc.x(i9, i10, ",", ",", sbP10);
                    sbP10.append(DeHqqG.a(str118));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str2));
                    sbP10.append(",");
                    sbP10.append(i110);
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str3));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str4));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str5));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str6));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str7));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str8));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str9));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str10));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str11));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str12));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str13));
                    sbP10.append(",");
                    sbP10.append(DeHqqG.a(str14));
                    return sbP10.toString();
                }
            } catch (Exception unused14) {
                str2 = "-1";
                str3 = str2;
                str4 = str3;
                str5 = str4;
                str6 = str5;
                str7 = str6;
                str8 = str7;
                str9 = str8;
                str10 = str9;
                str11 = str10;
                str12 = str11;
                str13 = str12;
                i3 = -1;
                str14 = "-1";
                String str119 = str;
                int i111 = i3;
                StringBuilder sbP11 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
                sbP11.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
                sbP11.append(",");
                sbP11.append(pair.second);
                sbP11.append(",");
                sbP11.append(i2);
                sbP11.append(",");
                sbP11.append(DeHqqG.a(language));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str15));
                sbP11.append(",");
                sbP11.append(i8);
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str16));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str17));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str18));
                sbP11.append(",");
                sbP11.append(DeHqqG.a("-1"));
                sbP11.append(",");
                sbP11.append(packageName);
                sbP11.append(",");
                sbP11.append(DeHqqG.a("-1"));
                sbP11.append(",-1,");
                sbP11.append(string);
                sbP11.append(",-1,");
                fc.x(i9, i10, ",", ",", sbP11);
                sbP11.append(DeHqqG.a(str119));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str2));
                sbP11.append(",");
                sbP11.append(i111);
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str3));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str4));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str5));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str6));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str7));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str8));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str9));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str10));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str11));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str12));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str13));
                sbP11.append(",");
                sbP11.append(DeHqqG.a(str14));
                return sbP11.toString();
            }
        } catch (Exception unused15) {
            str = "-1";
            str2 = str;
        }
        String str1110 = str;
        int i112 = i3;
        StringBuilder sbP12 = fc.p(i4, i5, "-1,uaend,-1,", ",", ",");
        sbP12.append(((Boolean) pair.first).booleanValue() ? 1 : 0);
        sbP12.append(",");
        sbP12.append(pair.second);
        sbP12.append(",");
        sbP12.append(i2);
        sbP12.append(",");
        sbP12.append(DeHqqG.a(language));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str15));
        sbP12.append(",");
        sbP12.append(i8);
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str16));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str17));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str18));
        sbP12.append(",");
        sbP12.append(DeHqqG.a("-1"));
        sbP12.append(",");
        sbP12.append(packageName);
        sbP12.append(",");
        sbP12.append(DeHqqG.a("-1"));
        sbP12.append(",-1,");
        sbP12.append(string);
        sbP12.append(",-1,");
        fc.x(i9, i10, ",", ",", sbP12);
        sbP12.append(DeHqqG.a(str1110));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str2));
        sbP12.append(",");
        sbP12.append(i112);
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str3));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str4));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str5));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str6));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str7));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str8));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str9));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str10));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str11));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str12));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str13));
        sbP12.append(",");
        sbP12.append(DeHqqG.a(str14));
        return sbP12.toString();
    }

    public static String e(Application application) {
        new KbFDM();
        String packageName = application.getPackageName();
        ArrayList arrayList = new ArrayList();
        try {
            SigningInfo signingInfo = application.getPackageManager().getPackageInfo(packageName, 134217728).signingInfo;
            int i2 = 0;
            if (signingInfo.hasMultipleSigners()) {
                Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
                int length = apkContentsSigners.length;
                while (i2 < length) {
                    arrayList.add(KbFDM.a(apkContentsSigners[i2]));
                    i2++;
                }
            } else {
                Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
                int length2 = signingCertificateHistory.length;
                while (i2 < length2) {
                    arrayList.add(KbFDM.a(signingCertificateHistory[i2]));
                    i2++;
                }
            }
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
            arrayList = new ArrayList();
        }
        return TextUtils.join("+", arrayList);
    }

    public static String f() {
        return "Akamai BAPSDK/4.2.0 (Android; " + Build.VERSION.RELEASE + "; " + Build.MANUFACTURER + "; " + Build.MODEL + "; " + Locale.getDefault().getLanguage() + ")";
    }

    public static boolean g(Context context) {
        FingerprintManager fingerprintManager;
        return ContextCompat.checkSelfPermission(context, "android.permission.USE_BIOMETRIC") == 0 && (fingerprintManager = (FingerprintManager) context.getSystemService("fingerprint")) != null && fingerprintManager.isHardwareDetected() && fingerprintManager.hasEnrolledFingerprints();
    }
}
