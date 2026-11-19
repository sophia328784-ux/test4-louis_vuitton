package org.bouncycastle.mime.encoding;

import defpackage.md;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class QuotedPrintableInputStream extends FilterInputStream {
    public QuotedPrintableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2;
        int i3 = ((FilterInputStream) this).in.read();
        if (i3 == -1) {
            return -1;
        }
        while (i3 == 61) {
            int i4 = ((FilterInputStream) this).in.read();
            if (i4 == -1) {
                md.k("Quoted '=' at end of stream");
                return 0;
            }
            if (i4 == 13) {
                i3 = ((FilterInputStream) this).in.read();
                if (i3 == 10) {
                }
            } else if (i4 != 10) {
                if (i4 >= 48 && i4 <= 57) {
                    i2 = i4 - 48;
                } else {
                    if (i4 < 65 || i4 > 70) {
                        md.k("Expecting '0123456789ABCDEF after quote that was not immediately followed by LF or CRLF");
                        return 0;
                    }
                    i2 = i4 - 55;
                }
                int i5 = i2 << 4;
                int i6 = ((FilterInputStream) this).in.read();
                if (i6 >= 48 && i6 <= 57) {
                    return (i6 - 48) | i5;
                }
                if (i6 >= 65 && i6 <= 70) {
                    return (i6 - 55) | i5;
                }
                md.k("Expecting second '0123456789ABCDEF after quote that was not immediately followed by LF or CRLF");
                return 0;
            }
            i3 = ((FilterInputStream) this).in.read();
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = 0;
        while (i4 != i3) {
            int i5 = read();
            if (i5 < 0) {
                break;
            }
            bArr[i4 + i2] = (byte) i5;
            i4++;
        }
        if (i4 == 0) {
            return -1;
        }
        return i4;
    }
}
