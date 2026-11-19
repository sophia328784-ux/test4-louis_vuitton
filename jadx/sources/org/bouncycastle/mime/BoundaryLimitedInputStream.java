package org.bouncycastle.mime;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class BoundaryLimitedInputStream extends InputStream {
    private final byte[] boundary;
    private final byte[] buf;
    private int bufOff;
    private int lastI;
    private final InputStream src;
    private int index = 0;
    private boolean ended = false;

    public BoundaryLimitedInputStream(InputStream inputStream, String str) {
        this.bufOff = 0;
        this.src = inputStream;
        this.boundary = Strings.toByteArray(str);
        this.buf = new byte[str.length() + 3];
        this.bufOff = 0;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i2;
        int i3;
        int i4;
        if (this.ended) {
            return -1;
        }
        int i5 = this.index;
        int i6 = this.bufOff;
        if (i5 < i6) {
            byte[] bArr = this.buf;
            int i7 = i5 + 1;
            this.index = i7;
            i2 = bArr[i5] & 255;
            if (i7 < i6) {
                return i2;
            }
            this.bufOff = 0;
            this.index = 0;
        } else {
            i2 = this.src.read();
        }
        this.lastI = i2;
        if (i2 < 0) {
            return -1;
        }
        if (i2 == 13 || i2 == 10) {
            this.index = 0;
            InputStream inputStream = this.src;
            if (i2 == 13) {
                i3 = inputStream.read();
                if (i3 == 10) {
                    byte[] bArr2 = this.buf;
                    int i8 = this.bufOff;
                    this.bufOff = i8 + 1;
                    bArr2[i8] = 10;
                    i3 = this.src.read();
                }
            } else {
                i3 = inputStream.read();
            }
            if (i3 == 45) {
                byte[] bArr3 = this.buf;
                int i9 = this.bufOff;
                this.bufOff = i9 + 1;
                bArr3[i9] = 45;
                i3 = this.src.read();
            }
            if (i3 == 45) {
                byte[] bArr4 = this.buf;
                int i10 = this.bufOff;
                int i11 = i10 + 1;
                this.bufOff = i11;
                bArr4[i10] = 45;
                while (this.bufOff - i11 != this.boundary.length && (i4 = this.src.read()) >= 0) {
                    byte[] bArr5 = this.buf;
                    int i12 = this.bufOff;
                    byte b2 = (byte) i4;
                    bArr5[i12] = b2;
                    if (b2 != this.boundary[i12 - i11]) {
                        this.bufOff = i12 + 1;
                        break;
                    }
                    this.bufOff = i12 + 1;
                }
                if (this.bufOff - i11 == this.boundary.length) {
                    this.ended = true;
                    return -1;
                }
            } else if (i3 >= 0) {
                byte[] bArr6 = this.buf;
                int i13 = this.bufOff;
                this.bufOff = i13 + 1;
                bArr6[i13] = (byte) i3;
            }
        }
        return i2;
    }
}
