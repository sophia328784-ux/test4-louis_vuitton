package com.google.crypto.tink.shaded.protobuf;

import defpackage.d20;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CodedOutputStream extends ByteOutput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f34165b = Logger.getLogger(CodedOutputStream.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f34166c = UnsafeUtil.f34268e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CodedOutputStreamWriter f34167a;

    public static class ArrayEncoder extends CodedOutputStream {
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f34168e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f34169f;

        public ArrayEncoder(byte[] bArr, int i2) {
            if (((bArr.length - i2) | i2) < 0) {
                d20.j("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)});
                throw null;
            }
            this.d = bArr;
            this.f34169f = 0;
            this.f34168e = i2;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void m(byte b2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f34169f;
                this.f34169f = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), 1), e2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void n(int i2, int i3) throws OutOfSpaceException {
            s(i2, 5);
            o(i3);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void o(int i2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i3 = this.f34169f;
                int i4 = i3 + 1;
                this.f34169f = i4;
                bArr[i3] = (byte) (i2 & 255);
                int i5 = i3 + 2;
                this.f34169f = i5;
                bArr[i4] = (byte) ((i2 >> 8) & 255);
                int i6 = i3 + 3;
                this.f34169f = i6;
                bArr[i5] = (byte) ((i2 >> 16) & 255);
                this.f34169f = i3 + 4;
                bArr[i6] = (byte) ((i2 >> 24) & 255);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), 1), e2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void p(int i2, long j2) throws OutOfSpaceException {
            s(i2, 1);
            q(j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void q(long j2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f34169f;
                int i3 = i2 + 1;
                this.f34169f = i3;
                bArr[i2] = (byte) (((int) j2) & 255);
                int i4 = i2 + 2;
                this.f34169f = i4;
                bArr[i3] = (byte) (((int) (j2 >> 8)) & 255);
                int i5 = i2 + 3;
                this.f34169f = i5;
                bArr[i4] = (byte) (((int) (j2 >> 16)) & 255);
                int i6 = i2 + 4;
                this.f34169f = i6;
                bArr[i5] = (byte) (((int) (j2 >> 24)) & 255);
                int i7 = i2 + 5;
                this.f34169f = i7;
                bArr[i6] = (byte) (((int) (j2 >> 32)) & 255);
                int i8 = i2 + 6;
                this.f34169f = i8;
                bArr[i7] = (byte) (((int) (j2 >> 40)) & 255);
                int i9 = i2 + 7;
                this.f34169f = i9;
                bArr[i8] = (byte) (((int) (j2 >> 48)) & 255);
                this.f34169f = i2 + 8;
                bArr[i9] = (byte) (((int) (j2 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), 1), e2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void r(int i2) throws OutOfSpaceException {
            if (i2 >= 0) {
                t(i2);
            } else {
                v(i2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void s(int i2, int i3) throws OutOfSpaceException {
            t((i2 << 3) | i3);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void t(int i2) throws OutOfSpaceException {
            while (true) {
                int i3 = i2 & (-128);
                int i4 = this.f34169f;
                byte[] bArr = this.d;
                if (i3 == 0) {
                    this.f34169f = i4 + 1;
                    bArr[i4] = (byte) i2;
                    return;
                } else {
                    try {
                        this.f34169f = i4 + 1;
                        bArr[i4] = (byte) ((i2 & CertificateBody.profileType) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), 1), e2);
                    }
                }
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), 1), e2);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void u(int i2, long j2) throws OutOfSpaceException {
            s(i2, 0);
            v(j2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedOutputStream
        public final void v(long j2) throws OutOfSpaceException {
            boolean z = CodedOutputStream.f34166c;
            int i2 = this.f34168e;
            byte[] bArr = this.d;
            if (!z || i2 - this.f34169f < 10) {
                while (true) {
                    long j3 = j2 & (-128);
                    int i3 = this.f34169f;
                    if (j3 == 0) {
                        this.f34169f = i3 + 1;
                        bArr[i3] = (byte) j2;
                        return;
                    } else {
                        try {
                            this.f34169f = i3 + 1;
                            bArr[i3] = (byte) ((((int) j2) & CertificateBody.profileType) | 128);
                            j2 >>>= 7;
                        } catch (IndexOutOfBoundsException e2) {
                            throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(i2), 1), e2);
                        }
                    }
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(i2), 1), e2);
                }
            }
            while (true) {
                long j4 = j2 & (-128);
                int i4 = this.f34169f;
                if (j4 == 0) {
                    this.f34169f = i4 + 1;
                    UnsafeUtil.k(bArr, (byte) j2, i4);
                    return;
                } else {
                    this.f34169f = i4 + 1;
                    UnsafeUtil.k(bArr, (byte) ((((int) j2) & CertificateBody.profileType) | 128), i4);
                    j2 >>>= 7;
                }
            }
        }

        public final void w(byte[] bArr, int i2, int i3) throws OutOfSpaceException {
            try {
                System.arraycopy(bArr, i2, this.d, this.f34169f, i3);
                this.f34169f += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f34169f), Integer.valueOf(this.f34168e), Integer.valueOf(i3)), e2);
            }
        }

        public final void x(ByteString byteString) throws OutOfSpaceException {
            t(byteString.size());
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            w(literalByteString.f34148e, literalByteString.n(), literalByteString.size());
        }

        public final void y(String str) throws OutOfSpaceException {
            int i2 = this.f34169f;
            try {
                int iK = CodedOutputStream.k(str.length() * 3);
                int iK2 = CodedOutputStream.k(str.length());
                int i3 = this.f34168e;
                byte[] bArr = this.d;
                if (iK2 != iK) {
                    t(Utf8.b(str));
                    int i4 = this.f34169f;
                    this.f34169f = Utf8.f34271a.b(str, bArr, i4, i3 - i4);
                    return;
                }
                int i5 = i2 + iK2;
                this.f34169f = i5;
                int iB = Utf8.f34271a.b(str, bArr, i5, i3 - i5);
                this.f34169f = i2;
                t((iB - i2) - iK2);
                this.f34169f = iB;
            } catch (Utf8.UnpairedSurrogateException e2) {
                this.f34169f = i2;
                CodedOutputStream.f34165b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
                byte[] bytes = str.getBytes(Internal.f34190a);
                try {
                    t(bytes.length);
                    w(bytes, 0, bytes.length);
                } catch (IndexOutOfBoundsException e3) {
                    throw new OutOfSpaceException(e3);
                }
            } catch (IndexOutOfBoundsException e4) {
                throw new OutOfSpaceException(e4);
            }
        }
    }

    public static int a(int i2, ByteString byteString) {
        return b(byteString) + i(i2);
    }

    public static int b(ByteString byteString) {
        int size = byteString.size();
        return k(size) + size;
    }

    public static int c(int i2) {
        return i(i2) + 4;
    }

    public static int d(int i2) {
        return i(i2) + 8;
    }

    public static int e(int i2, MessageLite messageLite, Schema schema) {
        return ((AbstractMessageLite) messageLite).j(schema) + (i(i2) * 2);
    }

    public static int f(int i2) {
        if (i2 >= 0) {
            return k(i2);
        }
        return 10;
    }

    public static int g(LazyFieldLite lazyFieldLite) {
        int iC;
        if (lazyFieldLite.d != null) {
            iC = lazyFieldLite.d.size();
        } else {
            ByteString byteString = lazyFieldLite.f34196a;
            if (byteString != null) {
                iC = byteString.size();
            } else {
                iC = lazyFieldLite.f34198c != null ? lazyFieldLite.f34198c.c() : 0;
            }
        }
        return k(iC) + iC;
    }

    public static int h(String str) {
        int length;
        try {
            length = Utf8.b(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.f34190a).length;
        }
        return k(length) + length;
    }

    public static int i(int i2) {
        return k(i2 << 3);
    }

    public static int j(int i2, int i3) {
        return k(i3) + i(i2);
    }

    public static int k(int i2) {
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

    public static int l(long j2) {
        int i2;
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (j2 < 0) {
            return 10;
        }
        if (((-34359738368L) & j2) != 0) {
            j2 >>>= 28;
            i2 = 6;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j2) != 0) {
            i2 += 2;
            j2 >>>= 14;
        }
        return (j2 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public abstract void m(byte b2);

    public abstract void n(int i2, int i3);

    public abstract void o(int i2);

    public abstract void p(int i2, long j2);

    public abstract void q(long j2);

    public abstract void r(int i2);

    public abstract void s(int i2, int i3);

    public abstract void t(int i2);

    public abstract void u(int i2, long j2);

    public abstract void v(long j2);

    public static class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(str), indexOutOfBoundsException);
        }

        public OutOfSpaceException(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }
    }
}
