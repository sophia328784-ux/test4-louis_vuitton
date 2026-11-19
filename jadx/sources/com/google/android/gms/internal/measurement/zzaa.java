package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableSet;
import defpackage.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaa {
    public static final ImmutableSet d = ImmutableSet.r(3, "_syn", "_err", "_el");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f30294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f30295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f30296c;

    public zzaa(String str, long j2, Map map) {
        this.f30294a = str;
        this.f30295b = j2;
        HashMap map2 = new HashMap();
        this.f30296c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public static Object b(String str, Object obj, Object obj2) {
        if (d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzaa clone() {
        return new zzaa(this.f30294a, this.f30295b, new HashMap(this.f30296c));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        if (this.f30295b == zzaaVar.f30295b && this.f30294a.equals(zzaaVar.f30294a)) {
            return this.f30296c.equals(zzaaVar.f30296c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f30294a.hashCode() * 31;
        long j2 = this.f30295b;
        return this.f30296c.hashCode() + ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.f30294a;
        String string = this.f30296c.toString();
        int length = String.valueOf(str).length();
        long j2 = this.f30295b;
        StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(j2).length() + 9 + string.length() + 1);
        a.B(sb, "Event{name='", str, "', timestamp=");
        sb.append(j2);
        sb.append(", params=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }
}
