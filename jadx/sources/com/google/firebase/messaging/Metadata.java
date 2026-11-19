package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class Metadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f35267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f35268c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35269e = 0;

    public Metadata(Context context) {
        this.f35266a = context;
    }

    public static String b(FirebaseApp firebaseApp) {
        firebaseApp.a();
        FirebaseOptions firebaseOptions = firebaseApp.f34332c;
        String str = firebaseOptions.f34348e;
        if (str != null) {
            return str;
        }
        firebaseApp.a();
        String str2 = firebaseOptions.f34346b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] strArrSplit = str2.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public final synchronized String a() {
        try {
            if (this.f35267b == null) {
                e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f35267b;
    }

    public final synchronized int c() {
        PackageInfo packageInfo;
        try {
            if (this.d == 0) {
                try {
                    packageInfo = this.f35266a.getPackageManager().getPackageInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e2) {
                    e2.toString();
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    this.d = packageInfo.versionCode;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }

    public final boolean d() {
        int i2;
        synchronized (this) {
            i2 = this.f35269e;
            if (i2 == 0) {
                PackageManager packageManager = this.f35266a.getPackageManager();
                if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                    i2 = 0;
                } else {
                    Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");
                    intent.setPackage("com.google.android.gms");
                    List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
                    if (listQueryBroadcastReceivers == null || listQueryBroadcastReceivers.size() <= 0) {
                        this.f35269e = 2;
                    } else {
                        this.f35269e = 2;
                    }
                    i2 = 2;
                }
            }
        }
        return i2 != 0;
    }

    public final synchronized void e() {
        PackageInfo packageInfo;
        try {
            packageInfo = this.f35266a.getPackageManager().getPackageInfo(this.f35266a.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.toString();
            packageInfo = null;
        }
        if (packageInfo != null) {
            this.f35267b = Integer.toString(packageInfo.versionCode);
            this.f35268c = packageInfo.versionName;
        }
    }
}
