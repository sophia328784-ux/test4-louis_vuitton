package com.google.firebase.encoders.proto;

import defpackage.zy0;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
final class LengthCountingOutputStream extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f35109b;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 > bArr.length || i3 < 0 || (i4 = i2 + i3) > bArr.length || i4 < 0) {
            zy0.b();
        } else {
            this.f35109b += (long) i3;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f35109b += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i2) {
        this.f35109b++;
    }
}
