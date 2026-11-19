package com.google.android.gms.internal.fido;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzch extends zzcc {
    public final /* synthetic */ zzci d;

    public zzch(zzci zzciVar) {
        this.d = zzciVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i2) {
        zzcj zzcjVar = this.d.f29853e;
        return new AbstractMap.SimpleImmutableEntry(zzcjVar.d.g.get(i2), zzcjVar.f29855e.get(i2));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.f29853e.f29855e.size();
    }
}
