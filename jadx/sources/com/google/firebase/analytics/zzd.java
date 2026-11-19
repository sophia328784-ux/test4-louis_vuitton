package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzlk;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzd implements zzlk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzez f34377a;

    public zzd(zzez zzezVar) {
        this.f34377a = zzezVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final long J() {
        return this.f34377a.C();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String K() {
        return this.f34377a.a();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String M() {
        return this.f34377a.B();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String a() {
        return this.f34377a.A();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void b(String str, String str2, Bundle bundle) {
        this.f34377a.l(str, str2, bundle, true, true, null, null);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final String c() {
        return this.f34377a.b();
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void d(Bundle bundle) {
        this.f34377a.q(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void e(String str) {
        this.f34377a.y(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void f(String str, String str2, Bundle bundle, long j2) {
        this.f34377a.l(str, str2, bundle, true, false, Long.valueOf(j2), 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void g(String str) {
        this.f34377a.x(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final int h(String str) {
        return this.f34377a.e(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final Map i(String str, String str2, boolean z) {
        return this.f34377a.c(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void j(zzjp zzjpVar) {
        this.f34377a.n(zzjpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void k(String str, String str2, Bundle bundle) {
        this.f34377a.r(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final List l(String str, String str2) {
        return this.f34377a.s(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzlk
    public final void m(zzjq zzjqVar) {
        this.f34377a.o(zzjqVar);
    }
}
