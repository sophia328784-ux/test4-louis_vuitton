package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzp implements zzjp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzcy f31967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f31968b;

    public zzp(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcy zzcyVar) {
        this.f31968b = appMeasurementDynamiteService;
        this.f31967a = zzcyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjp
    public final void a(String str, String str2, Bundle bundle, long j2) {
        try {
            this.f31967a.a(str, str2, bundle, j2);
        } catch (RemoteException e2) {
            zzic zzicVar = this.f31968b.f31529a;
            if (zzicVar != null) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.b(e2, "Event interceptor threw exception");
            }
        }
    }
}
