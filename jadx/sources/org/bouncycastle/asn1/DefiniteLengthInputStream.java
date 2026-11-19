package org.bouncycastle.asn1;

import defpackage.md;
import defpackage.os;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
class DefiniteLengthInputStream extends LimitedInputStream {
    private static final byte[] EMPTY_BYTES = new byte[0];
    private final int _originalLength;
    private int _remaining;

    public DefiniteLengthInputStream(InputStream inputStream, int i2, int i3) {
        super(inputStream, i3);
        if (i2 <= 0) {
            if (i2 < 0) {
                md.n("negative lengths not allowed");
                throw null;
            }
            setParentEofDetect(true);
        }
        this._originalLength = i2;
        this._remaining = i2;
    }

    public int getRemaining() {
        return this._remaining;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this._remaining;
        if (i4 == 0) {
            return -1;
        }
        int i5 = this._in.read(bArr, i2, Math.min(i3, i4));
        if (i5 < 0) {
            os.e(" object truncated by ", this._originalLength, this._remaining, "DEF length ");
            return 0;
        }
        int i6 = this._remaining - i5;
        this._remaining = i6;
        if (i6 == 0) {
            setParentEofDetect(true);
        }
        return i5;
    }

    public void readAllIntoByteArray(byte[] bArr) throws IOException {
        int i2 = this._remaining;
        if (i2 != bArr.length) {
            md.n("buffer length not right for data");
            return;
        }
        if (i2 == 0) {
            return;
        }
        int limit = getLimit();
        int i3 = this._remaining;
        if (i3 >= limit) {
            md.i(" >= ", this._remaining, limit, "corrupted stream - out of bounds length found: ");
            return;
        }
        int fully = i3 - Streams.readFully(this._in, bArr, 0, bArr.length);
        this._remaining = fully;
        if (fully == 0) {
            setParentEofDetect(true);
        } else {
            os.e(" object truncated by ", this._originalLength, this._remaining, "DEF length ");
        }
    }

    public byte[] toByteArray() throws IOException {
        if (this._remaining == 0) {
            return EMPTY_BYTES;
        }
        int limit = getLimit();
        int i2 = this._remaining;
        if (i2 >= limit) {
            md.i(" >= ", this._remaining, limit, "corrupted stream - out of bounds length found: ");
            return null;
        }
        byte[] bArr = new byte[i2];
        int fully = i2 - Streams.readFully(this._in, bArr, 0, i2);
        this._remaining = fully;
        if (fully == 0) {
            setParentEofDetect(true);
            return bArr;
        }
        os.e(" object truncated by ", this._originalLength, this._remaining, "DEF length ");
        return null;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._remaining == 0) {
            return -1;
        }
        int i2 = this._in.read();
        if (i2 < 0) {
            os.e(" object truncated by ", this._originalLength, this._remaining, "DEF length ");
            return 0;
        }
        int i3 = this._remaining - 1;
        this._remaining = i3;
        if (i3 == 0) {
            setParentEofDetect(true);
        }
        return i2;
    }
}
