package com.bumptech.glide.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MarkEnforcingInputStream extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24993b;

    public MarkEnforcingInputStream(InputStream inputStream) {
        super(inputStream);
        this.f24993b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i2 = this.f24993b;
        return i2 == Integer.MIN_VALUE ? super.available() : Math.min(i2, super.available());
    }

    public final long c(long j2) {
        int i2 = this.f24993b;
        if (i2 == 0) {
            return -1L;
        }
        return (i2 == Integer.MIN_VALUE || j2 <= ((long) i2)) ? j2 : i2;
    }

    public final void d(long j2) {
        int i2 = this.f24993b;
        if (i2 == Integer.MIN_VALUE || j2 == -1) {
            return;
        }
        this.f24993b = (int) (((long) i2) - j2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i2) {
        super.mark(i2);
        this.f24993b = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (c(1L) == -1) {
            return -1;
        }
        int i2 = super.read();
        d(1L);
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f24993b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jC = c(j2);
        if (jC == -1) {
            return 0L;
        }
        long jSkip = super.skip(jC);
        d(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int iC = (int) c(i3);
        if (iC == -1) {
            return -1;
        }
        int i4 = super.read(bArr, i2, iC);
        d(i4);
        return i4;
    }
}
