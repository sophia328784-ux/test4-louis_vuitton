package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzdk implements zzdj {
    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final void J() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final zzdi K(Object obj) {
        return (zzdi) obj;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final Object L(Object obj) {
        ((zzdi) obj).f29687b = false;
        return obj;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final boolean M(Object obj) {
        return !((zzdi) obj).f29687b;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final zzdi N(Object obj) {
        return (zzdi) obj;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final zzdi O(Object obj, Object obj2) {
        zzdi zzdiVar;
        zzdi zzdiVar2 = (zzdi) obj;
        zzdi zzdiVar3 = (zzdi) obj2;
        if (!zzdiVar3.isEmpty()) {
            if (!zzdiVar2.f29687b) {
                if (zzdiVar2.isEmpty()) {
                    zzdiVar = new zzdi();
                } else {
                    zzdiVar = new zzdi(zzdiVar2);
                    zzdiVar.f29687b = true;
                }
                zzdiVar2 = zzdiVar;
            }
            zzdiVar2.c();
            if (!zzdiVar3.isEmpty()) {
                zzdiVar2.putAll(zzdiVar3);
            }
        }
        return zzdiVar2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdj
    public final zzdi a() {
        zzdi zzdiVar = zzdi.f29686c;
        if (zzdiVar.isEmpty()) {
            return new zzdi();
        }
        zzdi zzdiVar2 = new zzdi(zzdiVar);
        zzdiVar2.f29687b = true;
        return zzdiVar2;
    }
}
