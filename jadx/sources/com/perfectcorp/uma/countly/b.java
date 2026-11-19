package com.perfectcorp.uma.countly;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.LocaleList;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import defpackage.cj;
import defpackage.md;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f43208a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f43210c;
    public Future d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f43212f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile String f43214i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f43209b = Executors.newSingleThreadExecutor(new c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.perfectcorp.uma.internal.b f43211e = com.perfectcorp.uma.internal.b.f43270a;
    public volatile String g = "http://undefined";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile String f43213h = "undefined";

    public final String a(u uVar) {
        return "timestamp=" + ((int) (uVar.f43257a / 1000)) + "&tz=" + uVar.a() + "&metrics=" + this.f43212f + this.f43211e.a();
    }

    public final void b(int i2, String str) {
        d();
        String strConcat = a(new u()).concat("&end_session=1");
        if (i2 > 0) {
            strConcat = cj.e(i2, strConcat, "&session_duration=");
        }
        String strConcat2 = strConcat.concat(this.f43211e.b());
        if (str != null) {
            strConcat2 = strConcat2.concat(str);
        }
        this.f43208a.b(strConcat2);
        e();
    }

    public final void c(Context context) {
        this.f43210c = context;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_device", Build.MODEL);
            jSONObject.put("_os", "Android");
            jSONObject.put("_os_version", Build.VERSION.RELEASE);
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String str = "";
            String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : "";
            if (networkOperatorName == null || networkOperatorName.length() == 0) {
                com.perfectcorp.uma.b.d.c("CountlyDeviceInfo", "No carrier found");
                networkOperatorName = "";
            }
            jSONObject.put("_carrier", networkOperatorName);
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            jSONObject.put("_resolution", displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
            int i2 = context.getResources().getDisplayMetrics().densityDpi;
            if (i2 == 120) {
                str = "LDPI";
            } else if (i2 == 160) {
                str = "MDPI";
            } else if (i2 == 213) {
                str = "TVDPI";
            } else if (i2 == 240) {
                str = "HDPI";
            } else if (i2 == 320) {
                str = "XHDPI";
            } else if (i2 == 400) {
                str = "XMHDPI";
            } else if (i2 == 480) {
                str = "XXHDPI";
            } else if (i2 == 640) {
                str = "XXXHDPI";
            }
            jSONObject.put("_density", str);
            Locale locale = LocaleList.getDefault().get(0);
            jSONObject.put("_locale", locale.getLanguage() + "_" + locale.getCountry());
            String str2 = "1.0";
            try {
                str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException unused) {
                com.perfectcorp.uma.b.d.f43200a.a(5, "CountlyDeviceInfo", "No app version found");
            }
            jSONObject.put("_app_version", str2);
        } catch (JSONException unused2) {
        }
        String string = jSONObject.toString();
        try {
            string = URLEncoder.encode(string, "UTF-8");
        } catch (UnsupportedEncodingException unused3) {
        }
        this.f43212f = string;
    }

    public final void d() {
        String str;
        if (this.f43210c == null) {
            str = "context has not been set";
        } else if (this.f43213h == null || this.f43213h.length() == 0) {
            str = "app key has not been set";
        } else if (this.f43208a != null) {
            if (this.g != null) {
                String str2 = this.g;
                ExecutorService executorService = d.g;
                if (str2 != null && str2.length() > 0) {
                    try {
                        new URL(str2);
                        return;
                    } catch (MalformedURLException unused) {
                    }
                }
            }
            str = "server URL is not valid";
        } else {
            str = "countly store has not been set";
        }
        md.k(str);
    }

    public final void e() {
        if (this.f43208a.a().e("CONNECTION_TABLE") == 0) {
            return;
        }
        Future future = this.d;
        if (future == null || future.isDone()) {
            if (this.f43214i == null) {
                try {
                    this.f43214i = com.perfectcorp.uma.s.a(this.f43210c, true);
                } catch (Throwable unused) {
                    return;
                }
            }
            if ("http://undefined".equals(this.g) || "undefined".equals(this.f43213h)) {
                return;
            }
            this.d = this.f43209b.submit(new a(this.g, this.f43208a, this, d.f43215h, d.f43218k));
        }
    }
}
