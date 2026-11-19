package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
final class zzvp extends zzww {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f31021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f31022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UUID f31023c;
    public final long d;

    public zzvp(ImmutableList immutableList, ImmutableList immutableList2, UUID uuid, long j2) {
        this.f31021a = immutableList;
        this.f31022b = immutableList2;
        this.f31023c = uuid;
        this.d = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzww) {
            zzvp zzvpVar = (zzvp) ((zzww) obj);
            if (this.f31021a.equals(zzvpVar.f31021a) && this.f31022b.equals(zzvpVar.f31022b) && this.f31023c.equals(zzvpVar.f31023c) && this.d == zzvpVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((this.f31021a.hashCode() ^ 1000003) * 1000003) ^ this.f31022b.hashCode()) * 1000003) ^ this.f31023c.hashCode();
        long j2 = this.d;
        return ((int) ((j2 >>> 32) ^ j2)) ^ (iHashCode * 1000003);
    }
}
