package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public class zzaem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile zzafc f30417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile zzacr f30418b;

    public final zzacr a() {
        if (this.f30418b != null) {
            return this.f30418b;
        }
        synchronized (this) {
            try {
                if (this.f30418b != null) {
                    return this.f30418b;
                }
                if (this.f30417a == null) {
                    this.f30418b = zzacr.f30367c;
                } else {
                    this.f30418b = this.f30417a.g();
                }
                return this.f30418b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(zzafc zzafcVar) {
        if (this.f30417a != null) {
            return;
        }
        synchronized (this) {
            if (this.f30417a != null) {
                return;
            }
            try {
                this.f30417a = zzafcVar;
                this.f30418b = zzacr.f30367c;
            } catch (zzaeh unused) {
                this.f30417a = zzafcVar;
                this.f30418b = zzacr.f30367c;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaem)) {
            return false;
        }
        zzaem zzaemVar = (zzaem) obj;
        zzafc zzafcVar = this.f30417a;
        zzafc zzafcVar2 = zzaemVar.f30417a;
        if (zzafcVar == null && zzafcVar2 == null) {
            return a().equals(zzaemVar.a());
        }
        if (zzafcVar != null && zzafcVar2 != null) {
            return zzafcVar.equals(zzafcVar2);
        }
        if (zzafcVar != null) {
            zzaemVar.b(zzafcVar.a());
            return zzafcVar.equals(zzaemVar.f30417a);
        }
        b(zzafcVar2.a());
        return this.f30417a.equals(zzafcVar2);
    }

    public final int hashCode() {
        return 1;
    }
}
