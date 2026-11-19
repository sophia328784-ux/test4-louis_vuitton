package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;
import ZjTIAZ.DeHqqG;
import ZjTIAZ.GWINqE;
import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.cyberfend.cyfsecurity.SensorDataBuilder.AnonymousClass1;

/* JADX INFO: loaded from: classes2.dex */
public class SoLibraryInitProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f25400b;

    static {
        CNATAC.a("]JYZQ@NRhx[UAfEW_COI_");
        CNATAC.a("]JYZQ@NRhx[UAfEW_COI_\u000e@^bPFEQC\u001d\bHht\u007fxml\u001d");
        f25400b = CNATAC.a("oNt^R[MAa");
        CNATAC.a("HD|_VV\u000fT~\u0011YSTR\u0017VH^BZH\u000eCYCPBV\\\u001c\u0007");
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
            System.loadLibrary(f25400b);
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
        return true;
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
