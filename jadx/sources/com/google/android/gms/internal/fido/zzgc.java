package com.google.android.gms.internal.fido;

import defpackage.ct0;

/* JADX INFO: loaded from: classes2.dex */
final class zzgc extends zzge {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final char[] f29889e;

    public zzgc(zzgb zzgbVar) {
        super(zzgbVar, (Character) null);
        this.f29889e = new char[512];
        char[] cArr = zzgbVar.f29884b;
        if (cArr.length != 16) {
            ct0.c();
            throw null;
        }
        for (int i2 = 0; i2 < 256; i2++) {
            char[] cArr2 = this.f29889e;
            cArr2[i2] = cArr[i2 >>> 4];
            cArr2[i2 | 256] = cArr[i2 & 15];
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge, com.google.android.gms.internal.fido.zzgf
    public final void a(StringBuilder sb, byte[] bArr, int i2) {
        zzbm.b(0, i2, bArr.length);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i3] & 255;
            char[] cArr = this.f29889e;
            sb.append(cArr[i4]);
            sb.append(cArr[i4 | 256]);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge
    public final zzgf c(zzgb zzgbVar, Character ch) {
        return new zzgc(zzgbVar);
    }
}
