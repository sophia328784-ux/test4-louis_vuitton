package com.google.android.gms.internal.fido;

import defpackage.o60;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
final class zzgr extends zzgu {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29899f;

    public zzgr(byte[] bArr, int i2, int i3) {
        super(bArr);
        zzgx.o(i2, i2 + i3, bArr.length);
        this.f29898e = i2;
        this.f29899f = i3;
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final byte b(int i2) {
        int i3 = this.f29899f;
        if (((i3 - (i2 + 1)) | i2) >= 0) {
            return this.d[this.f29898e + i2];
        }
        if (i2 < 0) {
            throw new ArrayIndexOutOfBoundsException(pq0.k(i2, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(o60.h(i2, i3, "Index > length: ", ", "));
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final byte f(int i2) {
        return this.d[this.f29898e + i2];
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final int h() {
        return this.f29899f;
    }

    @Override // com.google.android.gms.internal.fido.zzgu, com.google.android.gms.internal.fido.zzgx
    public final void i(int i2, byte[] bArr) {
        System.arraycopy(this.d, this.f29898e, bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.fido.zzgu
    public final int r() {
        return this.f29898e;
    }
}
