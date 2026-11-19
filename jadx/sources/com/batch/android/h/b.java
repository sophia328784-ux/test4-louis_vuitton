package com.batch.android.h;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.batch.android.e.a0;
import com.batch.android.e.o0;
import com.batch.android.e.z;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.w;
import defpackage.tr;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23438a = "SystemParameterHelper";

    public static JSONObject a(List<e> list) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (e eVar : list) {
            String str = eVar.a().f23447c;
            if (str != null) {
                jSONObject.put(str, eVar.d() != null ? eVar.d() : JSONObject.NULL);
            }
        }
        return jSONObject;
    }

    public static Integer b(Context context) {
        try {
            return Integer.valueOf(context.getApplicationContext().getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionCode);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c() {
        return Locale.getDefault().getCountry();
    }

    public static Long d(Context context) {
        String strA = w.a(context).a(z.Q0);
        if (strA != null) {
            return Long.valueOf(Long.parseLong(strA));
        }
        return null;
    }

    public static Long e(Context context) {
        try {
            return Long.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Long f(Context context) {
        try {
            return Long.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String g() {
        try {
            return TimeZone.getDefault().getID();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String h() {
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    public static String i() {
        return tr.g("Android ", Build.VERSION.RELEASE);
    }

    public static String j() {
        return System.getProperty(a0.n, "");
    }

    public static String k() {
        return String.valueOf(a0.f23068j);
    }

    public static String l() {
        return String.valueOf(a0.f23069k);
    }

    public static String c(Context context) {
        return context.getPackageName();
    }

    public static String e() {
        return Locale.getDefault().toLanguageTag();
    }

    public static String f() {
        try {
            return Build.MODEL;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d() {
        return o0.a(new Date());
    }

    public static String b() {
        try {
            return Build.BRAND;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a() {
        return System.getProperty(a0.o, "");
    }

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(c(context), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
