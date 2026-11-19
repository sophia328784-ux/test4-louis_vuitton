package com.google.android.gms.internal.fido;

import com.batch.android.x0.h;
import defpackage.az;
import defpackage.md;
import defpackage.mt;
import defpackage.o60;
import defpackage.pq0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhs implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InputStream f29918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzhr f29919c;
    public final byte[] d = new byte[8];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzht f29920e = new zzht();

    public zzhs(InputStream inputStream) {
        this.f29918b = inputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f29918b.close();
        this.f29920e.a();
    }

    public final long h() {
        q((byte) -128);
        p();
        long jO = o();
        if (jO < 0) {
            mt.i("the maximum supported array length is 9223372036854775807");
            return 0L;
        }
        if (jO > 0) {
            this.f29920e.f29921a.push(Long.valueOf(jO));
        }
        return jO;
    }

    public final long j() {
        boolean z;
        m();
        byte b2 = this.f29919c.f29916a;
        if (b2 == 0) {
            z = true;
        } else {
            if (b2 != 32) {
                md.k(pq0.k((b2 >> 5) & 7, "expected major type 0 or 1 but found "));
                return 0L;
            }
            z = false;
        }
        long jO = o();
        if (jO >= 0) {
            return z ? jO : ~jO;
        }
        mt.i("the maximum supported unsigned/negative integer is 9223372036854775807");
        return 0L;
    }

    public final long k() {
        q(h.a.d);
        p();
        long jO = o();
        if (jO < 0 || jO > 4611686018427387903L) {
            mt.i("the maximum supported map length is 4611686018427387903L");
            return 0L;
        }
        if (jO > 0) {
            this.f29920e.f29921a.push(Long.valueOf(jO + jO));
        }
        return jO;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
    
        if (r0 != (-2)) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.fido.zzhr m() {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fido.zzhs.m():com.google.android.gms.internal.fido.zzhr");
    }

    public final boolean n() {
        q(h.a.K);
        if (this.f29919c.f29917b > 24) {
            md.k("expected simple value");
            return false;
        }
        int iO = (int) o();
        if (iO == 20) {
            return false;
        }
        if (iO == 21) {
            return true;
        }
        md.k("expected FALSE or TRUE");
        return false;
    }

    public final long o() throws IOException {
        zzhr zzhrVar = this.f29919c;
        byte b2 = zzhrVar.f29917b;
        if (b2 < 24) {
            long j2 = b2;
            this.f29919c = null;
            return j2;
        }
        if (b2 == 24) {
            int i2 = this.f29918b.read();
            if (i2 != -1) {
                this.f29919c = null;
                return ((long) i2) & 255;
            }
            md.e();
            return 0L;
        }
        byte[] bArr = this.d;
        if (b2 == 25) {
            r(2, bArr);
            return ((((long) bArr[0]) & 255) << 8) | (((long) bArr[1]) & 255);
        }
        if (b2 == 26) {
            r(4, bArr);
            return ((((long) bArr[0]) & 255) << 24) | ((((long) bArr[1]) & 255) << 16) | ((((long) bArr[2]) & 255) << 8) | (((long) bArr[3]) & 255);
        }
        if (b2 != 27) {
            az.o(o60.h(b2, (zzhrVar.f29916a >> 5) & 7, "invalid additional information ", " for major type "));
            return 0L;
        }
        r(8, bArr);
        long j3 = bArr[0];
        long j4 = bArr[1];
        long j5 = bArr[2];
        long j6 = bArr[3];
        return (((long) bArr[7]) & 255) | ((j4 & 255) << 48) | ((j3 & 255) << 56) | ((j5 & 255) << 40) | ((j6 & 255) << 32) | ((bArr[4] & 255) << 24) | ((bArr[5] & 255) << 16) | ((bArr[6] & 255) << 8);
    }

    public final void p() {
        m();
        byte b2 = this.f29919c.f29917b;
        if (b2 != 31) {
            return;
        }
        md.k(pq0.k(b2, "expected definite length but found "));
    }

    public final void q(byte b2) {
        m();
        byte b3 = this.f29919c.f29916a;
        if (b3 == b2) {
            return;
        }
        md.k(o60.h((b2 >> 5) & 7, (b3 >> 5) & 7, "expected major type ", " but found "));
    }

    public final void r(int i2, byte[] bArr) throws IOException {
        int i3 = 0;
        while (i3 != i2) {
            int i4 = this.f29918b.read(bArr, i3, i2 - i3);
            if (i4 == -1) {
                md.e();
                return;
            }
            i3 += i4;
        }
        this.f29919c = null;
    }

    public final byte[] s() {
        p();
        long jO = o();
        if (jO < 0 || jO > 2147483647L) {
            mt.i("the maximum supported byte/text string length is 2147483647 bytes");
            return null;
        }
        if (this.f29918b.available() < jO) {
            md.e();
            return null;
        }
        int i2 = (int) jO;
        byte[] bArr = new byte[i2];
        r(i2, bArr);
        return bArr;
    }
}
