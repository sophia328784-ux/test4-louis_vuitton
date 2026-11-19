package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes2.dex */
final class zzae extends zzz {
    public final zzah d;

    public zzae(zzah zzahVar, int i2) {
        super(zzahVar.size(), i2);
        this.d = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzz
    public final Object a(int i2) {
        return this.d.get(i2);
    }
}
