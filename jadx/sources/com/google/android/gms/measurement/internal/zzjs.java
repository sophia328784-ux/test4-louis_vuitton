package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f31866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f31867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31868c;
    public final com.google.android.gms.internal.measurement.zzdb d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f31869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Long f31870f;
    public final Long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f31871h;

    public zzjs(Context context, com.google.android.gms.internal.measurement.zzdb zzdbVar, Long l, Long l2) {
        this.f31869e = true;
        Preconditions.h(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.h(applicationContext);
        this.f31866a = applicationContext;
        this.f31870f = l;
        this.g = l2;
        if (zzdbVar != null) {
            this.d = zzdbVar;
            this.f31869e = zzdbVar.d;
            this.f31868c = zzdbVar.f30605c;
            this.f31871h = zzdbVar.f30607f;
            Bundle bundle = zzdbVar.f30606e;
            if (bundle != null) {
                this.f31867b = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
