package com.google.android.gms.common.wrappers;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;

/* JADX INFO: loaded from: classes2.dex */
public class PackageManagerWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29356a;

    public PackageManagerWrapper(Context context) {
        this.f29356a = context;
    }

    public final ApplicationInfo a(int i2, String str) {
        return this.f29356a.getPackageManager().getApplicationInfo(str, i2);
    }

    public final PackageInfo b(int i2, String str) {
        return this.f29356a.getPackageManager().getPackageInfo(str, i2);
    }

    public final boolean c() {
        int callingUid = Binder.getCallingUid();
        int iMyUid = Process.myUid();
        Context context = this.f29356a;
        if (callingUid == iMyUid) {
            return InstantApps.a(context);
        }
        String nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid());
        if (nameForUid != null) {
            return context.getPackageManager().isInstantApp(nameForUid);
        }
        return false;
    }
}
