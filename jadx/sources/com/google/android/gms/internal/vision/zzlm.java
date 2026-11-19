package com.google.android.gms.internal.vision;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzlm implements Comparable, Map.Entry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparable f31274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f31275c;
    public final /* synthetic */ zzlh d;

    public zzlm(zzlh zzlhVar, Comparable comparable, Object obj) {
        this.d = zzlhVar;
        this.f31274b = comparable;
        this.f31275c = obj;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f31274b.compareTo(((zzlm) obj).f31274b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f31274b;
                if (comparable == null) {
                    zEquals = key == null;
                } else {
                    zEquals = comparable.equals(key);
                }
                if (zEquals) {
                    Object obj2 = this.f31275c;
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
        return this.f31274b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f31275c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f31274b;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f31275c;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i2 = zzlh.f31267h;
        this.d.g();
        Object obj2 = this.f31275c;
        this.f31275c = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f31274b);
        String strValueOf2 = String.valueOf(this.f31275c);
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
