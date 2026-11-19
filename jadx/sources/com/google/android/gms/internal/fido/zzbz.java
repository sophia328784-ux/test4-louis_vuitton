package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
final class zzbz extends zzbu {
    public final zzcc d;

    public zzbz(zzcc zzccVar, int i2) {
        super(zzccVar.size(), i2);
        this.d = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzbu
    public final Object a(int i2) {
        return this.d.get(i2);
    }
}
