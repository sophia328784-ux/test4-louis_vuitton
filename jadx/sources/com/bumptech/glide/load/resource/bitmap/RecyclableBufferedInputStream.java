package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile byte[] f24805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24806c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24808f;
    public final ArrayPool g;

    public static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;
    }

    public RecyclableBufferedInputStream(InputStream inputStream, ArrayPool arrayPool) {
        super(inputStream);
        this.f24807e = -1;
        this.g = arrayPool;
        this.f24805b = (byte[]) arrayPool.c(65536, byte[].class);
    }

    public static void h() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f24805b == null || inputStream == null) {
            h();
            throw null;
        }
        return (this.f24806c - this.f24808f) + inputStream.available();
    }

    public final int c(InputStream inputStream, byte[] bArr) throws IOException {
        int i2 = this.f24807e;
        if (i2 != -1) {
            int i3 = this.f24808f - i2;
            int i4 = this.d;
            if (i3 < i4) {
                if (i2 == 0 && i4 > bArr.length && this.f24806c == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i4) {
                        i4 = length;
                    }
                    byte[] bArr2 = (byte[]) this.g.c(i4, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f24805b = bArr2;
                    this.g.put(bArr);
                    bArr = bArr2;
                } else if (i2 > 0) {
                    System.arraycopy(bArr, i2, bArr, 0, bArr.length - i2);
                }
                int i5 = this.f24808f - this.f24807e;
                this.f24808f = i5;
                this.f24807e = 0;
                this.f24806c = 0;
                int i6 = inputStream.read(bArr, i5, bArr.length - i5);
                int i7 = this.f24808f;
                if (i6 > 0) {
                    i7 += i6;
                }
                this.f24806c = i7;
                return i6;
            }
        }
        int i8 = inputStream.read(bArr);
        if (i8 > 0) {
            this.f24807e = -1;
            this.f24808f = 0;
            this.f24806c = i8;
        }
        return i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f24805b != null) {
            this.g.put(this.f24805b);
            this.f24805b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i2) {
        this.d = Math.max(this.d, i2);
        this.f24807e = this.f24808f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        byte[] bArr2 = this.f24805b;
        if (bArr2 == null) {
            h();
            throw null;
        }
        if (i3 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            h();
            throw null;
        }
        int i6 = this.f24808f;
        int i7 = this.f24806c;
        if (i6 < i7) {
            int i8 = i7 - i6;
            if (i8 >= i3) {
                i8 = i3;
            }
            System.arraycopy(bArr2, i6, bArr, i2, i8);
            this.f24808f += i8;
            if (i8 == i3 || inputStream.available() == 0) {
                return i8;
            }
            i2 += i8;
            i4 = i3 - i8;
        } else {
            i4 = i3;
        }
        while (true) {
            if (this.f24807e == -1 && i4 >= bArr2.length) {
                i5 = inputStream.read(bArr, i2, i4);
                if (i5 == -1) {
                    return i4 != i3 ? i3 - i4 : -1;
                }
            } else {
                if (c(inputStream, bArr2) == -1) {
                    return i4 != i3 ? i3 - i4 : -1;
                }
                if (bArr2 != this.f24805b && (bArr2 = this.f24805b) == null) {
                    h();
                    throw null;
                }
                int i9 = this.f24806c;
                int i10 = this.f24808f;
                i5 = i9 - i10;
                if (i5 >= i4) {
                    i5 = i4;
                }
                System.arraycopy(bArr2, i10, bArr, i2, i5);
                this.f24808f += i5;
            }
            i4 -= i5;
            if (i4 == 0) {
                return i3;
            }
            if (inputStream.available() == 0) {
                return i3 - i4;
            }
            i2 += i5;
        }
    }

    public final synchronized void release() {
        if (this.f24805b != null) {
            this.g.put(this.f24805b);
            this.f24805b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f24805b == null) {
            throw new IOException("Stream is closed");
        }
        int i2 = this.f24807e;
        if (-1 == i2) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.f24808f + " markLimit: " + this.d);
        }
        this.f24808f = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j2) {
        if (j2 < 1) {
            return 0L;
        }
        byte[] bArr = this.f24805b;
        if (bArr == null) {
            h();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            h();
            throw null;
        }
        int i2 = this.f24806c;
        int i3 = this.f24808f;
        if (i2 - i3 >= j2) {
            this.f24808f = (int) (((long) i3) + j2);
            return j2;
        }
        long j3 = ((long) i2) - ((long) i3);
        this.f24808f = i2;
        if (this.f24807e == -1 || j2 > this.d) {
            long jSkip = inputStream.skip(j2 - j3);
            if (jSkip > 0) {
                this.f24807e = -1;
            }
            return j3 + jSkip;
        }
        if (c(inputStream, bArr) == -1) {
            return j3;
        }
        int i4 = this.f24806c;
        int i5 = this.f24808f;
        if (i4 - i5 >= j2 - j3) {
            this.f24808f = (int) ((((long) i5) + j2) - j3);
            return j2;
        }
        long j4 = (j3 + ((long) i4)) - ((long) i5);
        this.f24808f = i4;
        return j4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f24805b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f24808f >= this.f24806c && c(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f24805b && (bArr = this.f24805b) == null) {
                h();
                throw null;
            }
            int i2 = this.f24806c;
            int i3 = this.f24808f;
            if (i2 - i3 <= 0) {
                return -1;
            }
            this.f24808f = i3 + 1;
            return bArr[i3] & 255;
        }
        h();
        throw null;
    }
}
