package com.bumptech.glide.util;

import defpackage.pq0;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentLengthInputStream extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24980c;

    public ContentLengthInputStream(InputStream inputStream, long j2) {
        super(inputStream);
        this.f24979b = j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f24979b - ((long) this.f24980c), ((FilterInputStream) this).in.available());
    }

    public final void c(int i2) throws IOException {
        int i3 = this.f24980c;
        if (i2 >= 0) {
            this.f24980c = i3 + i2;
            return;
        }
        long j2 = this.f24979b;
        if (j2 - ((long) i3) <= 0) {
            return;
        }
        StringBuilder sbQ = pq0.q(j2, "Failed to read all expected data, expected: ", ", but read: ");
        sbQ.append(this.f24980c);
        throw new IOException(sbQ.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i2;
        i2 = super.read();
        c(i2 >= 0 ? 1 : -1);
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i2, int i3) {
        int i4;
        i4 = super.read(bArr, i2, i3);
        c(i4);
        return i4;
    }
}
