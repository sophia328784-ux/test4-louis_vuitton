package com.google.android.gms.measurement;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzd;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpl;
import com.google.android.gms.measurement.internal.zzpp;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zza extends zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f32035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzlj f32036b;

    public zza(zzic zzicVar) {
        Preconditions.h(zzicVar);
        this.f32035a = zzicVar;
        zzlj zzljVar = zzicVar.m;
        zzic.l(zzljVar);
        this.f32036b = zzljVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final long J() {
        zzpp zzppVar = this.f32035a.f31844i;
        zzic.k(zzppVar);
        return zzppVar.e0();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String K() {
        return this.f32036b.C();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String M() {
        return (String) this.f32036b.g.get();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String a() {
        return this.f32036b.E();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void b(String str, String str2, Bundle bundle) {
        this.f32036b.k(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String c() {
        return this.f32036b.D();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void d(Bundle bundle) {
        this.f32036b.y(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void e(String str) {
        zzic zzicVar = this.f32035a;
        zzd zzdVar = zzicVar.n;
        zzic.j(zzdVar);
        zzicVar.f31846k.getClass();
        zzdVar.i(SystemClock.elapsedRealtime(), str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void f(String str, String str2, Bundle bundle, long j2) {
        this.f32036b.l(str, str2, bundle, true, false, j2, 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void g(String str) {
        zzic zzicVar = this.f32035a;
        zzd zzdVar = zzicVar.n;
        zzic.j(zzdVar);
        zzicVar.f31846k.getClass();
        zzdVar.h(SystemClock.elapsedRealtime(), str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final int h(String str) {
        this.f32036b.x(str);
        return 25;
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Map i(String str, String str2, boolean z) {
        return this.f32036b.t(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void j(zzjp zzjpVar) {
        this.f32036b.v(zzjpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void k(String str, String str2, Bundle bundle) {
        zzlj zzljVar = this.f32035a.m;
        zzic.l(zzljVar);
        zzljVar.A(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final List l(String str, String str2) {
        return this.f32036b.B(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void m(zzjq zzjqVar) {
        this.f32036b.w(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.zzc
    public final Map n() {
        List<zzpl> listS = this.f32036b.s();
        ArrayMap arrayMap = new ArrayMap(listS.size());
        for (zzpl zzplVar : listS) {
            Object objW1 = zzplVar.W1();
            if (objW1 != null) {
                arrayMap.put(zzplVar.f32000c, objW1);
            }
        }
        return arrayMap;
    }
}
