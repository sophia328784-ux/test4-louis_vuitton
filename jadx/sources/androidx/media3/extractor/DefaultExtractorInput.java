package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;
import defpackage.md;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultExtractorInput implements ExtractorInput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataReader f16122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16123c;
    public long d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16125f;
    public int g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f16124e = new byte[65536];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16121a = new byte[4096];

    static {
        MediaLibraryInfo.a("media3.extractor");
    }

    public DefaultExtractorInput(DataReader dataReader, long j2, long j3) {
        this.f16122b = dataReader;
        this.d = j2;
        this.f16123c = j3;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void b(int i2, int i3, byte[] bArr) {
        i(false, i2, i3, bArr);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int d(int i2, int i3, byte[] bArr) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int iMin;
        o(i3);
        int i4 = this.g;
        int i5 = this.f16125f;
        int i6 = i4 - i5;
        if (i6 == 0) {
            defaultExtractorInput = this;
            iMin = defaultExtractorInput.p(true, i5, this.f16124e, i3, 0);
            if (iMin == -1) {
                return -1;
            }
            defaultExtractorInput.g += iMin;
        } else {
            defaultExtractorInput = this;
            iMin = Math.min(i3, i6);
        }
        System.arraycopy(defaultExtractorInput.f16124e, defaultExtractorInput.f16125f, bArr, i2, iMin);
        defaultExtractorInput.f16125f += iMin;
        return iMin;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean e(int i2, boolean z) throws EOFException, InterruptedIOException {
        int iMin = Math.min(this.g, i2);
        q(iMin);
        int iP = iMin;
        while (iP < i2 && iP != -1) {
            byte[] bArr = this.f16121a;
            iP = p(z, -iP, bArr, Math.min(i2, bArr.length + iP), iP);
        }
        if (iP != -1) {
            this.d += (long) iP;
        }
        return iP != -1;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void g() {
        this.f16125f = 0;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long getLength() {
        return this.f16123c;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long getPosition() {
        return this.d;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean h(boolean z, int i2, int i3, byte[] bArr) throws EOFException, InterruptedIOException {
        int iMin;
        int i4 = this.g;
        if (i4 == 0) {
            iMin = 0;
        } else {
            iMin = Math.min(i4, i3);
            System.arraycopy(this.f16124e, 0, bArr, i2, iMin);
            q(iMin);
        }
        int iP = iMin;
        while (iP < i3 && iP != -1) {
            iP = p(z, i2, bArr, i3, iP);
        }
        if (iP != -1) {
            this.d += (long) iP;
        }
        return iP != -1;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean i(boolean z, int i2, int i3, byte[] bArr) {
        if (!n(i3, z)) {
            return false;
        }
        System.arraycopy(this.f16124e, this.f16125f - i3, bArr, i2, i3);
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long j() {
        return this.d + ((long) this.f16125f);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void k(int i2) throws EOFException, InterruptedIOException {
        n(i2, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int l(int i2) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int iMin = Math.min(this.g, i2);
        q(iMin);
        if (iMin == 0) {
            byte[] bArr = this.f16121a;
            defaultExtractorInput = this;
            iMin = defaultExtractorInput.p(true, 0, bArr, Math.min(i2, bArr.length), 0);
        } else {
            defaultExtractorInput = this;
        }
        if (iMin != -1) {
            defaultExtractorInput.d += (long) iMin;
        }
        return iMin;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void m(int i2) throws EOFException, InterruptedIOException {
        e(i2, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean n(int i2, boolean z) throws EOFException, InterruptedIOException {
        o(i2);
        int iP = this.g - this.f16125f;
        while (iP < i2) {
            DefaultExtractorInput defaultExtractorInput = this;
            int i3 = i2;
            boolean z2 = z;
            iP = defaultExtractorInput.p(z2, this.f16125f, this.f16124e, i3, iP);
            if (iP == -1) {
                return false;
            }
            defaultExtractorInput.g = defaultExtractorInput.f16125f + iP;
            this = defaultExtractorInput;
            z = z2;
            i2 = i3;
        }
        this.f16125f += i2;
        return true;
    }

    public final void o(int i2) {
        int i3 = this.f16125f + i2;
        byte[] bArr = this.f16124e;
        if (i3 > bArr.length) {
            this.f16124e = Arrays.copyOf(this.f16124e, Util.j(bArr.length * 2, 65536 + i3, i3 + 524288));
        }
    }

    public final int p(boolean z, int i2, byte[] bArr, int i3, int i4) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i5 = this.f16122b.read(bArr, i2 + i4, i3 - i4);
        if (i5 != -1) {
            return i4 + i5;
        }
        if (i4 == 0 && z) {
            return -1;
        }
        md.e();
        return 0;
    }

    public final void q(int i2) {
        int i3 = this.g - i2;
        this.g = i3;
        this.f16125f = 0;
        byte[] bArr = this.f16124e;
        byte[] bArr2 = i3 < bArr.length - 524288 ? new byte[65536 + i3] : bArr;
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        this.f16124e = bArr2;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws EOFException, InterruptedIOException {
        DefaultExtractorInput defaultExtractorInput;
        int i4 = this.g;
        int iP = 0;
        if (i4 != 0) {
            int iMin = Math.min(i4, i3);
            System.arraycopy(this.f16124e, 0, bArr, i2, iMin);
            q(iMin);
            iP = iMin;
        }
        if (iP == 0) {
            defaultExtractorInput = this;
            iP = defaultExtractorInput.p(true, i2, bArr, i3, 0);
        } else {
            defaultExtractorInput = this;
        }
        if (iP != -1) {
            defaultExtractorInput.d += (long) iP;
        }
        return iP;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void readFully(byte[] bArr, int i2, int i3) throws EOFException, InterruptedIOException {
        h(false, i2, i3, bArr);
    }
}
