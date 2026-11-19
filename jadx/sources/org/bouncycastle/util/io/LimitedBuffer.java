package org.bouncycastle.util.io;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class LimitedBuffer extends OutputStream {
    private final byte[] buf;
    private int count = 0;

    public LimitedBuffer(int i2) {
        this.buf = new byte[i2];
    }

    public int copyTo(byte[] bArr, int i2) {
        System.arraycopy(this.buf, 0, bArr, i2, this.count);
        return this.count;
    }

    public int limit() {
        return this.buf.length;
    }

    public void reset() {
        this.count = 0;
    }

    public int size() {
        return this.count;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        System.arraycopy(bArr, 0, this.buf, this.count, bArr.length);
        this.count += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        byte[] bArr = this.buf;
        int i3 = this.count;
        this.count = i3 + 1;
        bArr[i3] = (byte) i2;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i3) {
        System.arraycopy(bArr, i2, this.buf, this.count, i3);
        this.count += i3;
    }
}
