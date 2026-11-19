package com.google.android.gms.internal.clearcut;

import defpackage.x1;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdi<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzdi f29686c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f29687b = true;

    static {
        zzdi zzdiVar = new zzdi();
        f29686c = zzdiVar;
        zzdiVar.f29687b = false;
    }

    public static int d(Object obj) {
        if (!(obj instanceof byte[])) {
            if (!(obj instanceof zzcj)) {
                return obj.hashCode();
            }
            x1.i();
            return 0;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        Charset charset = zzci.f29677a;
        int i2 = length;
        for (byte b2 : bArr) {
            i2 = (i2 * 31) + b2;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final void c() {
        if (this.f29687b) {
            return;
        }
        x1.i();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return isEmpty() ? Collections.EMPTY_SET : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            Object value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iD = 0;
        for (Map.Entry entry : entrySet()) {
            iD += d(entry.getValue()) ^ d(entry.getKey());
        }
        return iD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        c();
        Charset charset = zzci.f29677a;
        obj.getClass();
        obj2.getClass();
        return super.put(obj, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        c();
        for (K k2 : map.keySet()) {
            Charset charset = zzci.f29677a;
            k2.getClass();
            map.get(k2).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c();
        return super.remove(obj);
    }
}
