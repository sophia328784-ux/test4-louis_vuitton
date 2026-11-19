package com.google.android.gms.internal.fido;

import defpackage.ct0;

/* JADX INFO: loaded from: classes2.dex */
final class zzgd extends zzge {
    public zzgd(String str, String str2) {
        this(new zzgb(str, str2.toCharArray()), (Character) '=');
    }

    @Override // com.google.android.gms.internal.fido.zzge, com.google.android.gms.internal.fido.zzgf
    public final void a(StringBuilder sb, byte[] bArr, int i2) {
        int i3 = 0;
        zzbm.b(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3] & 255) << 16) | (bArr[i3 + 2] & 255);
            zzgb zzgbVar = this.f29890b;
            char[] cArr = zzgbVar.f29884b;
            char[] cArr2 = zzgbVar.f29884b;
            sb.append(cArr[i5 >>> 18]);
            sb.append(cArr2[(i5 >>> 12) & 63]);
            sb.append(cArr2[(i5 >>> 6) & 63]);
            sb.append(cArr2[i5 & 63]);
            i3 += 3;
        }
        if (i3 < i2) {
            d(sb, bArr, i3, i2 - i3);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzge
    public final zzgf c(zzgb zzgbVar, Character ch) {
        return new zzgd(zzgbVar, ch);
    }

    public zzgd(zzgb zzgbVar, Character ch) {
        super(zzgbVar, ch);
        if (zzgbVar.f29884b.length == 64) {
            return;
        }
        ct0.c();
        throw null;
    }
}
