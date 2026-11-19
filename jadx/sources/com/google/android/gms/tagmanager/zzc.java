package com.google.android.gms.tagmanager;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzc extends zzp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppMeasurement f32080a;

    public zzc(AppMeasurement appMeasurement) {
        this.f32080a = appMeasurement;
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void J(String str, String str2, Bundle bundle, long j2) {
        this.f32080a.f31524a.f(str, str2, bundle, j2);
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void K1(zzn zznVar) {
        this.f32080a.f31524a.j(new zza(zznVar));
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final Map e0() {
        return this.f32080a.a();
    }

    @Override // com.google.android.gms.tagmanager.zzq
    public final void k2(zzk zzkVar) {
        this.f32080a.f31524a.m(new zzb(zzkVar));
    }
}
