package org.spongycastle.asn1;

import defpackage.md;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
class IndefiniteLengthInputStream extends LimitedInputStream {
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77769f;
    public boolean g;

    public IndefiniteLengthInputStream(InputStream inputStream, int i2) throws IOException {
        super(inputStream, i2);
        this.f77769f = false;
        this.g = true;
        this.d = inputStream.read();
        int i3 = inputStream.read();
        this.f77768e = i3;
        if (i3 >= 0) {
            k();
        } else {
            md.e();
            throw null;
        }
    }

    public final boolean k() {
        if (!this.f77769f && this.g && this.d == 0 && this.f77768e == 0) {
            this.f77769f = true;
            j();
        }
        return this.f77769f;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.g || i3 < 3) {
            return super.read(bArr, i2, i3);
        }
        if (this.f77769f) {
            return -1;
        }
        InputStream inputStream = this.f77773b;
        int i4 = inputStream.read(bArr, i2 + 2, i3 - 2);
        if (i4 < 0) {
            md.e();
            return 0;
        }
        bArr[i2] = (byte) this.d;
        bArr[i2 + 1] = (byte) this.f77768e;
        this.d = inputStream.read();
        int i5 = inputStream.read();
        this.f77768e = i5;
        if (i5 >= 0) {
            return i4 + 2;
        }
        md.e();
        return 0;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (k()) {
            return -1;
        }
        int i2 = this.f77773b.read();
        if (i2 >= 0) {
            int i3 = this.d;
            this.d = this.f77768e;
            this.f77768e = i2;
            return i3;
        }
        md.e();
        return 0;
    }
}
