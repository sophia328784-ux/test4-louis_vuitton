package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
final class zzfs extends zzft implements Serializable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f29874c;

    public zzfs(byte[] bArr) {
        bArr.getClass();
        this.f29874c = bArr;
    }

    @Override // com.google.android.gms.internal.fido.zzft
    public final byte[] a() {
        return (byte[]) this.f29874c.clone();
    }
}
