package com.google.android.gms.internal.fido;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzce extends zzcf {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = ((zzci) this).f29853e.get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzcy.a(((zzci) this).f29853e.entrySet());
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((zzci) this).f29853e.f29855e.size();
    }
}
