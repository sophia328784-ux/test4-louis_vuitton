package com.google.android.gms.internal.measurement;

import defpackage.n91;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzacq extends zzacp {
    public final byte[] d;

    public zzacq(byte[] bArr) {
        bArr.getClass();
        this.d = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final byte b(int i2) {
        return this.d[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int f() {
        return this.d.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final zzacr h(int i2, int i3) {
        byte[] bArr = this.d;
        int iR = zzacr.r(0, i3, bArr.length);
        return iR == 0 ? zzacr.f30367c : new zzacm(bArr, 0, iR);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void i(int i2, byte[] bArr) {
        System.arraycopy(this.d, 0, bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void l(zzada zzadaVar) {
        byte[] bArr = this.d;
        zzadaVar.a(0, bArr.length, bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final boolean m(zzacr zzacrVar) {
        boolean z = zzacrVar instanceof zzacq;
        byte[] bArr = this.d;
        if (z) {
            return Arrays.equals(bArr, ((zzacq) zzacrVar).d);
        }
        boolean z2 = zzacrVar instanceof zzacm;
        if (!z2) {
            return zzacrVar.m(this);
        }
        zzacm zzacmVar = (zzacm) zzacrVar;
        int i2 = zzacmVar.f30366f;
        int length = bArr.length;
        if (length > i2) {
            StringBuilder sb = new StringBuilder(String.valueOf(length).length() + 18 + String.valueOf(length).length());
            sb.append("Length too large: ");
            sb.append(length);
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        }
        if (length > i2) {
            n91.b(String.valueOf(length).length() + 27 + String.valueOf(i2).length(), length, i2);
            return false;
        }
        if (z) {
            return zzacr.s(0, bArr, 0, ((zzacq) zzacrVar).d, length);
        }
        if (!z2) {
            return zzacrVar.h(0, length).equals(h(0, length));
        }
        return zzacr.s(0, bArr, zzacmVar.f30365e, zzacmVar.d, length);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int n(int i2, int i3) {
        return zzaed.a(i2, 0, this.d, i3);
    }
}
