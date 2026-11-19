package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzq implements zzjq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.zzcy f32014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f32015b;

    public zzq(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcy zzcyVar) {
        this.f32015b = appMeasurementDynamiteService;
        this.f32014a = zzcyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void a(String str, String str2, Bundle bundle, long j2) {
        try {
            this.f32014a.a(str, str2, bundle, j2);
        } catch (RemoteException e2) {
            zzic zzicVar = this.f32015b.f31529a;
            if (zzicVar != null) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.b(e2, "Event listener threw exception");
            }
        }
    }
}
