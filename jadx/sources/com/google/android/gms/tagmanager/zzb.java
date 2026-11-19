package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement;
import defpackage.bm;

/* JADX INFO: loaded from: classes2.dex */
final class zzb implements AppMeasurement.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzk f32079a;

    public zzb(zzk zzkVar) {
        this.f32079a = zzkVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void a(String str, String str2, Bundle bundle, long j2) {
        try {
            this.f32079a.a(str, str2, bundle, j2);
        } catch (RemoteException e2) {
            bm.i(e2);
        }
    }
}
