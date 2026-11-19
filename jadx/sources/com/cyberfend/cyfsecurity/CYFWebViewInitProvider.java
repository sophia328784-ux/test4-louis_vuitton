package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;
import ZjTIAZ.DeHqqG;
import ZjTIAZ.GWINqE;
import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.WebView;
import com.cyberfend.cyfsecurity.SensorDataBuilder.AnonymousClass1;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class CYFWebViewInitProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f25372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f25373c;
    public static String d;

    static {
        CNATAC.a("M|SdVPyItF|R\\BgJF\\BHH\\\u000f_OaQADRB\u0012\u0018jis~{lS\r");
        f25372b = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015ARZ_CN[\rGAYU\u0002");
        CNATAC.a("HD|_VV\u000fT~\u0011YSTR\u0017VH^BZH\u000eCYCPBV\\\u001c\u0007");
        f25373c = CNATAC.a("oNt^R[MAa");
        d = CNATAC.a("M|SdVPyItF|R\\BgJF\\BHH\\");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return "";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        try {
            Application.getProcessName();
            DeHqqG.d();
            System.loadLibrary(f25373c);
            try {
                new Thread(SensorDataBuilder.f25398a.new AnonymousClass1()).start();
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
            Application.getProcessName();
            DeHqqG.d();
        } catch (Exception | UnsatisfiedLinkError e3) {
            SensorDataBuilder.f25399b = true;
            e3.getMessage();
        }
        try {
            Context context = getContext();
            if (context != null) {
                String processName = Application.getProcessName();
                if (!context.getPackageName().equals(processName)) {
                    WebView.setDataDirectorySuffix(processName);
                }
            }
        } catch (Exception e4) {
            GpYFMu.d(d, f25372b + e4.getLocalizedMessage(), new Throwable[0]);
        }
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
