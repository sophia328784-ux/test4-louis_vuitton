package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlk;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzb extends zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzlk f32037a;

    public zzb(zzlk zzlkVar) {
        Preconditions.h(zzlkVar);
        this.f32037a = zzlkVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final long J() {
        return this.f32037a.J();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String K() {
        return this.f32037a.K();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String M() {
        return this.f32037a.M();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String a() {
        return this.f32037a.a();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void b(String str, String str2, Bundle bundle) {
        this.f32037a.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String c() {
        return this.f32037a.c();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void d(Bundle bundle) {
        this.f32037a.d(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void e(String str) {
        this.f32037a.e(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void f(String str, String str2, Bundle bundle, long j2) {
        this.f32037a.f(str, str2, bundle, j2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void g(String str) {
        this.f32037a.g(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final int h(String str) {
        return this.f32037a.h(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Map i(String str, String str2, boolean z) {
        return this.f32037a.i(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void j(zzjp zzjpVar) {
        this.f32037a.j(zzjpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void k(String str, String str2, Bundle bundle) {
        this.f32037a.k(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final List l(String str, String str2) {
        return this.f32037a.l(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void m(zzjq zzjqVar) {
        this.f32037a.m(zzjqVar);
    }

    @Override // com.google.android.gms.measurement.zzc
    public final Map n() {
        return this.f32037a.i(null, null, true);
    }
}
