package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement;
import defpackage.bm;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements AppMeasurement.EventInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzn f32078a;

    public zza(zzn zznVar) {
        this.f32078a = zznVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjp
    public final void a(String str, String str2, Bundle bundle, long j2) {
        try {
            this.f32078a.a(str, str2, bundle, j2);
        } catch (RemoteException e2) {
            bm.i(e2);
        }
    }
}
