package org.bouncycastle.est;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class CTEChunkedInputStream extends InputStream {
    int chunkLen = 0;
    private InputStream src;

    public CTEChunkedInputStream(InputStream inputStream) {
        this.src = inputStream;
    }

    private String readEOL() throws IOException {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        do {
            i2 = this.src.read();
            if (i2 == -1) {
                if (byteArrayOutputStream.size() != 0) {
                    break;
                }
                return null;
            }
            byteArrayOutputStream.write(i2 & 255);
        } while (i2 != 10);
        return byteArrayOutputStream.toString().trim();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        String eol;
        int i2 = this.chunkLen;
        if (i2 == Integer.MIN_VALUE) {
            return -1;
        }
        if (i2 == 0) {
            do {
                eol = readEOL();
                if (eol == null) {
                    break;
                }
            } while (eol.length() == 0);
            if (eol == null) {
                return -1;
            }
            int i3 = Integer.parseInt(eol.trim(), 16);
            this.chunkLen = i3;
            if (i3 == 0) {
                readEOL();
                this.chunkLen = Integer.MIN_VALUE;
                return -1;
            }
        }
        int i4 = this.src.read();
        this.chunkLen--;
        return i4;
    }
}
