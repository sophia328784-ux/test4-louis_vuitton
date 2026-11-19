package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzqd implements zzpm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzqm f30823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzqe f30824b;

    public zzqd(zzqe zzqeVar, zzqm zzqmVar) {
        Objects.requireNonNull(zzqeVar);
        this.f30824b = zzqeVar;
        this.f30823a = zzqmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzpm
    public final void a(zzpl zzplVar) {
        Iterator it = this.f30824b.f30829f.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((zzqc) it.next()).a((zzaef) zzplVar.A()) && !z) {
                this.f30823a.d0();
                z = true;
            }
        }
    }
}
