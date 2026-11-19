package com.google.android.gms.internal.fido;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class zzbw extends zzcs implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparator f29843b;

    public zzbw(Comparator comparator) {
        comparator.getClass();
        this.f29843b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f29843b.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbw) {
            return this.f29843b.equals(((zzbw) obj).f29843b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f29843b.hashCode();
    }

    public final String toString() {
        return this.f29843b.toString();
    }
}
