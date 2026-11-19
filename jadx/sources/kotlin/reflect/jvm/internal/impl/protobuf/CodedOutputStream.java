package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.az;
import defpackage.z81;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
public final class CodedOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f73718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f73719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73720c = 0;
    public final OutputStream d;

    public static class OutOfSpaceException extends IOException {
    }

    public CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.d = outputStream;
        this.f73718a = bArr;
        this.f73719b = bArr.length;
    }

    public static int a(int i2, int i3) {
        return c(i3) + h(i2);
    }

    public static int b(int i2, int i3) {
        return c(i3) + h(i2);
    }

    public static int c(int i2) {
        if (i2 >= 0) {
            return f(i2);
        }
        return 10;
    }

    public static int d(int i2, MessageLite messageLite) {
        return e(messageLite) + h(i2);
    }

    public static int e(MessageLite messageLite) {
        int iC = messageLite.c();
        return f(iC) + iC;
    }

    public static int f(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int g(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int h(int i2) {
        return f(i2 << 3);
    }

    public static CodedOutputStream j(OutputStream outputStream, int i2) {
        return new CodedOutputStream(outputStream, new byte[i2]);
    }

    public final void i() throws IOException {
        k();
    }

    public final void k() throws IOException {
        this.d.write(this.f73718a, 0, this.f73720c);
        this.f73720c = 0;
    }

    public final void l(int i2, int i3) {
        x(i2, 0);
        n(i3);
    }

    public final void m(int i2, int i3) {
        x(i2, 0);
        n(i3);
    }

    public final void n(int i2) {
        if (i2 >= 0) {
            v(i2);
        } else {
            w(i2);
        }
    }

    public final void o(int i2, MessageLite messageLite) {
        x(i2, 2);
        p(messageLite);
    }

    public final void p(MessageLite messageLite) {
        v(messageLite.c());
        messageLite.e(this);
    }

    public final void q(int i2) throws IOException {
        byte b2 = (byte) i2;
        if (this.f73720c == this.f73719b) {
            k();
        }
        int i3 = this.f73720c;
        this.f73720c = i3 + 1;
        this.f73718a[i3] = b2;
    }

    public final void r(ByteString byteString) {
        int size = byteString.size();
        int i2 = this.f73720c;
        int i3 = this.f73719b;
        int i4 = i3 - i2;
        byte[] bArr = this.f73718a;
        if (i4 >= size) {
            byteString.h(0, i2, bArr, size);
            this.f73720c += size;
            return;
        }
        byteString.h(0, i2, bArr, i4);
        int i5 = size - i4;
        this.f73720c = i3;
        k();
        if (i5 <= i3) {
            byteString.h(i4, 0, bArr, i5);
            this.f73720c = i5;
            return;
        }
        if (i4 < 0) {
            az.v(z81.f(30, i4, "Source offset < 0: "));
            return;
        }
        if (i5 < 0) {
            az.v(z81.f(23, i5, "Length < 0: "));
            return;
        }
        int i6 = i4 + i5;
        if (i6 > byteString.size()) {
            az.v(z81.f(39, i6, "Source end offset exceeded: "));
        } else if (i5 > 0) {
            byteString.v(this.d, i4, i5);
        }
    }

    public final void s(byte[] bArr) throws IOException {
        int length = bArr.length;
        int i2 = this.f73720c;
        int i3 = this.f73719b;
        int i4 = i3 - i2;
        byte[] bArr2 = this.f73718a;
        if (i4 >= length) {
            System.arraycopy(bArr, 0, bArr2, i2, length);
            this.f73720c += length;
            return;
        }
        System.arraycopy(bArr, 0, bArr2, i2, i4);
        int i5 = length - i4;
        this.f73720c = i3;
        k();
        if (i5 > i3) {
            this.d.write(bArr, i4, i5);
        } else {
            System.arraycopy(bArr, i4, bArr2, 0, i5);
            this.f73720c = i5;
        }
    }

    public final void t(int i2) {
        q(i2 & 255);
        q((i2 >> 8) & 255);
        q((i2 >> 16) & 255);
        q((i2 >> 24) & 255);
    }

    public final void u(long j2) {
        q(((int) j2) & 255);
        q(((int) (j2 >> 8)) & 255);
        q(((int) (j2 >> 16)) & 255);
        q(((int) (j2 >> 24)) & 255);
        q(((int) (j2 >> 32)) & 255);
        q(((int) (j2 >> 40)) & 255);
        q(((int) (j2 >> 48)) & 255);
        q(((int) (j2 >> 56)) & 255);
    }

    public final void v(int i2) {
        while ((i2 & (-128)) != 0) {
            q((i2 & CertificateBody.profileType) | 128);
            i2 >>>= 7;
        }
        q(i2);
    }

    public final void w(long j2) {
        while (((-128) & j2) != 0) {
            q((((int) j2) & CertificateBody.profileType) | 128);
            j2 >>>= 7;
        }
        q((int) j2);
    }

    public final void x(int i2, int i3) {
        v((i2 << 3) | i3);
    }
}
