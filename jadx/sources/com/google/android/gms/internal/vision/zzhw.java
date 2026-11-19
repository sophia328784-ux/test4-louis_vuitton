package com.google.android.gms.internal.vision;

import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
final class zzhw extends zzid {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31190f;
    public final int g;

    public zzhw(byte[] bArr, int i2, int i3) {
        super(bArr);
        zzht.l(i2, i2 + i3, bArr.length);
        this.f31190f = i2;
        this.g = i3;
    }

    @Override // com.google.android.gms.internal.vision.zzid, com.google.android.gms.internal.vision.zzht
    public final byte b(int i2) {
        int i3 = this.g;
        if (((i3 - (i2 + 1)) | i2) >= 0) {
            return this.f31193e[this.f31190f + i2];
        }
        if (i2 < 0) {
            throw new ArrayIndexOutOfBoundsException(z81.f(22, i2, "Index < 0: "));
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Index > length: ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        throw new ArrayIndexOutOfBoundsException(sb.toString());
    }

    @Override // com.google.android.gms.internal.vision.zzid, com.google.android.gms.internal.vision.zzht
    public final int f() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.vision.zzid, com.google.android.gms.internal.vision.zzht
    public final byte i(int i2) {
        return this.f31193e[this.f31190f + i2];
    }

    @Override // com.google.android.gms.internal.vision.zzid
    public final int m() {
        return this.f31190f;
    }
}
