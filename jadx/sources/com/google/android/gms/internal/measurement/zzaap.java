package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
final class zzaap extends zzaat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzaap f30314b = new zzaap(zzaav.f30326a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f30315a;

    public zzaap(zzaat zzaatVar) {
        this.f30315a = new AtomicReference(zzaatVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final void a(String str, Level level, boolean z) {
        ((zzaat) this.f30315a.get()).a(str, level, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final zzabe b() {
        return ((zzaat) this.f30315a.get()).b();
    }

    @Override // com.google.android.gms.internal.measurement.zzaat
    public final zzzj c() {
        return ((zzaat) this.f30315a.get()).c();
    }
}
