package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzmf extends zzgg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f31908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zznl f31909b;

    public zzmf(zznl zznlVar, AtomicReference atomicReference) {
        this.f31908a = atomicReference;
        Objects.requireNonNull(zznlVar);
        this.f31909b = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgh
    public final void g2(zzoq zzoqVar) {
        AtomicReference atomicReference = this.f31908a;
        synchronized (atomicReference) {
            zzgu zzguVar = this.f31909b.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.b(Integer.valueOf(zzoqVar.f31955b.size()), "[sgtm] Got upload batches from service. count");
            atomicReference.set(zzoqVar);
            atomicReference.notifyAll();
        }
    }
}
