package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class BEROctetStringGenerator extends BERGenerator {
    public BEROctetStringGenerator(OutputStream outputStream) throws IOException {
        super(outputStream);
        writeBERHeader(36);
    }

    public OutputStream getOctetOutputStream() {
        return getOctetOutputStream(new byte[1000]);
    }

    public BEROctetStringGenerator(OutputStream outputStream, int i2, boolean z) throws IOException {
        super(outputStream, i2, z);
        writeBERHeader(36);
    }

    public OutputStream getOctetOutputStream(byte[] bArr) {
        return new BufferedBEROctetStream(bArr);
    }

    public class BufferedBEROctetStream extends OutputStream {
        private byte[] _buf;
        private DEROutputStream _derOut;
        private int _off = 0;

        public BufferedBEROctetStream(byte[] bArr) {
            this._buf = bArr;
            this._derOut = new DEROutputStream(BEROctetStringGenerator.this._out);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            int i2 = this._off;
            if (i2 != 0) {
                DEROctetString.encode(this._derOut, true, this._buf, 0, i2);
            }
            this._derOut.flushInternal();
            BEROctetStringGenerator.this.writeBEREnd();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i2, int i3) throws IOException {
            byte[] bArr2 = this._buf;
            int length = bArr2.length;
            int i4 = this._off;
            int i5 = length - i4;
            if (i3 < i5) {
                System.arraycopy(bArr, i2, bArr2, i4, i3);
                this._off += i3;
                return;
            }
            if (i4 > 0) {
                System.arraycopy(bArr, i2, bArr2, i4, i5);
                DEROctetString.encode(this._derOut, true, this._buf, 0, length);
            } else {
                i5 = 0;
            }
            while (true) {
                int i6 = i3 - i5;
                if (i6 < length) {
                    System.arraycopy(bArr, i2 + i5, this._buf, 0, i6);
                    this._off = i6;
                    return;
                } else {
                    DEROctetString.encode(this._derOut, true, bArr, i2 + i5, length);
                    i5 += length;
                }
            }
        }

        @Override // java.io.OutputStream
        public void write(int i2) throws IOException {
            byte[] bArr = this._buf;
            int i3 = this._off;
            int i4 = i3 + 1;
            this._off = i4;
            bArr[i3] = (byte) i2;
            if (i4 == bArr.length) {
                DEROctetString.encode(this._derOut, true, bArr, 0, bArr.length);
                this._off = 0;
            }
        }
    }
}
