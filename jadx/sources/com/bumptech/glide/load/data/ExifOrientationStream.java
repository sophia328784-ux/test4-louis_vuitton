package com.bumptech.glide.load.data;

import defpackage.md;
import defpackage.pq0;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class ExifOrientationStream extends FilterInputStream {
    public static final byte[] d = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f24409e = 31;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f24410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24411c;

    public ExifOrientationStream(InputStream inputStream, int i2) {
        super(inputStream);
        if (i2 < -1 || i2 > 8) {
            md.n(pq0.k(i2, "Cannot add invalid orientation: "));
            throw null;
        }
        this.f24410b = (byte) i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4;
        int i5 = this.f24411c;
        int i6 = f24409e;
        if (i5 > i6) {
            i4 = super.read(bArr, i2, i3);
        } else if (i5 == i6) {
            bArr[i2] = this.f24410b;
            i4 = 1;
        } else if (i5 < 2) {
            i4 = super.read(bArr, i2, 2 - i5);
        } else {
            int iMin = Math.min(i6 - i5, i3);
            System.arraycopy(d, this.f24411c - 2, bArr, i2, iMin);
            i4 = iMin;
        }
        if (i4 > 0) {
            this.f24411c += i4;
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f24411c = (int) (((long) this.f24411c) + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i2;
        int i3;
        int i4 = this.f24411c;
        if (i4 < 2 || i4 > (i3 = f24409e)) {
            i2 = super.read();
        } else if (i4 == i3) {
            i2 = this.f24410b;
        } else {
            i2 = d[i4 - 2] & 255;
        }
        if (i2 != -1) {
            this.f24411c++;
        }
        return i2;
    }
}
