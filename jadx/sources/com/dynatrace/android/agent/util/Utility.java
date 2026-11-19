package com.dynatrace.android.agent.util;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.dynatrace.android.agent.Global;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class Utility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f27585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicLong f27586b;

    static {
        boolean z = Global.f27307a;
        f27585a = new AtomicInteger(1);
        f27586b = new AtomicLong(0L);
    }

    public static void a() {
        if (Global.f27307a) {
            g();
        }
    }

    public static void b(String str) {
        if (Global.f27307a) {
            n(str);
        }
    }

    public static int c(Application application) {
        ApplicationInfo applicationInfo;
        if (application == null) {
            return 0;
        }
        try {
            applicationInfo = Build.VERSION.SDK_INT >= 33 ? application.getPackageManager().getApplicationInfo(application.getPackageName(), PackageManager.ApplicationInfoFlags.of(0L)) : application.getPackageManager().getApplicationInfo(application.getPackageName(), 0);
        } catch (Exception unused) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            return applicationInfo.targetSdkVersion;
        }
        return 0;
    }

    public static String d() throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        String str = "";
        Process process = null;
        inputStream = null;
        InputStream inputStream3 = null;
        Process process2 = null;
        try {
            try {
                Process processStart = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
                try {
                    inputStream3 = processStart.getInputStream();
                    byte[] bArr = new byte[1024];
                    String str2 = "";
                    while (inputStream3.read(bArr) != -1) {
                        str2 = str2 + new String(bArr).trim();
                    }
                    String[] strArrSplit = str2.split("\n");
                    if (strArrSplit != null && strArrSplit.length >= 1) {
                        for (String str3 : strArrSplit) {
                            String strH = h(str3);
                            if (strH != null) {
                                str = strH;
                                break;
                            }
                        }
                        processStart.destroy();
                        inputStream3.close();
                        return str;
                    }
                    processStart.destroy();
                    try {
                        inputStream3.close();
                    } catch (IOException unused) {
                    }
                    return "";
                } catch (IOException unused2) {
                    inputStream2 = inputStream3;
                    process2 = processStart;
                    if (process2 != null) {
                        process2.destroy();
                    }
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    return str;
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream3;
                    process = processStart;
                    if (process != null) {
                        process.destroy();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
            }
        } catch (IOException unused5) {
            inputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public static long e() {
        return Build.VERSION.SDK_INT >= 36 ? Thread.currentThread().threadId() : Thread.currentThread().getId();
    }

    public static long f(Thread thread) {
        return Build.VERSION.SDK_INT >= 36 ? thread.threadId() : thread.getId();
    }

    public static String g() {
        return String.format("#%d.", Long.valueOf(e()));
    }

    public static String h(String str) {
        String[] strArrSplit;
        String str2;
        String str3;
        if (str != null && (strArrSplit = str.split(":")) != null && strArrSplit.length > 1 && (str2 = strArrSplit[0]) != null) {
            if (str2.startsWith("Processor")) {
                String str4 = strArrSplit[1];
                if (str4 == null) {
                    return null;
                }
                return str4.replaceAll(" Processor ", " ").trim();
            }
            if (!strArrSplit[0].startsWith("vendor_id") || (str3 = strArrSplit[1]) == null) {
                return null;
            }
            return str3.trim();
        }
        return null;
    }

    public static int i(String str, int i2, boolean z, String str2, int i3, int i4) {
        if (str2 != null && !str2.isEmpty()) {
            try {
                int i5 = Integer.parseInt(str2);
                if (i5 < i2) {
                    if (Global.f27307a) {
                        n(str + " value of " + str2 + " is not within the range of " + i2 + " and " + i3);
                    }
                    if (!z) {
                        return i2;
                    }
                } else {
                    if (i5 <= i3) {
                        return i5;
                    }
                    if (Global.f27307a) {
                        n(str + " value of " + str2 + " is not within the range of " + i2 + " and " + i3);
                    }
                    if (!z) {
                        return i3;
                    }
                }
            } catch (NumberFormatException unused) {
                if (Global.f27307a) {
                    g();
                }
            }
        }
        return i4;
    }

    public static byte[] j(FilterInputStream filterInputStream) throws IOException {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i2 = filterInputStream.read(bArr);
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    public static String k(int i2, String str) {
        if (str == null) {
            return null;
        }
        return str.length() > i2 ? str.substring(0, i2) : str;
    }

    public static String l(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf("?");
        if (iIndexOf < 0 || 250 < iIndexOf) {
            iIndexOf = 250;
        }
        return str.length() > iIndexOf ? str.substring(0, iIndexOf) : str;
    }

    public static String m(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            if (Global.f27307a) {
                e2.toString();
                g();
            }
            return str.replaceAll("&", "%26").replaceAll("=", "%3D");
        }
    }

    public static void n(String str) {
        String str2 = g() + str;
        int length = (str2.length() - 1) / 4000;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 * 4000;
            i2++;
            str2.substring(i3, i2 * 4000);
        }
        str2.substring(i2 * 4000);
    }
}
