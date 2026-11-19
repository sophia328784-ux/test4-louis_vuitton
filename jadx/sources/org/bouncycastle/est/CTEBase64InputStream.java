package org.bouncycastle.est;

import defpackage.az;
import defpackage.cj;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.util.encoders.Base64;

/* JADX INFO: loaded from: classes5.dex */
class CTEBase64InputStream extends InputStream {
    protected final byte[] data;
    protected final OutputStream dataOutputStream;
    protected boolean end;
    protected final Long max;
    protected final byte[] rawBuf;
    protected long read;
    protected int rp;
    protected final InputStream src;
    protected int wp;

    public CTEBase64InputStream(InputStream inputStream, Long l) {
        this.rawBuf = new byte[1024];
        this.data = new byte[768];
        this.src = inputStream;
        this.dataOutputStream = new OutputStream() { // from class: org.bouncycastle.est.CTEBase64InputStream.1
            @Override // java.io.OutputStream
            public void write(int i2) throws IOException {
                CTEBase64InputStream cTEBase64InputStream = CTEBase64InputStream.this;
                byte[] bArr = cTEBase64InputStream.data;
                int i3 = cTEBase64InputStream.wp;
                cTEBase64InputStream.wp = i3 + 1;
                bArr[i3] = (byte) i2;
            }
        };
        this.max = l;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.src.close();
    }

    public int pullFromSrc() throws IOException {
        int i2;
        String strJ;
        int i3 = 0;
        do {
            Long l = this.max;
            if (l != null && this.read > l.longValue()) {
                return -1;
            }
            i2 = this.src.read();
            if (i2 >= 33 || i2 == 13 || i2 == 10) {
                byte[] bArr = this.rawBuf;
                if (i3 < bArr.length) {
                    bArr[i3] = (byte) i2;
                    this.read++;
                    i3++;
                } else {
                    strJ = "Content Transfer Encoding, base64 line length > 1024";
                }
                az.o(strJ);
                return 0;
            }
            if (i2 >= 0) {
                this.read++;
            }
            if (i2 <= -1 || i3 >= this.rawBuf.length) {
                break;
            }
        } while (i2 != 10);
        if (i3 > 0) {
            try {
                Base64.decode(this.rawBuf, 0, i3, this.dataOutputStream);
            } catch (Exception e2) {
                strJ = cj.j("Decode Base64 Content-Transfer-Encoding: ", e2);
            }
        } else if (i2 == -1) {
            return -1;
        }
        return this.wp;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.rp == this.wp) {
            this.rp = 0;
            this.wp = 0;
            int iPullFromSrc = pullFromSrc();
            if (iPullFromSrc == -1) {
                return iPullFromSrc;
            }
        }
        byte[] bArr = this.data;
        int i2 = this.rp;
        this.rp = i2 + 1;
        return bArr[i2] & 255;
    }

    public CTEBase64InputStream(InputStream inputStream) {
        this(inputStream, null);
    }
}
