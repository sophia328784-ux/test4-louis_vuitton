package androidx.datastore.preferences.protobuf;

import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class CodedInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CodedInputStreamReader f12904b;

    public static final class ArrayDecoder extends CodedInputStream {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f12905c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f12906e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12907f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12908h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f12909i = Integer.MAX_VALUE;

        public ArrayDecoder(byte[] bArr, int i2, int i3, boolean z) {
            this.f12905c = bArr;
            this.d = i3 + i2;
            this.f12907f = i2;
            this.g = i2;
        }

        public final int A() throws InvalidProtocolBufferException {
            int i2 = this.f12907f;
            if (this.d - i2 < 4) {
                throw InvalidProtocolBufferException.e();
            }
            this.f12907f = i2 + 4;
            byte[] bArr = this.f12905c;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        public final long B() throws InvalidProtocolBufferException {
            int i2 = this.f12907f;
            if (this.d - i2 < 8) {
                throw InvalidProtocolBufferException.e();
            }
            this.f12907f = i2 + 8;
            byte[] bArr = this.f12905c;
            return ((((long) bArr[i2 + 1]) & 255) << 8) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
        }

        public final int C() {
            int i2;
            int i3 = this.f12907f;
            int i4 = this.d;
            if (i4 != i3) {
                int i5 = i3 + 1;
                byte[] bArr = this.f12905c;
                byte b2 = bArr[i3];
                if (b2 >= 0) {
                    this.f12907f = i5;
                    return b2;
                }
                if (i4 - i5 >= 9) {
                    int i6 = i3 + 2;
                    int i7 = (bArr[i5] << 7) ^ b2;
                    if (i7 < 0) {
                        i2 = i7 ^ (-128);
                    } else {
                        int i8 = i3 + 3;
                        int i9 = (bArr[i6] << 14) ^ i7;
                        if (i9 >= 0) {
                            i2 = i9 ^ 16256;
                        } else {
                            int i10 = i3 + 4;
                            int i11 = i9 ^ (bArr[i8] << 21);
                            if (i11 < 0) {
                                i2 = (-2080896) ^ i11;
                            } else {
                                i8 = i3 + 5;
                                byte b3 = bArr[i10];
                                int i12 = (i11 ^ (b3 << 28)) ^ 266354560;
                                if (b3 < 0) {
                                    i10 = i3 + 6;
                                    if (bArr[i8] < 0) {
                                        i8 = i3 + 7;
                                        if (bArr[i10] < 0) {
                                            i10 = i3 + 8;
                                            if (bArr[i8] < 0) {
                                                i8 = i3 + 9;
                                                if (bArr[i10] < 0) {
                                                    int i13 = i3 + 10;
                                                    if (bArr[i8] >= 0) {
                                                        i6 = i13;
                                                        i2 = i12;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i2 = i12;
                                }
                                i2 = i12;
                            }
                            i6 = i10;
                        }
                        i6 = i8;
                    }
                    this.f12907f = i6;
                    return i2;
                }
            }
            return (int) E();
        }

        public final long D() {
            long j2;
            long j3;
            long j4;
            long j5;
            int i2 = this.f12907f;
            int i3 = this.d;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.f12905c;
                byte b2 = bArr[i2];
                if (b2 >= 0) {
                    this.f12907f = i4;
                    return b2;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b2;
                    if (i6 < 0) {
                        j2 = i6 ^ (-128);
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            j2 = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                j5 = (-2080896) ^ i10;
                            } else {
                                long j6 = i10;
                                i5 = i2 + 5;
                                long j7 = j6 ^ (((long) bArr[i9]) << 28);
                                if (j7 >= 0) {
                                    j4 = 266354560;
                                } else {
                                    i9 = i2 + 6;
                                    long j8 = j7 ^ (((long) bArr[i5]) << 35);
                                    if (j8 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i5 = i2 + 7;
                                        j7 = j8 ^ (((long) bArr[i9]) << 42);
                                        if (j7 >= 0) {
                                            j4 = 4363953127296L;
                                        } else {
                                            i9 = i2 + 8;
                                            j8 = j7 ^ (((long) bArr[i5]) << 49);
                                            if (j8 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i5 = i2 + 9;
                                                long j9 = (j8 ^ (((long) bArr[i9]) << 56)) ^ 71499008037633920L;
                                                if (j9 < 0) {
                                                    int i11 = i2 + 10;
                                                    if (bArr[i5] >= 0) {
                                                        i5 = i11;
                                                    }
                                                }
                                                j2 = j9;
                                            }
                                        }
                                    }
                                    j5 = j3 ^ j8;
                                }
                                j2 = j4 ^ j7;
                            }
                            i5 = i9;
                            j2 = j5;
                        }
                    }
                    this.f12907f = i5;
                    return j2;
                }
            }
            return E();
        }

        public final long E() throws InvalidProtocolBufferException {
            long j2 = 0;
            for (int i2 = 0; i2 < 64; i2 += 7) {
                int i3 = this.f12907f;
                if (i3 == this.d) {
                    throw InvalidProtocolBufferException.e();
                }
                this.f12907f = i3 + 1;
                byte b2 = this.f12905c[i3];
                j2 |= ((long) (b2 & 127)) << i2;
                if ((b2 & 128) == 0) {
                    return j2;
                }
            }
            throw InvalidProtocolBufferException.c();
        }

        public final void F() {
            int i2 = this.d + this.f12906e;
            this.d = i2;
            int i3 = i2 - this.g;
            int i4 = this.f12909i;
            if (i3 <= i4) {
                this.f12906e = 0;
                return;
            }
            int i5 = i3 - i4;
            this.f12906e = i5;
            this.d = i2 - i5;
        }

        public final void G(int i2) throws InvalidProtocolBufferException {
            if (i2 >= 0) {
                int i3 = this.d;
                int i4 = this.f12907f;
                if (i2 <= i3 - i4) {
                    this.f12907f = i4 + i2;
                    return;
                }
            }
            if (i2 >= 0) {
                throw InvalidProtocolBufferException.e();
            }
            throw InvalidProtocolBufferException.d();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void a(int i2) throws InvalidProtocolBufferException {
            if (this.f12908h != i2) {
                throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int b() {
            return this.f12907f - this.g;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean c() {
            return this.f12907f == this.d;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void e(int i2) {
            this.f12909i = i2;
            F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int f(int i2) throws InvalidProtocolBufferException {
            if (i2 < 0) {
                throw InvalidProtocolBufferException.d();
            }
            int iB = i2 + b();
            if (iB < 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int i3 = this.f12909i;
            if (iB > i3) {
                throw InvalidProtocolBufferException.e();
            }
            this.f12909i = iB;
            F();
            return i3;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean g() {
            return D() != 0;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:17:0x0033  */
        /* JADX WARN: Code duplicated, block: B:20:0x003d  */
        /* JADX WARN: Code duplicated, block: B:22:0x0042  */
        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final ByteString h() throws InvalidProtocolBufferException {
            byte[] bArrCopyOfRange;
            int iC = C();
            byte[] bArr = this.f12905c;
            if (iC > 0) {
                int i2 = this.d;
                int i3 = this.f12907f;
                if (iC <= i2 - i3) {
                    ByteString byteStringH = ByteString.h(i3, iC, bArr);
                    this.f12907f += iC;
                    return byteStringH;
                }
            }
            if (iC == 0) {
                return ByteString.f12895c;
            }
            if (iC > 0) {
                int i4 = this.d;
                int i5 = this.f12907f;
                if (iC <= i4 - i5) {
                    int i6 = iC + i5;
                    this.f12907f = i6;
                    bArrCopyOfRange = Arrays.copyOfRange(bArr, i5, i6);
                } else {
                    if (iC <= 0) {
                        throw InvalidProtocolBufferException.e();
                    }
                    if (iC == 0) {
                        throw InvalidProtocolBufferException.d();
                    }
                    bArrCopyOfRange = Internal.f12948b;
                }
            } else {
                if (iC <= 0) {
                    throw InvalidProtocolBufferException.e();
                }
                if (iC == 0) {
                    throw InvalidProtocolBufferException.d();
                }
                bArrCopyOfRange = Internal.f12948b;
            }
            ByteString byteString = ByteString.f12895c;
            return new ByteString.LiteralByteString(bArrCopyOfRange);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final double i() {
            return Double.longBitsToDouble(B());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int j() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int k() {
            return A();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long l() {
            return B();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final float m() {
            return Float.intBitsToFloat(A());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int n() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long o() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int p() {
            return A();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long q() {
            return B();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int r() {
            int iC = C();
            return (-(iC & 1)) ^ (iC >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long s() {
            long jD = D();
            return (-(jD & 1)) ^ (jD >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String t() throws InvalidProtocolBufferException {
            int iC = C();
            if (iC > 0) {
                int i2 = this.d;
                int i3 = this.f12907f;
                if (iC <= i2 - i3) {
                    String str = new String(this.f12905c, i3, iC, Internal.f12947a);
                    this.f12907f += iC;
                    return str;
                }
            }
            if (iC == 0) {
                return "";
            }
            if (iC < 0) {
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String u() throws InvalidProtocolBufferException {
            int iC = C();
            if (iC > 0) {
                int i2 = this.d;
                int i3 = this.f12907f;
                if (iC <= i2 - i3) {
                    String strA = Utf8.f13023a.a(i3, iC, this.f12905c);
                    this.f12907f += iC;
                    return strA;
                }
            }
            if (iC == 0) {
                return "";
            }
            if (iC <= 0) {
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int v() throws InvalidProtocolBufferException {
            if (c()) {
                this.f12908h = 0;
                return 0;
            }
            int iC = C();
            this.f12908h = iC;
            if ((iC >>> 3) != 0) {
                return iC;
            }
            throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int w() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long x() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean y(int i2) throws InvalidProtocolBufferException {
            int i3 = i2 & 7;
            int i4 = 0;
            if (i3 != 0) {
                if (i3 == 1) {
                    G(8);
                    return true;
                }
                if (i3 == 2) {
                    G(C());
                    return true;
                }
                if (i3 == 3) {
                    z();
                    a(((i2 >>> 3) << 3) | 4);
                    return true;
                }
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw InvalidProtocolBufferException.b();
                }
                G(4);
                return true;
            }
            int i5 = this.d - this.f12907f;
            byte[] bArr = this.f12905c;
            if (i5 >= 10) {
                while (i4 < 10) {
                    int i6 = this.f12907f;
                    this.f12907f = i6 + 1;
                    if (bArr[i6] < 0) {
                        i4++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i4 < 10) {
                int i7 = this.f12907f;
                if (i7 == this.d) {
                    throw InvalidProtocolBufferException.e();
                }
                this.f12907f = i7 + 1;
                if (bArr[i7] < 0) {
                    i4++;
                }
            }
            throw InvalidProtocolBufferException.c();
            return true;
        }
    }

    public static final class StreamDecoder extends CodedInputStream {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FileInputStream f12910c;
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f12911e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12912f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12913h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f12914i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f12915j = Integer.MAX_VALUE;

        public interface RefillCallback {
        }

        public StreamDecoder(FileInputStream fileInputStream) {
            Charset charset = Internal.f12947a;
            this.f12910c = fileInputStream;
            this.d = new byte[4096];
            this.f12911e = 0;
            this.g = 0;
            this.f12914i = 0;
        }

        public final byte[] A(int i2) throws IOException {
            byte[] bArrB = B(i2);
            if (bArrB != null) {
                return bArrB;
            }
            int i3 = this.g;
            int i4 = this.f12911e;
            int length = i4 - i3;
            this.f12914i += i4;
            this.g = 0;
            this.f12911e = 0;
            ArrayList<byte[]> arrayListC = C(i2 - length);
            byte[] bArr = new byte[i2];
            System.arraycopy(this.d, i3, bArr, 0, length);
            for (byte[] bArr2 : arrayListC) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        public final byte[] B(int i2) throws IOException {
            if (i2 == 0) {
                return Internal.f12948b;
            }
            if (i2 < 0) {
                throw InvalidProtocolBufferException.d();
            }
            int i3 = this.f12914i;
            int i4 = this.g;
            int i5 = i3 + i4 + i2;
            if (i5 - Integer.MAX_VALUE > 0) {
                throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i6 = this.f12915j;
            if (i5 > i6) {
                K((i6 - i3) - i4);
                throw InvalidProtocolBufferException.e();
            }
            int i7 = this.f12911e - i4;
            int i8 = i2 - i7;
            FileInputStream fileInputStream = this.f12910c;
            if (i8 >= 4096) {
                try {
                    if (i8 > fileInputStream.available()) {
                        return null;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f12949b = true;
                    throw e2;
                }
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(this.d, this.g, bArr, 0, i7);
            this.f12914i += this.f12911e;
            this.g = 0;
            this.f12911e = 0;
            while (i7 < i2) {
                try {
                    int i9 = fileInputStream.read(bArr, i7, i2 - i7);
                    if (i9 == -1) {
                        throw InvalidProtocolBufferException.e();
                    }
                    this.f12914i += i9;
                    i7 += i9;
                } catch (InvalidProtocolBufferException e3) {
                    e3.f12949b = true;
                    throw e3;
                }
            }
            return bArr;
        }

        public final ArrayList C(int i2) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i2 > 0) {
                int iMin = Math.min(i2, 4096);
                byte[] bArr = new byte[iMin];
                int i3 = 0;
                while (i3 < iMin) {
                    int i4 = this.f12910c.read(bArr, i3, iMin - i3);
                    if (i4 == -1) {
                        throw InvalidProtocolBufferException.e();
                    }
                    this.f12914i += i4;
                    i3 += i4;
                }
                i2 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        public final int D() throws InvalidProtocolBufferException {
            int i2 = this.g;
            if (this.f12911e - i2 < 4) {
                J(4);
                i2 = this.g;
            }
            this.g = i2 + 4;
            byte[] bArr = this.d;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        public final long E() throws InvalidProtocolBufferException {
            int i2 = this.g;
            if (this.f12911e - i2 < 8) {
                J(8);
                i2 = this.g;
            }
            this.g = i2 + 8;
            byte[] bArr = this.d;
            return ((((long) bArr[i2 + 1]) & 255) << 8) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
        }

        public final int F() {
            int i2;
            int i3 = this.g;
            int i4 = this.f12911e;
            if (i4 != i3) {
                int i5 = i3 + 1;
                byte[] bArr = this.d;
                byte b2 = bArr[i3];
                if (b2 >= 0) {
                    this.g = i5;
                    return b2;
                }
                if (i4 - i5 >= 9) {
                    int i6 = i3 + 2;
                    int i7 = (bArr[i5] << 7) ^ b2;
                    if (i7 < 0) {
                        i2 = i7 ^ (-128);
                    } else {
                        int i8 = i3 + 3;
                        int i9 = (bArr[i6] << 14) ^ i7;
                        if (i9 >= 0) {
                            i2 = i9 ^ 16256;
                        } else {
                            int i10 = i3 + 4;
                            int i11 = i9 ^ (bArr[i8] << 21);
                            if (i11 < 0) {
                                i2 = (-2080896) ^ i11;
                            } else {
                                i8 = i3 + 5;
                                byte b3 = bArr[i10];
                                int i12 = (i11 ^ (b3 << 28)) ^ 266354560;
                                if (b3 < 0) {
                                    i10 = i3 + 6;
                                    if (bArr[i8] < 0) {
                                        i8 = i3 + 7;
                                        if (bArr[i10] < 0) {
                                            i10 = i3 + 8;
                                            if (bArr[i8] < 0) {
                                                i8 = i3 + 9;
                                                if (bArr[i10] < 0) {
                                                    int i13 = i3 + 10;
                                                    if (bArr[i8] >= 0) {
                                                        i6 = i13;
                                                        i2 = i12;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i2 = i12;
                                }
                                i2 = i12;
                            }
                            i6 = i10;
                        }
                        i6 = i8;
                    }
                    this.g = i6;
                    return i2;
                }
            }
            return (int) H();
        }

        public final long G() {
            long j2;
            long j3;
            long j4;
            long j5;
            int i2 = this.g;
            int i3 = this.f12911e;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.d;
                byte b2 = bArr[i2];
                if (b2 >= 0) {
                    this.g = i4;
                    return b2;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b2;
                    if (i6 < 0) {
                        j2 = i6 ^ (-128);
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            j2 = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                j5 = (-2080896) ^ i10;
                            } else {
                                long j6 = i10;
                                i5 = i2 + 5;
                                long j7 = j6 ^ (((long) bArr[i9]) << 28);
                                if (j7 >= 0) {
                                    j4 = 266354560;
                                } else {
                                    i9 = i2 + 6;
                                    long j8 = j7 ^ (((long) bArr[i5]) << 35);
                                    if (j8 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i5 = i2 + 7;
                                        j7 = j8 ^ (((long) bArr[i9]) << 42);
                                        if (j7 >= 0) {
                                            j4 = 4363953127296L;
                                        } else {
                                            i9 = i2 + 8;
                                            j8 = j7 ^ (((long) bArr[i5]) << 49);
                                            if (j8 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i5 = i2 + 9;
                                                long j9 = (j8 ^ (((long) bArr[i9]) << 56)) ^ 71499008037633920L;
                                                if (j9 < 0) {
                                                    int i11 = i2 + 10;
                                                    if (bArr[i5] >= 0) {
                                                        i5 = i11;
                                                    }
                                                }
                                                j2 = j9;
                                            }
                                        }
                                    }
                                    j5 = j3 ^ j8;
                                }
                                j2 = j4 ^ j7;
                            }
                            i5 = i9;
                            j2 = j5;
                        }
                    }
                    this.g = i5;
                    return j2;
                }
            }
            return H();
        }

        public final long H() throws InvalidProtocolBufferException {
            long j2 = 0;
            for (int i2 = 0; i2 < 64; i2 += 7) {
                if (this.g == this.f12911e) {
                    J(1);
                }
                int i3 = this.g;
                this.g = i3 + 1;
                byte b2 = this.d[i3];
                j2 |= ((long) (b2 & 127)) << i2;
                if ((b2 & 128) == 0) {
                    return j2;
                }
            }
            throw InvalidProtocolBufferException.c();
        }

        public final void I() {
            int i2 = this.f12911e + this.f12912f;
            this.f12911e = i2;
            int i3 = this.f12914i + i2;
            int i4 = this.f12915j;
            if (i3 <= i4) {
                this.f12912f = 0;
                return;
            }
            int i5 = i3 - i4;
            this.f12912f = i5;
            this.f12911e = i2 - i5;
        }

        public final void J(int i2) throws InvalidProtocolBufferException {
            if (L(i2)) {
                return;
            }
            if (i2 <= (Integer.MAX_VALUE - this.f12914i) - this.g) {
                throw InvalidProtocolBufferException.e();
            }
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        public final void K(int i2) throws InvalidProtocolBufferException {
            int i3 = this.f12911e;
            int i4 = this.g;
            int i5 = i3 - i4;
            if (i2 <= i5 && i2 >= 0) {
                this.g = i4 + i2;
                return;
            }
            FileInputStream fileInputStream = this.f12910c;
            if (i2 < 0) {
                throw InvalidProtocolBufferException.d();
            }
            int i6 = this.f12914i;
            int i7 = i6 + i4;
            int i8 = i7 + i2;
            int i9 = this.f12915j;
            if (i8 > i9) {
                K((i9 - i6) - i4);
                throw InvalidProtocolBufferException.e();
            }
            this.f12914i = i7;
            this.f12911e = 0;
            this.g = 0;
            while (i5 < i2) {
                long j2 = i2 - i5;
                try {
                    try {
                        long jSkip = fileInputStream.skip(j2);
                        if (jSkip < 0 || jSkip > j2) {
                            throw new IllegalStateException(fileInputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i5 += (int) jSkip;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f12949b = true;
                        throw e2;
                    }
                } catch (Throwable th) {
                    this.f12914i += i5;
                    I();
                    throw th;
                }
            }
            this.f12914i += i5;
            I();
            if (i5 >= i2) {
                return;
            }
            int i10 = this.f12911e;
            int i11 = i10 - this.g;
            this.g = i10;
            J(1);
            while (true) {
                int i12 = i2 - i11;
                int i13 = this.f12911e;
                if (i12 <= i13) {
                    this.g = i12;
                    return;
                } else {
                    i11 += i13;
                    this.g = i13;
                    J(1);
                }
            }
        }

        public final boolean L(int i2) throws IOException {
            FileInputStream fileInputStream = this.f12910c;
            int i3 = this.g;
            int i4 = i3 + i2;
            int i5 = this.f12911e;
            if (i4 <= i5) {
                md.k(n00.m(i2, "refillBuffer() called when ", " bytes were already available in buffer"));
                return false;
            }
            int i6 = this.f12914i;
            if (i2 <= (Integer.MAX_VALUE - i6) - i3 && i6 + i3 + i2 <= this.f12915j) {
                byte[] bArr = this.d;
                if (i3 > 0) {
                    if (i5 > i3) {
                        System.arraycopy(bArr, i3, bArr, 0, i5 - i3);
                    }
                    this.f12914i += i3;
                    this.f12911e -= i3;
                    this.g = 0;
                }
                int i7 = this.f12911e;
                try {
                    int i8 = fileInputStream.read(bArr, i7, Math.min(bArr.length - i7, (Integer.MAX_VALUE - this.f12914i) - i7));
                    if (i8 == 0 || i8 < -1 || i8 > bArr.length) {
                        throw new IllegalStateException(fileInputStream.getClass() + "#read(byte[]) returned invalid result: " + i8 + "\nThe InputStream implementation is buggy.");
                    }
                    if (i8 > 0) {
                        this.f12911e += i8;
                        I();
                        if (this.f12911e >= i2) {
                            return true;
                        }
                        return L(i2);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f12949b = true;
                    throw e2;
                }
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void a(int i2) throws InvalidProtocolBufferException {
            if (this.f12913h != i2) {
                throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int b() {
            return this.f12914i + this.g;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean c() {
            return this.g == this.f12911e && !L(1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void e(int i2) {
            this.f12915j = i2;
            I();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int f(int i2) throws InvalidProtocolBufferException {
            if (i2 < 0) {
                throw InvalidProtocolBufferException.d();
            }
            int i3 = this.f12914i + this.g + i2;
            if (i3 < 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int i4 = this.f12915j;
            if (i3 > i4) {
                throw InvalidProtocolBufferException.e();
            }
            this.f12915j = i3;
            I();
            return i4;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean g() {
            return G() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final ByteString h() throws IOException {
            int iF = F();
            int i2 = this.f12911e;
            int i3 = this.g;
            int i4 = i2 - i3;
            byte[] bArr = this.d;
            if (iF <= i4 && iF > 0) {
                ByteString byteStringH = ByteString.h(i3, iF, bArr);
                this.g += iF;
                return byteStringH;
            }
            if (iF == 0) {
                return ByteString.f12895c;
            }
            if (iF < 0) {
                throw InvalidProtocolBufferException.d();
            }
            byte[] bArrB = B(iF);
            if (bArrB != null) {
                return ByteString.h(0, bArrB.length, bArrB);
            }
            int i5 = this.g;
            int i6 = this.f12911e;
            int length = i6 - i5;
            this.f12914i += i6;
            this.g = 0;
            this.f12911e = 0;
            ArrayList<byte[]> arrayListC = C(iF - length);
            byte[] bArr2 = new byte[iF];
            System.arraycopy(bArr, i5, bArr2, 0, length);
            for (byte[] bArr3 : arrayListC) {
                System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
                length += bArr3.length;
            }
            ByteString byteString = ByteString.f12895c;
            return new ByteString.LiteralByteString(bArr2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final double i() {
            return Double.longBitsToDouble(E());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int j() {
            return F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int k() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long l() {
            return E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final float m() {
            return Float.intBitsToFloat(D());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int n() {
            return F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long o() {
            return G();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int p() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long q() {
            return E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int r() {
            int iF = F();
            return (-(iF & 1)) ^ (iF >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long s() {
            long jG = G();
            return (-(jG & 1)) ^ (jG >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String t() throws InvalidProtocolBufferException {
            int iF = F();
            byte[] bArr = this.d;
            if (iF > 0) {
                int i2 = this.f12911e;
                int i3 = this.g;
                if (iF <= i2 - i3) {
                    String str = new String(bArr, i3, iF, Internal.f12947a);
                    this.g += iF;
                    return str;
                }
            }
            if (iF == 0) {
                return "";
            }
            if (iF < 0) {
                throw InvalidProtocolBufferException.d();
            }
            if (iF > this.f12911e) {
                return new String(A(iF), Internal.f12947a);
            }
            J(iF);
            String str2 = new String(bArr, this.g, iF, Internal.f12947a);
            this.g += iF;
            return str2;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String u() throws IOException {
            int iF = F();
            int i2 = this.g;
            int i3 = this.f12911e;
            int i4 = i3 - i2;
            byte[] bArrA = this.d;
            if (iF <= i4 && iF > 0) {
                this.g = i2 + iF;
            } else {
                if (iF == 0) {
                    return "";
                }
                if (iF < 0) {
                    throw InvalidProtocolBufferException.d();
                }
                i2 = 0;
                if (iF <= i3) {
                    J(iF);
                    this.g = iF;
                } else {
                    bArrA = A(iF);
                }
            }
            return Utf8.f13023a.a(i2, iF, bArrA);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int v() throws InvalidProtocolBufferException {
            if (c()) {
                this.f12913h = 0;
                return 0;
            }
            int iF = F();
            this.f12913h = iF;
            if ((iF >>> 3) != 0) {
                return iF;
            }
            throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int w() {
            return F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long x() {
            return G();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean y(int i2) throws InvalidProtocolBufferException {
            int i3 = i2 & 7;
            int i4 = 0;
            if (i3 != 0) {
                if (i3 == 1) {
                    K(8);
                    return true;
                }
                if (i3 == 2) {
                    K(F());
                    return true;
                }
                if (i3 == 3) {
                    z();
                    a(((i2 >>> 3) << 3) | 4);
                    return true;
                }
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw InvalidProtocolBufferException.b();
                }
                K(4);
                return true;
            }
            int i5 = this.f12911e - this.g;
            byte[] bArr = this.d;
            if (i5 >= 10) {
                while (i4 < 10) {
                    int i6 = this.g;
                    this.g = i6 + 1;
                    if (bArr[i6] < 0) {
                        i4++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i4 < 10) {
                if (this.g == this.f12911e) {
                    J(1);
                }
                int i7 = this.g;
                this.g = i7 + 1;
                if (bArr[i7] < 0) {
                    i4++;
                }
            }
            throw InvalidProtocolBufferException.c();
            return true;
        }
    }

    public static CodedInputStream d(boolean z, int i2, int i3, byte[] bArr) {
        ArrayDecoder arrayDecoder = new ArrayDecoder(bArr, i2, i3, z);
        try {
            arrayDecoder.f(i3);
            return arrayDecoder;
        } catch (InvalidProtocolBufferException e2) {
            lc0.u(e2);
            return null;
        }
    }

    public abstract void a(int i2);

    public abstract int b();

    public abstract boolean c();

    public abstract void e(int i2);

    public abstract int f(int i2);

    public abstract boolean g();

    public abstract ByteString h();

    public abstract double i();

    public abstract int j();

    public abstract int k();

    public abstract long l();

    public abstract float m();

    public abstract int n();

    public abstract long o();

    public abstract int p();

    public abstract long q();

    public abstract int r();

    public abstract long s();

    public abstract String t();

    public abstract String u();

    public abstract int v();

    public abstract int w();

    public abstract long x();

    public abstract boolean y(int i2);

    public final void z() throws InvalidProtocolBufferException {
        boolean zY;
        do {
            int iV = v();
            if (iV == 0) {
                return;
            }
            int i2 = this.f12903a;
            if (i2 >= 100) {
                throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            this.f12903a = i2 + 1;
            zY = y(iV);
            this.f12903a--;
        } while (zY);
    }
}
