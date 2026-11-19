package com.google.crypto.tink.shaded.protobuf;

import defpackage.lc0;
import defpackage.md;
import defpackage.n00;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CodedInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f34149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CodedInputStreamReader f34150b;

    public static final class ArrayDecoder extends CodedInputStream {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f34151c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f34152e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f34153f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f34154h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f34155i = Integer.MAX_VALUE;

        public ArrayDecoder(byte[] bArr, int i2, int i3, boolean z) {
            this.f34151c = bArr;
            this.d = i3 + i2;
            this.f34153f = i2;
            this.g = i2;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean A(int i2) throws InvalidProtocolBufferException {
            int iX;
            int i3 = i2 & 7;
            int i4 = 0;
            if (i3 == 0) {
                int i5 = this.d - this.f34153f;
                byte[] bArr = this.f34151c;
                if (i5 >= 10) {
                    while (i4 < 10) {
                        int i6 = this.f34153f;
                        this.f34153f = i6 + 1;
                        if (bArr[i6] < 0) {
                            i4++;
                        }
                    }
                    throw InvalidProtocolBufferException.d();
                }
                while (i4 < 10) {
                    int i7 = this.f34153f;
                    if (i7 == this.d) {
                        throw InvalidProtocolBufferException.g();
                    }
                    this.f34153f = i7 + 1;
                    if (bArr[i7] < 0) {
                        i4++;
                    }
                }
                throw InvalidProtocolBufferException.d();
                return true;
            }
            if (i3 == 1) {
                H(8);
                return true;
            }
            if (i3 == 2) {
                H(D());
                return true;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw InvalidProtocolBufferException.c();
                }
                H(4);
                return true;
            }
            do {
                iX = x();
                if (iX == 0) {
                    break;
                }
            } while (A(iX));
            a(((i2 >>> 3) << 3) | 4);
            return true;
        }

        public final int B() throws InvalidProtocolBufferException {
            int i2 = this.f34153f;
            if (this.d - i2 < 4) {
                throw InvalidProtocolBufferException.g();
            }
            this.f34153f = i2 + 4;
            byte[] bArr = this.f34151c;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        public final long C() throws InvalidProtocolBufferException {
            int i2 = this.f34153f;
            if (this.d - i2 < 8) {
                throw InvalidProtocolBufferException.g();
            }
            this.f34153f = i2 + 8;
            byte[] bArr = this.f34151c;
            return ((((long) bArr[i2 + 1]) & 255) << 8) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
        }

        public final int D() {
            int i2;
            int i3 = this.f34153f;
            int i4 = this.d;
            if (i4 != i3) {
                int i5 = i3 + 1;
                byte[] bArr = this.f34151c;
                byte b2 = bArr[i3];
                if (b2 >= 0) {
                    this.f34153f = i5;
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
                    this.f34153f = i6;
                    return i2;
                }
            }
            return (int) F();
        }

        public final long E() {
            long j2;
            long j3;
            long j4;
            long j5;
            int i2 = this.f34153f;
            int i3 = this.d;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.f34151c;
                byte b2 = bArr[i2];
                if (b2 >= 0) {
                    this.f34153f = i4;
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
                    this.f34153f = i5;
                    return j2;
                }
            }
            return F();
        }

        public final long F() throws InvalidProtocolBufferException {
            long j2 = 0;
            for (int i2 = 0; i2 < 64; i2 += 7) {
                int i3 = this.f34153f;
                if (i3 == this.d) {
                    throw InvalidProtocolBufferException.g();
                }
                this.f34153f = i3 + 1;
                byte b2 = this.f34151c[i3];
                j2 |= ((long) (b2 & 127)) << i2;
                if ((b2 & 128) == 0) {
                    return j2;
                }
            }
            throw InvalidProtocolBufferException.d();
        }

        public final void G() {
            int i2 = this.d + this.f34152e;
            this.d = i2;
            int i3 = i2 - this.g;
            int i4 = this.f34155i;
            if (i3 <= i4) {
                this.f34152e = 0;
                return;
            }
            int i5 = i3 - i4;
            this.f34152e = i5;
            this.d = i2 - i5;
        }

        public final void H(int i2) throws InvalidProtocolBufferException {
            if (i2 >= 0) {
                int i3 = this.d;
                int i4 = this.f34153f;
                if (i2 <= i3 - i4) {
                    this.f34153f = i4 + i2;
                    return;
                }
            }
            if (i2 >= 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final void a(int i2) throws InvalidProtocolBufferException {
            if (this.f34154h != i2) {
                throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int d() {
            return this.f34153f - this.g;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean e() {
            return this.f34153f == this.d;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final void g(int i2) {
            this.f34155i = i2;
            G();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int h(int i2) throws InvalidProtocolBufferException {
            if (i2 < 0) {
                throw InvalidProtocolBufferException.e();
            }
            int iD = i2 + d();
            if (iD < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int i3 = this.f34155i;
            if (iD > i3) {
                throw InvalidProtocolBufferException.g();
            }
            this.f34155i = iD;
            G();
            return i3;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean i() {
            return E() != 0;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:17:0x0033  */
        /* JADX WARN: Code duplicated, block: B:20:0x003d  */
        /* JADX WARN: Code duplicated, block: B:22:0x0042  */
        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final ByteString j() throws InvalidProtocolBufferException {
            byte[] bArrCopyOfRange;
            int iD = D();
            byte[] bArr = this.f34151c;
            if (iD > 0) {
                int i2 = this.d;
                int i3 = this.f34153f;
                if (iD <= i2 - i3) {
                    ByteString byteStringH = ByteString.h(i3, iD, bArr);
                    this.f34153f += iD;
                    return byteStringH;
                }
            }
            if (iD == 0) {
                return ByteString.f34141c;
            }
            if (iD > 0) {
                int i4 = this.d;
                int i5 = this.f34153f;
                if (iD <= i4 - i5) {
                    int i6 = iD + i5;
                    this.f34153f = i6;
                    bArrCopyOfRange = Arrays.copyOfRange(bArr, i5, i6);
                } else {
                    if (iD <= 0) {
                        throw InvalidProtocolBufferException.g();
                    }
                    if (iD == 0) {
                        throw InvalidProtocolBufferException.e();
                    }
                    bArrCopyOfRange = Internal.f34191b;
                }
            } else {
                if (iD <= 0) {
                    throw InvalidProtocolBufferException.g();
                }
                if (iD == 0) {
                    throw InvalidProtocolBufferException.e();
                }
                bArrCopyOfRange = Internal.f34191b;
            }
            ByteString byteString = ByteString.f34141c;
            return new ByteString.LiteralByteString(bArrCopyOfRange);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final double k() {
            return Double.longBitsToDouble(C());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int l() {
            return D();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int m() {
            return B();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long n() {
            return C();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final float o() {
            return Float.intBitsToFloat(B());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int p() {
            return D();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long q() {
            return E();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int r() {
            return B();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long s() {
            return C();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int t() {
            return CodedInputStream.b(D());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long u() {
            return CodedInputStream.c(E());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final String v() throws InvalidProtocolBufferException {
            int iD = D();
            if (iD > 0) {
                int i2 = this.d;
                int i3 = this.f34153f;
                if (iD <= i2 - i3) {
                    String str = new String(this.f34151c, i3, iD, Internal.f34190a);
                    this.f34153f += iD;
                    return str;
                }
            }
            if (iD == 0) {
                return "";
            }
            if (iD < 0) {
                throw InvalidProtocolBufferException.e();
            }
            throw InvalidProtocolBufferException.g();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final String w() throws InvalidProtocolBufferException {
            int iD = D();
            if (iD > 0) {
                int i2 = this.d;
                int i3 = this.f34153f;
                if (iD <= i2 - i3) {
                    String strA = Utf8.f34271a.a(i3, iD, this.f34151c);
                    this.f34153f += iD;
                    return strA;
                }
            }
            if (iD == 0) {
                return "";
            }
            if (iD <= 0) {
                throw InvalidProtocolBufferException.e();
            }
            throw InvalidProtocolBufferException.g();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int x() throws InvalidProtocolBufferException {
            if (e()) {
                this.f34154h = 0;
                return 0;
            }
            int iD = D();
            this.f34154h = iD;
            if ((iD >>> 3) != 0) {
                return iD;
            }
            throw InvalidProtocolBufferException.a();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int y() {
            return D();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long z() {
            return E();
        }
    }

    public static final class StreamDecoder extends CodedInputStream {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ByteArrayInputStream f34156c;
        public final byte[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f34157e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f34158f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f34159h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f34160i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f34161j = Integer.MAX_VALUE;

        public interface RefillCallback {
        }

        public StreamDecoder(ByteArrayInputStream byteArrayInputStream) {
            Charset charset = Internal.f34190a;
            this.f34156c = byteArrayInputStream;
            this.d = new byte[4096];
            this.f34157e = 0;
            this.g = 0;
            this.f34160i = 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean A(int i2) throws InvalidProtocolBufferException {
            int iX;
            int i3 = i2 & 7;
            int i4 = 0;
            if (i3 == 0) {
                int i5 = this.f34157e - this.g;
                byte[] bArr = this.d;
                if (i5 >= 10) {
                    while (i4 < 10) {
                        int i6 = this.g;
                        this.g = i6 + 1;
                        if (bArr[i6] < 0) {
                            i4++;
                        }
                    }
                    throw InvalidProtocolBufferException.d();
                }
                while (i4 < 10) {
                    if (this.g == this.f34157e) {
                        K(1);
                    }
                    int i7 = this.g;
                    this.g = i7 + 1;
                    if (bArr[i7] < 0) {
                        i4++;
                    }
                }
                throw InvalidProtocolBufferException.d();
                return true;
            }
            if (i3 == 1) {
                L(8);
                return true;
            }
            if (i3 == 2) {
                L(G());
                return true;
            }
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 != 5) {
                    throw InvalidProtocolBufferException.c();
                }
                L(4);
                return true;
            }
            do {
                iX = x();
                if (iX == 0) {
                    break;
                }
            } while (A(iX));
            a(((i2 >>> 3) << 3) | 4);
            return true;
        }

        public final byte[] B(int i2) throws IOException {
            byte[] bArrC = C(i2);
            if (bArrC != null) {
                return bArrC;
            }
            int i3 = this.g;
            int i4 = this.f34157e;
            int length = i4 - i3;
            this.f34160i += i4;
            this.g = 0;
            this.f34157e = 0;
            ArrayList<byte[]> arrayListD = D(i2 - length);
            byte[] bArr = new byte[i2];
            System.arraycopy(this.d, i3, bArr, 0, length);
            for (byte[] bArr2 : arrayListD) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        public final byte[] C(int i2) throws IOException {
            if (i2 == 0) {
                return Internal.f34191b;
            }
            if (i2 < 0) {
                throw InvalidProtocolBufferException.e();
            }
            int i3 = this.f34160i;
            int i4 = this.g;
            int i5 = i3 + i4 + i2;
            if (i5 - Integer.MAX_VALUE > 0) {
                throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i6 = this.f34161j;
            if (i5 > i6) {
                L((i6 - i3) - i4);
                throw InvalidProtocolBufferException.g();
            }
            int i7 = this.f34157e - i4;
            int i8 = i2 - i7;
            ByteArrayInputStream byteArrayInputStream = this.f34156c;
            if (i8 >= 4096) {
                try {
                    if (i8 > byteArrayInputStream.available()) {
                        return null;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f34192b = true;
                    throw e2;
                }
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(this.d, this.g, bArr, 0, i7);
            this.f34160i += this.f34157e;
            this.g = 0;
            this.f34157e = 0;
            while (i7 < i2) {
                try {
                    int i9 = byteArrayInputStream.read(bArr, i7, i2 - i7);
                    if (i9 == -1) {
                        throw InvalidProtocolBufferException.g();
                    }
                    this.f34160i += i9;
                    i7 += i9;
                } catch (InvalidProtocolBufferException e3) {
                    e3.f34192b = true;
                    throw e3;
                }
            }
            return bArr;
        }

        public final ArrayList D(int i2) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i2 > 0) {
                int iMin = Math.min(i2, 4096);
                byte[] bArr = new byte[iMin];
                int i3 = 0;
                while (i3 < iMin) {
                    int i4 = this.f34156c.read(bArr, i3, iMin - i3);
                    if (i4 == -1) {
                        throw InvalidProtocolBufferException.g();
                    }
                    this.f34160i += i4;
                    i3 += i4;
                }
                i2 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        public final int E() throws InvalidProtocolBufferException {
            int i2 = this.g;
            if (this.f34157e - i2 < 4) {
                K(4);
                i2 = this.g;
            }
            this.g = i2 + 4;
            byte[] bArr = this.d;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        public final long F() throws InvalidProtocolBufferException {
            int i2 = this.g;
            if (this.f34157e - i2 < 8) {
                K(8);
                i2 = this.g;
            }
            this.g = i2 + 8;
            byte[] bArr = this.d;
            return ((((long) bArr[i2 + 1]) & 255) << 8) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
        }

        public final int G() {
            int i2;
            int i3 = this.g;
            int i4 = this.f34157e;
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
            return (int) I();
        }

        public final long H() {
            long j2;
            long j3;
            long j4;
            long j5;
            int i2 = this.g;
            int i3 = this.f34157e;
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
            return I();
        }

        public final long I() throws InvalidProtocolBufferException {
            long j2 = 0;
            for (int i2 = 0; i2 < 64; i2 += 7) {
                if (this.g == this.f34157e) {
                    K(1);
                }
                int i3 = this.g;
                this.g = i3 + 1;
                byte b2 = this.d[i3];
                j2 |= ((long) (b2 & 127)) << i2;
                if ((b2 & 128) == 0) {
                    return j2;
                }
            }
            throw InvalidProtocolBufferException.d();
        }

        public final void J() {
            int i2 = this.f34157e + this.f34158f;
            this.f34157e = i2;
            int i3 = this.f34160i + i2;
            int i4 = this.f34161j;
            if (i3 <= i4) {
                this.f34158f = 0;
                return;
            }
            int i5 = i3 - i4;
            this.f34158f = i5;
            this.f34157e = i2 - i5;
        }

        public final void K(int i2) throws InvalidProtocolBufferException {
            if (M(i2)) {
                return;
            }
            if (i2 <= (Integer.MAX_VALUE - this.f34160i) - this.g) {
                throw InvalidProtocolBufferException.g();
            }
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        public final void L(int i2) throws InvalidProtocolBufferException {
            int i3 = this.f34157e;
            int i4 = this.g;
            int i5 = i3 - i4;
            if (i2 <= i5 && i2 >= 0) {
                this.g = i4 + i2;
                return;
            }
            ByteArrayInputStream byteArrayInputStream = this.f34156c;
            if (i2 < 0) {
                throw InvalidProtocolBufferException.e();
            }
            int i6 = this.f34160i;
            int i7 = i6 + i4;
            int i8 = i7 + i2;
            int i9 = this.f34161j;
            if (i8 > i9) {
                L((i9 - i6) - i4);
                throw InvalidProtocolBufferException.g();
            }
            this.f34160i = i7;
            this.f34157e = 0;
            this.g = 0;
            while (i5 < i2) {
                long j2 = i2 - i5;
                try {
                    try {
                        long jSkip = byteArrayInputStream.skip(j2);
                        if (jSkip < 0 || jSkip > j2) {
                            throw new IllegalStateException(byteArrayInputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i5 += (int) jSkip;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f34192b = true;
                        throw e2;
                    }
                } catch (Throwable th) {
                    this.f34160i += i5;
                    J();
                    throw th;
                }
            }
            this.f34160i += i5;
            J();
            if (i5 >= i2) {
                return;
            }
            int i10 = this.f34157e;
            int i11 = i10 - this.g;
            this.g = i10;
            K(1);
            while (true) {
                int i12 = i2 - i11;
                int i13 = this.f34157e;
                if (i12 <= i13) {
                    this.g = i12;
                    return;
                } else {
                    i11 += i13;
                    this.g = i13;
                    K(1);
                }
            }
        }

        public final boolean M(int i2) throws IOException {
            ByteArrayInputStream byteArrayInputStream = this.f34156c;
            int i3 = this.g;
            int i4 = i3 + i2;
            int i5 = this.f34157e;
            if (i4 <= i5) {
                md.k(n00.m(i2, "refillBuffer() called when ", " bytes were already available in buffer"));
                return false;
            }
            int i6 = this.f34160i;
            if (i2 <= (Integer.MAX_VALUE - i6) - i3 && i6 + i3 + i2 <= this.f34161j) {
                byte[] bArr = this.d;
                if (i3 > 0) {
                    if (i5 > i3) {
                        System.arraycopy(bArr, i3, bArr, 0, i5 - i3);
                    }
                    this.f34160i += i3;
                    this.f34157e -= i3;
                    this.g = 0;
                }
                int i7 = this.f34157e;
                try {
                    int i8 = byteArrayInputStream.read(bArr, i7, Math.min(bArr.length - i7, (Integer.MAX_VALUE - this.f34160i) - i7));
                    if (i8 == 0 || i8 < -1 || i8 > bArr.length) {
                        throw new IllegalStateException(byteArrayInputStream.getClass() + "#read(byte[]) returned invalid result: " + i8 + "\nThe InputStream implementation is buggy.");
                    }
                    if (i8 > 0) {
                        this.f34157e += i8;
                        J();
                        if (this.f34157e >= i2) {
                            return true;
                        }
                        return M(i2);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f34192b = true;
                    throw e2;
                }
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final void a(int i2) throws InvalidProtocolBufferException {
            if (this.f34159h != i2) {
                throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int d() {
            return this.f34160i + this.g;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean e() {
            return this.g == this.f34157e && !M(1);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final void g(int i2) {
            this.f34161j = i2;
            J();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int h(int i2) throws InvalidProtocolBufferException {
            if (i2 < 0) {
                throw InvalidProtocolBufferException.e();
            }
            int i3 = this.f34160i + this.g + i2;
            int i4 = this.f34161j;
            if (i3 > i4) {
                throw InvalidProtocolBufferException.g();
            }
            this.f34161j = i3;
            J();
            return i4;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final boolean i() {
            return H() != 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final ByteString j() throws IOException {
            int iG = G();
            int i2 = this.f34157e;
            int i3 = this.g;
            int i4 = i2 - i3;
            byte[] bArr = this.d;
            if (iG <= i4 && iG > 0) {
                ByteString byteStringH = ByteString.h(i3, iG, bArr);
                this.g += iG;
                return byteStringH;
            }
            if (iG == 0) {
                return ByteString.f34141c;
            }
            byte[] bArrC = C(iG);
            if (bArrC != null) {
                return ByteString.h(0, bArrC.length, bArrC);
            }
            int i5 = this.g;
            int i6 = this.f34157e;
            int length = i6 - i5;
            this.f34160i += i6;
            this.g = 0;
            this.f34157e = 0;
            ArrayList<byte[]> arrayListD = D(iG - length);
            byte[] bArr2 = new byte[iG];
            System.arraycopy(bArr, i5, bArr2, 0, length);
            for (byte[] bArr3 : arrayListD) {
                System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
                length += bArr3.length;
            }
            ByteString byteString = ByteString.f34141c;
            return new ByteString.LiteralByteString(bArr2);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final double k() {
            return Double.longBitsToDouble(F());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int l() {
            return G();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int m() {
            return E();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long n() {
            return F();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final float o() {
            return Float.intBitsToFloat(E());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int p() {
            return G();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long q() {
            return H();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int r() {
            return E();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long s() {
            return F();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int t() {
            return CodedInputStream.b(G());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long u() {
            return CodedInputStream.c(H());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final String v() throws InvalidProtocolBufferException {
            int iG = G();
            byte[] bArr = this.d;
            if (iG > 0) {
                int i2 = this.f34157e;
                int i3 = this.g;
                if (iG <= i2 - i3) {
                    String str = new String(bArr, i3, iG, Internal.f34190a);
                    this.g += iG;
                    return str;
                }
            }
            if (iG == 0) {
                return "";
            }
            if (iG > this.f34157e) {
                return new String(B(iG), Internal.f34190a);
            }
            K(iG);
            String str2 = new String(bArr, this.g, iG, Internal.f34190a);
            this.g += iG;
            return str2;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final String w() throws IOException {
            int iG = G();
            int i2 = this.g;
            int i3 = this.f34157e;
            int i4 = i3 - i2;
            byte[] bArrB = this.d;
            if (iG <= i4 && iG > 0) {
                this.g = i2 + iG;
            } else {
                if (iG == 0) {
                    return "";
                }
                i2 = 0;
                if (iG <= i3) {
                    K(iG);
                    this.g = iG;
                } else {
                    bArrB = B(iG);
                }
            }
            return Utf8.f34271a.a(i2, iG, bArrB);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int x() throws InvalidProtocolBufferException {
            if (e()) {
                this.f34159h = 0;
                return 0;
            }
            int iG = G();
            this.f34159h = iG;
            if ((iG >>> 3) != 0) {
                return iG;
            }
            throw InvalidProtocolBufferException.a();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final int y() {
            return G();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.CodedInputStream
        public final long z() {
            return H();
        }
    }

    public static int b(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long c(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static CodedInputStream f(boolean z, int i2, int i3, byte[] bArr) {
        ArrayDecoder arrayDecoder = new ArrayDecoder(bArr, i2, i3, z);
        try {
            arrayDecoder.h(i3);
            return arrayDecoder;
        } catch (InvalidProtocolBufferException e2) {
            lc0.u(e2);
            return null;
        }
    }

    public abstract boolean A(int i2);

    public abstract void a(int i2);

    public abstract int d();

    public abstract boolean e();

    public abstract void g(int i2);

    public abstract int h(int i2);

    public abstract boolean i();

    public abstract ByteString j();

    public abstract double k();

    public abstract int l();

    public abstract int m();

    public abstract long n();

    public abstract float o();

    public abstract int p();

    public abstract long q();

    public abstract int r();

    public abstract long s();

    public abstract int t();

    public abstract long u();

    public abstract String v();

    public abstract String w();

    public abstract int x();

    public abstract int y();

    public abstract long z();
}
