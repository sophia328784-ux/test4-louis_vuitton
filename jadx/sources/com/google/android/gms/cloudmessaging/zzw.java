package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f28946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28947c = 0;

    public zzw(Context context) {
        this.f28945a = context;
    }

    public final synchronized int a() {
        int i2 = this.f28947c;
        if (i2 != 0) {
            return i2;
        }
        Context context = this.f28945a;
        PackageManager packageManager = context.getPackageManager();
        if (Wrappers.a(context).f29356a.getPackageManager().checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            return 0;
        }
        Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");
        intent.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers == null || listQueryBroadcastReceivers.isEmpty()) {
            this.f28947c = 2;
            return 2;
        }
        this.f28947c = 2;
        return 2;
    }

    public final synchronized int b() {
        PackageInfo packageInfoB;
        if (this.f28946b == 0) {
            try {
                packageInfoB = Wrappers.a(this.f28945a).b(0, "com.google.android.gms");
            } catch (PackageManager.NameNotFoundException e2) {
                "Failed to find package ".concat(e2.toString());
                packageInfoB = null;
            }
            if (packageInfoB != null) {
                this.f28946b = packageInfoB.versionCode;
            }
        }
        return this.f28946b;
    }
}
