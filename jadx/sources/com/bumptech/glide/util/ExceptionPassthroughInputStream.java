package com.bumptech.glide.util;

import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public final class ExceptionPassthroughInputStream extends InputStream {
    public static final ArrayDeque d = new ArrayDeque(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclableBufferedInputStream f24981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IOException f24982c;

    @Override // java.io.InputStream
    public final int available() {
        return this.f24981b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f24981b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i2) {
        this.f24981b.mark(i2);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f24981b.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f24981b.read();
        } catch (IOException e2) {
            this.f24982c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f24981b.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j2) throws IOException {
        try {
            return this.f24981b.skip(j2);
        } catch (IOException e2) {
            this.f24982c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f24981b.read(bArr);
        } catch (IOException e2) {
            this.f24982c = e2;
            throw e2;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        try {
            return this.f24981b.read(bArr, i2, i3);
        } catch (IOException e2) {
            this.f24982c = e2;
            throw e2;
        }
    }
}
