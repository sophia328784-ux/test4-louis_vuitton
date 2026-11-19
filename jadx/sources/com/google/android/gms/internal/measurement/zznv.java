package com.google.android.gms.internal.measurement;

import defpackage.cj;

/* JADX INFO: loaded from: classes2.dex */
final class zznv extends zzqo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zznd f30768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzqr f30769b;

    public zznv(zznd zzndVar, zzqr zzqrVar) {
        this.f30768a = zzndVar;
        this.f30769b = zzqrVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzqo) {
            zzqo zzqoVar = (zzqo) obj;
            zznd zzndVar = this.f30768a;
            if (zzndVar != null ? zzndVar == ((zznv) zzqoVar).f30768a : ((zznv) zzqoVar).f30768a == null) {
                return this.f30769b == ((zznv) zzqoVar).f30769b;
            }
        }
        return false;
    }

    public final int hashCode() {
        zznd zzndVar = this.f30768a;
        return this.f30769b.hashCode() ^ (((zzndVar == null ? 0 : zzndVar.hashCode()) ^ 1000003) * 1000003);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f30768a);
        String string = this.f30769b.toString();
        StringBuilder sb = new StringBuilder(strValueOf.length() + 52 + string.length() + 1);
        cj.C(sb, "SnapshotBlobAndResult{snapshotBlob=", strValueOf, ", snapshotResult=", string);
        sb.append("}");
        return sb.toString();
    }
}
