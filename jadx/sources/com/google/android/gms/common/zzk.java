package com.google.android.gms.common;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzk extends zzj {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f29360j;

    public zzk(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f29360j = bArr;
    }

    @Override // com.google.android.gms.common.zzj
    public final byte[] F2() {
        return this.f29360j;
    }
}
