package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f30810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzog f30811b;

    public zzpo(zzog zzogVar, int i2) {
        this.f30811b = zzogVar;
        this.f30810a = new AtomicReferenceArray(i2);
    }

    public final zzom a(int i2, String str, boolean z) {
        AtomicReferenceArray atomicReferenceArray = this.f30810a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i2);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarA = this.f30811b.a(str, z);
        while (!atomicReferenceArray.compareAndSet(i2, null, zzomVarA)) {
            if (atomicReferenceArray.get(i2) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i2);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzomVarA;
    }

    public final zzom b(int i2, String str, long j2) {
        AtomicReferenceArray atomicReferenceArray = this.f30810a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i2);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzob zzobVar = new zzob(str, this.f30811b.f30775a, j2);
        while (!atomicReferenceArray.compareAndSet(i2, null, zzobVar)) {
            if (atomicReferenceArray.get(i2) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i2);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzobVar;
    }

    public final zzom c(int i2, String str, String str2) {
        AtomicReferenceArray atomicReferenceArray = this.f30810a;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i2);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzod zzodVar = new zzod(str, this.f30811b.f30775a, str2);
        while (!atomicReferenceArray.compareAndSet(i2, null, zzodVar)) {
            if (atomicReferenceArray.get(i2) != null) {
                zzom zzomVar2 = (zzom) atomicReferenceArray.get(i2);
                zzomVar2.getClass();
                return zzomVar2;
            }
        }
        return zzodVar;
    }
}
