package com.google.android.gms.internal.measurement;

import defpackage.n91;

/* JADX INFO: loaded from: classes2.dex */
final class zzacm extends zzacp {
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f30365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f30366f;

    public zzacm(byte[] bArr, int i2, int i3) {
        zzacr.r(i2, i2 + i3, bArr.length);
        this.d = bArr;
        this.f30365e = i2;
        this.f30366f = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final byte b(int i2) {
        return this.d[this.f30365e + i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int f() {
        return this.f30366f;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final zzacr h(int i2, int i3) {
        int iR = zzacr.r(i2, i3, this.f30366f);
        if (iR == 0) {
            return zzacr.f30367c;
        }
        return new zzacm(this.d, this.f30365e + i2, iR);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void i(int i2, byte[] bArr) {
        System.arraycopy(this.d, this.f30365e, bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void l(zzada zzadaVar) {
        zzadaVar.a(this.f30365e, this.f30366f, this.d);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final boolean m(zzacr zzacrVar) {
        boolean z = zzacrVar instanceof zzacq;
        if (!z && !(zzacrVar instanceof zzacm)) {
            return zzacrVar.m(this);
        }
        int iF = zzacrVar.f();
        int i2 = this.f30366f;
        if (i2 > iF) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 18 + String.valueOf(i2).length());
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzacrVar.f()) {
            int iF2 = zzacrVar.f();
            n91.b(String.valueOf(i2).length() + 27 + String.valueOf(iF2).length(), i2, iF2);
            return false;
        }
        byte[] bArr = this.d;
        int i3 = this.f30365e;
        if (z) {
            return zzacr.s(i3, bArr, 0, ((zzacq) zzacrVar).d, i2);
        }
        if (!(zzacrVar instanceof zzacm)) {
            return zzacrVar.h(0, i2).equals(h(i3, i2 + i3));
        }
        zzacm zzacmVar = (zzacm) zzacrVar;
        return zzacr.s(i3, bArr, zzacmVar.f30365e, zzacmVar.d, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int n(int i2, int i3) {
        return zzaed.a(i2, this.f30365e, this.d, i3);
    }
}
