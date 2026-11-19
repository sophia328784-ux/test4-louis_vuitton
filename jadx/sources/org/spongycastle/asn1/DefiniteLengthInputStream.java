package org.spongycastle.asn1;

import defpackage.md;
import defpackage.os;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
class DefiniteLengthInputStream extends LimitedInputStream {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f77766f = new byte[0];
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77767e;

    public DefiniteLengthInputStream(InputStream inputStream, int i2) {
        super(inputStream, i2);
        if (i2 < 0) {
            md.n("negative lengths not allowed");
            throw null;
        }
        this.d = i2;
        this.f77767e = i2;
        if (i2 == 0) {
            j();
        }
    }

    @Override // org.spongycastle.asn1.LimitedInputStream
    public final int h() {
        return this.f77767e;
    }

    public final byte[] k() {
        int i2 = this.f77767e;
        if (i2 == 0) {
            return f77766f;
        }
        byte[] bArr = new byte[i2];
        int iA = i2 - Streams.a(this.f77773b, bArr);
        this.f77767e = iA;
        if (iA == 0) {
            j();
            return bArr;
        }
        os.e(" object truncated by ", this.d, this.f77767e, "DEF length ");
        return null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f77767e;
        if (i4 == 0) {
            return -1;
        }
        int i5 = this.f77773b.read(bArr, i2, Math.min(i3, i4));
        if (i5 < 0) {
            os.e(" object truncated by ", this.d, this.f77767e, "DEF length ");
            return 0;
        }
        int i6 = this.f77767e - i5;
        this.f77767e = i6;
        if (i6 == 0) {
            j();
        }
        return i5;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.f77767e == 0) {
            return -1;
        }
        int i2 = this.f77773b.read();
        if (i2 >= 0) {
            int i3 = this.f77767e - 1;
            this.f77767e = i3;
            if (i3 == 0) {
                j();
            }
            return i2;
        }
        os.e(" object truncated by ", this.d, this.f77767e, "DEF length ");
        return 0;
    }
}
