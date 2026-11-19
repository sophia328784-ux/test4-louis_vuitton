package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjh implements Result {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Status f30127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30128c;
    public final zzjg d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzkd f30129e;

    public zzjh(Status status, int i2, zzjg zzjgVar, zzkd zzkdVar) {
        this.f30127b = status;
        this.f30128c = i2;
        this.d = zzjgVar;
        this.f30129e = zzkdVar;
    }

    public final String a() {
        int i2 = this.f30128c;
        if (i2 == 0) {
            return "Network";
        }
        if (i2 == 1) {
            return "Saved file on disk";
        }
        if (i2 == 2) {
            return "Default resource";
        }
        md.k("Resource source is unknown.");
        return null;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f30127b;
    }
}
