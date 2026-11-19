package androidx.datastore.preferences.protobuf;

import androidx.datastore.core.UncloseableOutputStream;
import defpackage.d20;
import defpackage.md;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class CodedOutputStream extends ByteOutput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f12920b = Logger.getLogger(CodedOutputStream.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f12921c = UnsafeUtil.f13020e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CodedOutputStreamWriter f12922a;

    public static abstract class AbstractBufferedEncoder extends CodedOutputStream {
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12923e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12924f;

        public AbstractBufferedEncoder(int i2) {
            if (i2 < 0) {
                md.n("bufferSize must be >= 0");
                throw null;
            }
            byte[] bArr = new byte[Math.max(i2, 20)];
            this.d = bArr;
            this.f12923e = bArr.length;
        }

        public final void E(int i2) {
            int i3 = this.f12924f;
            int i4 = i3 + 1;
            this.f12924f = i4;
            byte[] bArr = this.d;
            bArr[i3] = (byte) (i2 & 255);
            int i5 = i3 + 2;
            this.f12924f = i5;
            bArr[i4] = (byte) ((i2 >> 8) & 255);
            int i6 = i3 + 3;
            this.f12924f = i6;
            bArr[i5] = (byte) ((i2 >> 16) & 255);
            this.f12924f = i3 + 4;
            bArr[i6] = (byte) ((i2 >> 24) & 255);
        }

        public final void F(long j2) {
            int i2 = this.f12924f;
            int i3 = i2 + 1;
            this.f12924f = i3;
            byte[] bArr = this.d;
            bArr[i2] = (byte) (j2 & 255);
            int i4 = i2 + 2;
            this.f12924f = i4;
            bArr[i3] = (byte) ((j2 >> 8) & 255);
            int i5 = i2 + 3;
            this.f12924f = i5;
            bArr[i4] = (byte) ((j2 >> 16) & 255);
            int i6 = i2 + 4;
            this.f12924f = i6;
            bArr[i5] = (byte) (255 & (j2 >> 24));
            int i7 = i2 + 5;
            this.f12924f = i7;
            bArr[i6] = (byte) (((int) (j2 >> 32)) & 255);
            int i8 = i2 + 6;
            this.f12924f = i8;
            bArr[i7] = (byte) (((int) (j2 >> 40)) & 255);
            int i9 = i2 + 7;
            this.f12924f = i9;
            bArr[i8] = (byte) (((int) (j2 >> 48)) & 255);
            this.f12924f = i2 + 8;
            bArr[i9] = (byte) (((int) (j2 >> 56)) & 255);
        }

        public final void G(int i2, int i3) {
            H((i2 << 3) | i3);
        }

        public final void H(int i2) {
            boolean z = CodedOutputStream.f12921c;
            byte[] bArr = this.d;
            if (z) {
                while (true) {
                    int i3 = i2 & (-128);
                    int i4 = this.f12924f;
                    if (i3 == 0) {
                        this.f12924f = i4 + 1;
                        UnsafeUtil.j(bArr, (byte) i2, i4);
                        return;
                    } else {
                        this.f12924f = i4 + 1;
                        UnsafeUtil.j(bArr, (byte) ((i2 | 128) & 255), i4);
                        i2 >>>= 7;
                    }
                }
            } else {
                while (true) {
                    int i5 = i2 & (-128);
                    int i6 = this.f12924f;
                    if (i5 == 0) {
                        this.f12924f = i6 + 1;
                        bArr[i6] = (byte) i2;
                        return;
                    } else {
                        this.f12924f = i6 + 1;
                        bArr[i6] = (byte) ((i2 | 128) & 255);
                        i2 >>>= 7;
                    }
                }
            }
        }

        public final void I(long j2) {
            boolean z = CodedOutputStream.f12921c;
            byte[] bArr = this.d;
            if (z) {
                while (true) {
                    long j3 = j2 & (-128);
                    int i2 = this.f12924f;
                    if (j3 == 0) {
                        this.f12924f = i2 + 1;
                        UnsafeUtil.j(bArr, (byte) j2, i2);
                        return;
                    } else {
                        this.f12924f = i2 + 1;
                        UnsafeUtil.j(bArr, (byte) ((((int) j2) | 128) & 255), i2);
                        j2 >>>= 7;
                    }
                }
            } else {
                while (true) {
                    long j4 = j2 & (-128);
                    int i3 = this.f12924f;
                    if (j4 == 0) {
                        this.f12924f = i3 + 1;
                        bArr[i3] = (byte) j2;
                        return;
                    } else {
                        this.f12924f = i3 + 1;
                        bArr[i3] = (byte) ((((int) j2) | 128) & 255);
                        j2 >>>= 7;
                    }
                }
            }
        }
    }

    public static class ArrayEncoder extends CodedOutputStream {
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12925e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12926f;

        public ArrayEncoder(byte[] bArr, int i2) {
            if (((bArr.length - i2) | i2) < 0) {
                d20.j("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)});
                throw null;
            }
            this.d = bArr;
            this.f12926f = 0;
            this.f12925e = i2;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void A(int i2, int i3) throws OutOfSpaceException {
            z(i2, 0);
            B(i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void B(int i2) throws OutOfSpaceException {
            while (true) {
                int i3 = i2 & (-128);
                int i4 = this.f12926f;
                byte[] bArr = this.d;
                if (i3 == 0) {
                    this.f12926f = i4 + 1;
                    bArr[i4] = (byte) i2;
                    return;
                } else {
                    try {
                        this.f12926f = i4 + 1;
                        bArr[i4] = (byte) ((i2 | 128) & 255);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), 1), e2);
                    }
                }
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), 1), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void C(int i2, long j2) throws OutOfSpaceException {
            z(i2, 0);
            D(j2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void D(long j2) throws OutOfSpaceException {
            boolean z = CodedOutputStream.f12921c;
            int i2 = this.f12925e;
            byte[] bArr = this.d;
            if (!z || i2 - this.f12926f < 10) {
                while (true) {
                    long j3 = j2 & (-128);
                    int i3 = this.f12926f;
                    if (j3 == 0) {
                        this.f12926f = i3 + 1;
                        bArr[i3] = (byte) j2;
                        return;
                    } else {
                        try {
                            this.f12926f = i3 + 1;
                            bArr[i3] = (byte) ((((int) j2) | 128) & 255);
                            j2 >>>= 7;
                        } catch (IndexOutOfBoundsException e2) {
                            throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(i2), 1), e2);
                        }
                    }
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(i2), 1), e2);
                }
            }
            while (true) {
                long j4 = j2 & (-128);
                int i4 = this.f12926f;
                if (j4 == 0) {
                    this.f12926f = i4 + 1;
                    UnsafeUtil.j(bArr, (byte) j2, i4);
                    return;
                } else {
                    this.f12926f = i4 + 1;
                    UnsafeUtil.j(bArr, (byte) ((((int) j2) | 128) & 255), i4);
                    j2 >>>= 7;
                }
            }
        }

        public final void E(byte[] bArr, int i2, int i3) throws OutOfSpaceException {
            try {
                System.arraycopy(bArr, i2, this.d, this.f12926f, i3);
                this.f12926f += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), Integer.valueOf(i3)), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public final void a(int i2, int i3, byte[] bArr) throws OutOfSpaceException {
            E(bArr, i2, i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void i(byte b2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f12926f;
                this.f12926f = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), 1), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void j(int i2, boolean z) throws OutOfSpaceException {
            z(i2, 0);
            i(z ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void k(int i2, byte[] bArr) throws OutOfSpaceException {
            B(i2);
            E(bArr, 0, i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void l(int i2, ByteString byteString) throws OutOfSpaceException {
            z(i2, 2);
            m(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void m(ByteString byteString) throws OutOfSpaceException {
            B(byteString.size());
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            a(literalByteString.m(), literalByteString.size(), literalByteString.f12902e);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void n(int i2, int i3) throws OutOfSpaceException {
            z(i2, 5);
            o(i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void o(int i2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i3 = this.f12926f;
                int i4 = i3 + 1;
                this.f12926f = i4;
                bArr[i3] = (byte) (i2 & 255);
                int i5 = i3 + 2;
                this.f12926f = i5;
                bArr[i4] = (byte) ((i2 >> 8) & 255);
                int i6 = i3 + 3;
                this.f12926f = i6;
                bArr[i5] = (byte) ((i2 >> 16) & 255);
                this.f12926f = i3 + 4;
                bArr[i6] = (byte) ((i2 >> 24) & 255);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), 1), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void p(int i2, long j2) throws OutOfSpaceException {
            z(i2, 1);
            q(j2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void q(long j2) throws OutOfSpaceException {
            try {
                byte[] bArr = this.d;
                int i2 = this.f12926f;
                int i3 = i2 + 1;
                this.f12926f = i3;
                bArr[i2] = (byte) (((int) j2) & 255);
                int i4 = i2 + 2;
                this.f12926f = i4;
                bArr[i3] = (byte) (((int) (j2 >> 8)) & 255);
                int i5 = i2 + 3;
                this.f12926f = i5;
                bArr[i4] = (byte) (((int) (j2 >> 16)) & 255);
                int i6 = i2 + 4;
                this.f12926f = i6;
                bArr[i5] = (byte) (((int) (j2 >> 24)) & 255);
                int i7 = i2 + 5;
                this.f12926f = i7;
                bArr[i6] = (byte) (((int) (j2 >> 32)) & 255);
                int i8 = i2 + 6;
                this.f12926f = i8;
                bArr[i7] = (byte) (((int) (j2 >> 40)) & 255);
                int i9 = i2 + 7;
                this.f12926f = i9;
                bArr[i8] = (byte) (((int) (j2 >> 48)) & 255);
                this.f12926f = i2 + 8;
                bArr[i9] = (byte) (((int) (j2 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12926f), Integer.valueOf(this.f12925e), 1), e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void r(int i2, int i3) throws OutOfSpaceException {
            z(i2, 0);
            s(i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void s(int i2) throws OutOfSpaceException {
            if (i2 >= 0) {
                B(i2);
            } else {
                D(i2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void t(int i2, MessageLite messageLite, Schema schema) throws OutOfSpaceException {
            z(i2, 2);
            B(((AbstractMessageLite) messageLite).k(schema));
            schema.h(messageLite, this.f12922a);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void u(MessageLite messageLite) throws OutOfSpaceException {
            B(messageLite.c());
            messageLite.h(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void v(int i2, MessageLite messageLite) throws OutOfSpaceException {
            z(1, 3);
            A(2, i2);
            z(3, 2);
            u(messageLite);
            z(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void w(int i2, ByteString byteString) throws OutOfSpaceException {
            z(1, 3);
            A(2, i2);
            l(3, byteString);
            z(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void x(int i2, String str) throws OutOfSpaceException {
            z(i2, 2);
            y(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void y(String str) throws OutOfSpaceException {
            int i2 = this.f12926f;
            try {
                int iF = CodedOutputStream.f(str.length() * 3);
                int iF2 = CodedOutputStream.f(str.length());
                int i3 = this.f12925e;
                byte[] bArr = this.d;
                if (iF2 != iF) {
                    B(Utf8.a(str));
                    int i4 = this.f12926f;
                    this.f12926f = Utf8.f13023a.b(str, bArr, i4, i3 - i4);
                    return;
                }
                int i5 = i2 + iF2;
                this.f12926f = i5;
                int iB = Utf8.f13023a.b(str, bArr, i5, i3 - i5);
                this.f12926f = i2;
                B((iB - i2) - iF2);
                this.f12926f = iB;
            } catch (Utf8.UnpairedSurrogateException e2) {
                this.f12926f = i2;
                h(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new OutOfSpaceException(e3);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void z(int i2, int i3) throws OutOfSpaceException {
            B((i2 << 3) | i3);
        }
    }

    public static final class OutputStreamEncoder extends AbstractBufferedEncoder {
        public final UncloseableOutputStream g;

        public OutputStreamEncoder(UncloseableOutputStream uncloseableOutputStream, int i2) {
            super(i2);
            this.g = uncloseableOutputStream;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void A(int i2, int i3) throws IOException {
            K(20);
            G(i2, 0);
            H(i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void B(int i2) throws IOException {
            K(5);
            H(i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void C(int i2, long j2) throws IOException {
            K(20);
            G(i2, 0);
            I(j2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void D(long j2) throws IOException {
            K(10);
            I(j2);
        }

        public final void J() throws IOException {
            this.g.write(this.d, 0, this.f12924f);
            this.f12924f = 0;
        }

        public final void K(int i2) throws IOException {
            if (this.f12923e - this.f12924f < i2) {
                J();
            }
        }

        public final void L(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = this.f12924f;
            int i5 = this.f12923e;
            int i6 = i5 - i4;
            byte[] bArr2 = this.d;
            if (i6 >= i3) {
                System.arraycopy(bArr, i2, bArr2, i4, i3);
                this.f12924f += i3;
                return;
            }
            System.arraycopy(bArr, i2, bArr2, i4, i6);
            int i7 = i2 + i6;
            int i8 = i3 - i6;
            this.f12924f = i5;
            J();
            if (i8 > i5) {
                this.g.write(bArr, i7, i8);
            } else {
                System.arraycopy(bArr, i7, bArr2, 0, i8);
                this.f12924f = i8;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public final void a(int i2, int i3, byte[] bArr) throws IOException {
            L(bArr, i2, i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void i(byte b2) throws IOException {
            if (this.f12924f == this.f12923e) {
                J();
            }
            int i2 = this.f12924f;
            this.f12924f = i2 + 1;
            this.d[i2] = b2;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void j(int i2, boolean z) throws IOException {
            K(11);
            G(i2, 0);
            byte b2 = z ? (byte) 1 : (byte) 0;
            int i3 = this.f12924f;
            this.f12924f = i3 + 1;
            this.d[i3] = b2;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void k(int i2, byte[] bArr) throws IOException {
            B(i2);
            L(bArr, 0, i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void l(int i2, ByteString byteString) throws IOException {
            z(i2, 2);
            m(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void m(ByteString byteString) throws IOException {
            B(byteString.size());
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            a(literalByteString.m(), literalByteString.size(), literalByteString.f12902e);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void n(int i2, int i3) throws IOException {
            K(14);
            G(i2, 5);
            E(i3);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void o(int i2) throws IOException {
            K(4);
            E(i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void p(int i2, long j2) throws IOException {
            K(18);
            G(i2, 1);
            F(j2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void q(long j2) throws IOException {
            K(8);
            F(j2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void r(int i2, int i3) throws IOException {
            K(20);
            G(i2, 0);
            if (i3 >= 0) {
                H(i3);
            } else {
                I(i3);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void s(int i2) throws IOException {
            if (i2 >= 0) {
                B(i2);
            } else {
                D(i2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void t(int i2, MessageLite messageLite, Schema schema) throws IOException {
            z(i2, 2);
            B(((AbstractMessageLite) messageLite).k(schema));
            schema.h(messageLite, this.f12922a);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void u(MessageLite messageLite) throws IOException {
            B(messageLite.c());
            messageLite.h(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void v(int i2, MessageLite messageLite) throws IOException {
            z(1, 3);
            A(2, i2);
            z(3, 2);
            u(messageLite);
            z(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void w(int i2, ByteString byteString) throws IOException {
            z(1, 3);
            A(2, i2);
            l(3, byteString);
            z(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void x(int i2, String str) throws IOException {
            z(i2, 2);
            y(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void y(String str) throws IOException {
            try {
                int length = str.length() * 3;
                int iF = CodedOutputStream.f(length);
                int i2 = iF + length;
                int i3 = this.f12923e;
                if (i2 > i3) {
                    byte[] bArr = new byte[length];
                    int iB = Utf8.f13023a.b(str, bArr, 0, length);
                    B(iB);
                    L(bArr, 0, iB);
                    return;
                }
                if (i2 > i3 - this.f12924f) {
                    J();
                }
                int iF2 = CodedOutputStream.f(str.length());
                int i4 = this.f12924f;
                byte[] bArr2 = this.d;
                try {
                    try {
                        if (iF2 == iF) {
                            int i5 = i4 + iF2;
                            this.f12924f = i5;
                            int iB2 = Utf8.f13023a.b(str, bArr2, i5, i3 - i5);
                            this.f12924f = i4;
                            H((iB2 - i4) - iF2);
                            this.f12924f = iB2;
                        } else {
                            int iA = Utf8.a(str);
                            H(iA);
                            this.f12924f = Utf8.f13023a.b(str, bArr2, this.f12924f, iA);
                        }
                    } catch (Utf8.UnpairedSurrogateException e2) {
                        this.f12924f = i4;
                        throw e2;
                    }
                } catch (ArrayIndexOutOfBoundsException e3) {
                    throw new OutOfSpaceException(e3);
                }
            } catch (Utf8.UnpairedSurrogateException e4) {
                h(str, e4);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void z(int i2, int i3) throws IOException {
            B((i2 << 3) | i3);
        }
    }

    public static int b(int i2, ByteString byteString) {
        int iE = e(i2);
        int size = byteString.size();
        return f(size) + size + iE;
    }

    public static int c(LazyFieldLite lazyFieldLite) {
        int iC;
        if (lazyFieldLite.d != null) {
            iC = lazyFieldLite.d.size();
        } else {
            ByteString byteString = lazyFieldLite.f12953a;
            if (byteString != null) {
                iC = byteString.size();
            } else {
                iC = lazyFieldLite.f12955c != null ? lazyFieldLite.f12955c.c() : 0;
            }
        }
        return f(iC) + iC;
    }

    public static int d(String str) {
        int length;
        try {
            length = Utf8.a(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.f12947a).length;
        }
        return f(length) + length;
    }

    public static int e(int i2) {
        return f(i2 << 3);
    }

    public static int f(int i2) {
        return (352 - (Integer.numberOfLeadingZeros(i2) * 9)) >>> 6;
    }

    public static int g(long j2) {
        return (640 - (Long.numberOfLeadingZeros(j2) * 9)) >>> 6;
    }

    public abstract void A(int i2, int i3);

    public abstract void B(int i2);

    public abstract void C(int i2, long j2);

    public abstract void D(long j2);

    public final void h(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws OutOfSpaceException {
        f12920b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(Internal.f12947a);
        try {
            B(bytes.length);
            a(0, bytes.length, bytes);
        } catch (IndexOutOfBoundsException e2) {
            throw new OutOfSpaceException(e2);
        }
    }

    public abstract void i(byte b2);

    public abstract void j(int i2, boolean z);

    public abstract void k(int i2, byte[] bArr);

    public abstract void l(int i2, ByteString byteString);

    public abstract void m(ByteString byteString);

    public abstract void n(int i2, int i3);

    public abstract void o(int i2);

    public abstract void p(int i2, long j2);

    public abstract void q(long j2);

    public abstract void r(int i2, int i3);

    public abstract void s(int i2);

    public abstract void t(int i2, MessageLite messageLite, Schema schema);

    public abstract void u(MessageLite messageLite);

    public abstract void v(int i2, MessageLite messageLite);

    public abstract void w(int i2, ByteString byteString);

    public abstract void x(int i2, String str);

    public abstract void y(String str);

    public abstract void z(int i2, int i3);

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
