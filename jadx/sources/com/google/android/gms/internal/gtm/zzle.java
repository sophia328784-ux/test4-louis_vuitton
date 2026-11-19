package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
final class zzle extends zzlb {
    public final zzlg d;

    public zzle(zzlg zzlgVar, int i2) {
        super(zzlgVar.size(), i2);
        this.d = zzlgVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzlb
    public final Object a(int i2) {
        return this.d.get(i2);
    }
}
