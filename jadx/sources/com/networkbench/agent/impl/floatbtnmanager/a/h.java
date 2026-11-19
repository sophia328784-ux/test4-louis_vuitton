package com.networkbench.agent.impl.floatbtnmanager.a;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f37070a = com.networkbench.agent.impl.c.f.a();

    /* JADX WARN: Code duplicated, block: B:30:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x003a: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:10:0x003a */
    public static String a(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader.readLine();
                    try {
                        bufferedReader.close();
                        return line;
                    } catch (IOException unused) {
                        f37070a.a("Exception while closing InputStream");
                        return line;
                    }
                } catch (IOException unused2) {
                    f37070a.a("Unable to read sysprop " + str);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                            f37070a.a("Exception while closing InputStream");
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException unused4) {
                        f37070a.a("Exception while closing InputStream");
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader3 != null) {
                bufferedReader3.close();
            }
            throw th;
        }
    }

    public static boolean b() {
        return !TextUtils.isEmpty(a("ro.miui.ui.version.name"));
    }

    public static boolean c() throws Throwable {
        String strA = a("ro.build.display.id");
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        return strA.contains("flyme") || strA.toLowerCase(Locale.getDefault()).contains("flyme");
    }

    public static boolean d() {
        String str = Build.MANUFACTURER;
        return str.contains("QiKU") || str.contains("360");
    }

    public static int e() throws Throwable {
        String strA = a("ro.miui.ui.version.name");
        if (strA == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strA.substring(1));
        } catch (Throwable unused) {
            f37070a.a("get miui version code error, version : ".concat(strA));
            return -1;
        }
    }

    public static double f() {
        try {
            String strA = a("ro.build.version.emui");
            if (TextUtils.isEmpty(strA)) {
                return 4.0d;
            }
            return Double.parseDouble(strA.substring(strA.indexOf("_") + 1));
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("RomChecker getEmuiVersion error: ", th);
            return 4.0d;
        }
    }

    public static boolean a() {
        return Build.MANUFACTURER.contains("HUAWEI");
    }
}
