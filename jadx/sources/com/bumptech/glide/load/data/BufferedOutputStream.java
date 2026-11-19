package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class BufferedOutputStream extends OutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputStream f24403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f24404c;
    public final ArrayPool d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24405e;

    public BufferedOutputStream(OutputStream outputStream, ArrayPool arrayPool) {
        this.f24403b = outputStream;
        this.d = arrayPool;
        this.f24404c = (byte[]) arrayPool.c(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this.f24403b;
        try {
            flush();
            outputStream.close();
            byte[] bArr = this.f24404c;
            if (bArr != null) {
                this.d.put(bArr);
                this.f24404c = null;
            }
        } catch (Throwable th) {
            outputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i2 = this.f24405e;
        OutputStream outputStream = this.f24403b;
        if (i2 > 0) {
            outputStream.write(this.f24404c, 0, i2);
            this.f24405e = 0;
        }
        outputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = 0;
        do {
            int i5 = i3 - i4;
            int i6 = i2 + i4;
            int i7 = this.f24405e;
            OutputStream outputStream = this.f24403b;
            if (i7 == 0 && i5 >= this.f24404c.length) {
                outputStream.write(bArr, i6, i5);
                return;
            }
            int iMin = Math.min(i5, this.f24404c.length - i7);
            System.arraycopy(bArr, i6, this.f24404c, this.f24405e, iMin);
            int i8 = this.f24405e + iMin;
            this.f24405e = i8;
            i4 += iMin;
            byte[] bArr2 = this.f24404c;
            if (i8 == bArr2.length && i8 > 0) {
                outputStream.write(bArr2, 0, i8);
                this.f24405e = 0;
            }
        } while (i4 < i3);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i2) throws IOException {
        byte[] bArr = this.f24404c;
        int i3 = this.f24405e;
        int i4 = i3 + 1;
        this.f24405e = i4;
        bArr[i3] = (byte) i2;
        if (i4 != bArr.length || i4 <= 0) {
            return;
        }
        this.f24403b.write(bArr, 0, i4);
        this.f24405e = 0;
    }
}
