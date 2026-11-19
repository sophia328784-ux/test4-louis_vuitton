package com.google.android.gms.internal.clearcut;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzep implements Comparable, Map.Entry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparable f29731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f29732c;
    public final /* synthetic */ zzei d;

    public zzep(zzei zzeiVar, Comparable comparable, Object obj) {
        this.d = zzeiVar;
        this.f29731b = comparable;
        this.f29732c = obj;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f29731b.compareTo(((zzep) obj).f29731b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f29731b;
                if (comparable == null) {
                    zEquals = key == null;
                } else {
                    zEquals = comparable.equals(key);
                }
                if (zEquals) {
                    Object obj2 = this.f29732c;
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
        return this.f29731b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f29732c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f29731b;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f29732c;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i2 = zzei.f29724h;
        this.d.g();
        Object obj2 = this.f29732c;
        this.f29732c = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f29731b);
        String strValueOf2 = String.valueOf(this.f29732c);
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
