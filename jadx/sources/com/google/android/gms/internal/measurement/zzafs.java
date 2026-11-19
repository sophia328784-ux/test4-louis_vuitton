package com.google.android.gms.internal.measurement;

import defpackage.d21;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzafs implements Map.Entry, Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparable f30458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f30459c;
    public final /* synthetic */ zzafv d;

    public zzafs(zzafv zzafvVar, Comparable comparable, Object obj) {
        this.d = zzafvVar;
        this.f30458b = comparable;
        this.f30459c = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f30458b.compareTo(((zzafs) obj).f30458b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f30458b;
                if (comparable == null) {
                    zEquals = key == null;
                } else {
                    zEquals = comparable.equals(key);
                }
                if (zEquals) {
                    Object obj2 = this.f30459c;
                    Object value = entry.getValue();
                    if (obj2 == null) {
                        zEquals2 = value == null;
                    } else {
                        zEquals2 = obj2.equals(value);
                    }
                    if (zEquals2) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f30458b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f30459c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f30458b;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f30459c;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.d.g();
        Object obj2 = this.f30459c;
        this.f30459c = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f30458b);
        String strValueOf2 = String.valueOf(this.f30459c);
        return d21.p(new StringBuilder(strValueOf.length() + 1 + strValueOf2.length()), strValueOf, "=", strValueOf2);
    }
}
