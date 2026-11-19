package com.google.android.gms.common.wrappers;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class Wrappers {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Wrappers f29357b = new Wrappers();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public PackageManagerWrapper f29358a = null;

    public static PackageManagerWrapper a(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        Wrappers wrappers = f29357b;
        synchronized (wrappers) {
            try {
                if (wrappers.f29358a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    wrappers.f29358a = new PackageManagerWrapper(context);
                }
                packageManagerWrapper = wrappers.f29358a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return packageManagerWrapper;
    }
}
