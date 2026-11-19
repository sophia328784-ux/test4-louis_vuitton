package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
final class zzcx extends zzcs implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzcs f29872b;

    public zzcx(zzcs zzcsVar) {
        this.f29872b = zzcsVar;
    }

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs a() {
        return this.f29872b;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f29872b.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcx) {
            return this.f29872b.equals(((zzcx) obj).f29872b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f29872b.hashCode();
    }

    public final String toString() {
        return this.f29872b.toString().concat(".reverse()");
    }
}
