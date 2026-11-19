package com.google.android.gms.internal.measurement;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
final class zzms extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzacv f30746b;

    public zzms(zzmu zzmuVar, zzacv zzacvVar) {
        this.f30746b = zzacvVar;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (this.f30746b.f(0, 1, bArr) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // java.io.InputStream
    public final long skip(long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        int i2 = j2 > 2147483647L ? Integer.MAX_VALUE : (int) j2;
        this.f30746b.g(i2);
        return i2;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) {
        return this.f30746b.f(i2, i3, bArr);
    }
}
