package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class zze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzji f31677a;

    public zze(zzji zzjiVar) {
        this.f31677a = zzjiVar;
    }

    public static zze a(String str) {
        return new zze((TextUtils.isEmpty(str) || str.length() > 1) ? zzji.UNINITIALIZED : zzjl.e(str.charAt(0)));
    }
}
