package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzade {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f30395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30396b;

    public zzade(int i2, zzafc zzafcVar) {
        this.f30395a = zzafcVar;
        this.f30396b = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzade)) {
            return false;
        }
        zzade zzadeVar = (zzade) obj;
        return this.f30395a == zzadeVar.f30395a && this.f30396b == zzadeVar.f30396b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f30395a) * 65535) + this.f30396b;
    }
}
