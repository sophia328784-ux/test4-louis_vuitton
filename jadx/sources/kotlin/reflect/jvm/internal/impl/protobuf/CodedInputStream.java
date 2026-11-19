package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.md;
import defpackage.n00;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class CodedInputStream {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f73713c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InputStream f73714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f73715f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f73717i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f73716h = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f73711a = new byte[4096];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f73712b = 0;
    public int d = 0;
    public int g = 0;

    public interface RefillCallback {
    }

    public CodedInputStream(InputStream inputStream) {
        this.f73714e = inputStream;
    }

    public final void a(int i2) throws InvalidProtocolBufferException {
        if (this.f73715f != i2) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final void b() throws InvalidProtocolBufferException {
        if (this.f73717i >= 64) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
    }

    public final int c() {
        int i2 = this.f73716h;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - (this.g + this.d);
    }

    public final void d(int i2) {
        this.f73716h = i2;
        p();
    }

    public final int e(int i2) throws InvalidProtocolBufferException {
        if (i2 < 0) {
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i3 = this.g + this.d + i2;
        int i4 = this.f73716h;
        if (i3 > i4) {
            throw InvalidProtocolBufferException.b();
        }
        this.f73716h = i3;
        p();
        return i4;
    }

    public final ByteString f() {
        int iL = l();
        int i2 = this.f73712b;
        int i3 = this.d;
        if (iL > i2 - i3 || iL <= 0) {
            return iL == 0 ? ByteString.f73706b : new LiteralByteString(i(iL));
        }
        byte[] bArr = new byte[iL];
        System.arraycopy(this.f73711a, i3, bArr, 0, iL);
        LiteralByteString literalByteString = new LiteralByteString(bArr);
        this.d += iL;
        return literalByteString;
    }

    public final int g() {
        return l();
    }

    public final MessageLite h(Parser parser, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        int iL = l();
        b();
        int iE = e(iL);
        this.f73717i++;
        MessageLite messageLite = (MessageLite) parser.a(this, extensionRegistryLite);
        a(0);
        this.f73717i--;
        d(iE);
        return messageLite;
    }

    public final byte[] i(int i2) throws IOException {
        if (i2 <= 0) {
            if (i2 == 0) {
                return Internal.f73742a;
            }
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i3 = this.g;
        int i4 = this.d;
        int i5 = i3 + i4 + i2;
        int i6 = this.f73716h;
        if (i5 > i6) {
            s((i6 - i3) - i4);
            throw InvalidProtocolBufferException.b();
        }
        byte[] bArr = this.f73711a;
        if (i2 < 4096) {
            byte[] bArr2 = new byte[i2];
            int i7 = this.f73712b - i4;
            System.arraycopy(bArr, i4, bArr2, 0, i7);
            this.d = this.f73712b;
            int i8 = i2 - i7;
            if (i8 > 0) {
                q(i8);
            }
            System.arraycopy(bArr, 0, bArr2, i7, i8);
            this.d = i8;
            return bArr2;
        }
        int i9 = this.f73712b;
        this.g = i3 + i9;
        this.d = 0;
        this.f73712b = 0;
        int length = i9 - i4;
        int i10 = i2 - length;
        ArrayList<byte[]> arrayList = new ArrayList();
        while (i10 > 0) {
            int iMin = Math.min(i10, 4096);
            byte[] bArr3 = new byte[iMin];
            int i11 = 0;
            while (i11 < iMin) {
                int i12 = this.f73714e.read(bArr3, i11, iMin - i11);
                if (i12 == -1) {
                    throw InvalidProtocolBufferException.b();
                }
                this.g += i12;
                i11 += i12;
            }
            i10 -= iMin;
            arrayList.add(bArr3);
        }
        byte[] bArr4 = new byte[i2];
        System.arraycopy(bArr, i4, bArr4, 0, length);
        for (byte[] bArr5 : arrayList) {
            System.arraycopy(bArr5, 0, bArr4, length, bArr5.length);
            length += bArr5.length;
        }
        return bArr4;
    }

    public final int j() throws InvalidProtocolBufferException {
        int i2 = this.d;
        if (this.f73712b - i2 < 4) {
            q(4);
            i2 = this.d;
        }
        this.d = i2 + 4;
        byte[] bArr = this.f73711a;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public final long k() throws InvalidProtocolBufferException {
        int i2 = this.d;
        if (this.f73712b - i2 < 8) {
            q(8);
            i2 = this.d;
        }
        this.d = i2 + 8;
        byte[] bArr = this.f73711a;
        return ((((long) bArr[i2 + 1]) & 255) << 8) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48) | ((((long) bArr[i2 + 7]) & 255) << 56);
    }

    public final int l() {
        int i2;
        int i3 = this.d;
        int i4 = this.f73712b;
        if (i4 != i3) {
            int i5 = i3 + 1;
            byte[] bArr = this.f73711a;
            byte b2 = bArr[i3];
            if (b2 >= 0) {
                this.d = i5;
                return b2;
            }
            if (i4 - i5 >= 9) {
                int i6 = i3 + 2;
                int i7 = (bArr[i5] << 7) ^ b2;
                long j2 = i7;
                if (j2 < 0) {
                    i2 = (int) ((-128) ^ j2);
                } else {
                    int i8 = i3 + 3;
                    int i9 = (bArr[i6] << 14) ^ i7;
                    long j3 = i9;
                    if (j3 >= 0) {
                        i2 = (int) (16256 ^ j3);
                    } else {
                        int i10 = i3 + 4;
                        int i11 = i9 ^ (bArr[i8] << 21);
                        long j4 = i11;
                        if (j4 < 0) {
                            i2 = (int) ((-2080896) ^ j4);
                        } else {
                            i8 = i3 + 5;
                            byte b3 = bArr[i10];
                            int i12 = (int) (((long) (i11 ^ (b3 << 28))) ^ 266354560);
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
                this.d = i6;
                return i2;
            }
        }
        return (int) n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
    
        if (r3[r2] < 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m() {
        /*
            r12 = this;
            int r0 = r12.d
            int r1 = r12.f73712b
            if (r1 != r0) goto L8
            goto Lb8
        L8:
            int r2 = r0 + 1
            byte[] r3 = r12.f73711a
            r4 = r3[r0]
            if (r4 < 0) goto L14
            r12.d = r2
            long r0 = (long) r4
            return r0
        L14:
            int r1 = r1 - r2
            r5 = 9
            if (r1 >= r5) goto L1b
            goto Lb8
        L1b:
            int r1 = r0 + 2
            r2 = r3[r2]
            int r2 = r2 << 7
            r2 = r2 ^ r4
            long r4 = (long) r2
            r6 = 0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L2e
            r2 = -128(0xffffffffffffff80, double:NaN)
        L2b:
            long r2 = r2 ^ r4
            goto Lc1
        L2e:
            int r2 = r0 + 3
            r1 = r3[r1]
            int r1 = r1 << 14
            long r8 = (long) r1
            long r4 = r4 ^ r8
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L42
            r0 = 16256(0x3f80, double:8.0315E-320)
        L3c:
            long r0 = r0 ^ r4
            r10 = r0
            r1 = r2
            r2 = r10
            goto Lc1
        L42:
            int r1 = r0 + 4
            r2 = r3[r2]
            int r2 = r2 << 21
            long r8 = (long) r2
            long r4 = r4 ^ r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L52
            r2 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L2b
        L52:
            int r2 = r0 + 5
            r1 = r3[r1]
            long r8 = (long) r1
            r1 = 28
            long r8 = r8 << r1
            long r4 = r4 ^ r8
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L63
            r0 = 266354560(0xfe03f80, double:1.315966377E-315)
            goto L3c
        L63:
            int r1 = r0 + 6
            r2 = r3[r2]
            long r8 = (long) r2
            r2 = 35
            long r8 = r8 << r2
            long r4 = r4 ^ r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L76
            r2 = -34093383808(0xfffffff80fe03f80, double:NaN)
            goto L2b
        L76:
            int r2 = r0 + 7
            r1 = r3[r1]
            long r8 = (long) r1
            r1 = 42
            long r8 = r8 << r1
            long r4 = r4 ^ r8
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 < 0) goto L89
            r0 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L3c
        L89:
            int r1 = r0 + 8
            r2 = r3[r2]
            long r8 = (long) r2
            r2 = 49
            long r8 = r8 << r2
            long r4 = r4 ^ r8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L9c
            r2 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L2b
        L9c:
            int r2 = r0 + 9
            r1 = r3[r1]
            long r8 = (long) r1
            r1 = 56
            long r8 = r8 << r1
            long r4 = r4 ^ r8
            r8 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r4 = r4 ^ r8
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 >= 0) goto Lbf
            int r1 = r0 + 10
            r0 = r3[r2]
            long r2 = (long) r0
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 >= 0) goto Lbd
        Lb8:
            long r0 = r12.n()
            return r0
        Lbd:
            r2 = r4
            goto Lc1
        Lbf:
            r1 = r2
            goto Lbd
        Lc1:
            r12.d = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream.m():long");
    }

    public final long n() throws InvalidProtocolBufferException {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            if (this.d == this.f73712b) {
                q(1);
            }
            int i3 = this.d;
            this.d = i3 + 1;
            byte b2 = this.f73711a[i3];
            j2 |= ((long) (b2 & 127)) << i2;
            if ((b2 & 128) == 0) {
                return j2;
            }
        }
        throw new InvalidProtocolBufferException("CodedInputStream encountered a malformed varint.");
    }

    public final int o() throws InvalidProtocolBufferException {
        if (this.d == this.f73712b && !t(1)) {
            this.f73715f = 0;
            return 0;
        }
        int iL = l();
        this.f73715f = iL;
        if ((iL >>> 3) != 0) {
            return iL;
        }
        throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
    }

    public final void p() {
        int i2 = this.f73712b + this.f73713c;
        this.f73712b = i2;
        int i3 = this.g + i2;
        int i4 = this.f73716h;
        if (i3 <= i4) {
            this.f73713c = 0;
            return;
        }
        int i5 = i3 - i4;
        this.f73713c = i5;
        this.f73712b = i2 - i5;
    }

    public final void q(int i2) throws InvalidProtocolBufferException {
        if (!t(i2)) {
            throw InvalidProtocolBufferException.b();
        }
    }

    public final boolean r(int i2, CodedOutputStream codedOutputStream) throws InvalidProtocolBufferException {
        boolean zR;
        int i3 = i2 & 7;
        if (i3 == 0) {
            long jM = m();
            codedOutputStream.v(i2);
            codedOutputStream.w(jM);
            return true;
        }
        if (i3 == 1) {
            long jK = k();
            codedOutputStream.v(i2);
            codedOutputStream.u(jK);
            return true;
        }
        if (i3 == 2) {
            ByteString byteStringF = f();
            codedOutputStream.v(i2);
            codedOutputStream.v(byteStringF.size());
            codedOutputStream.r(byteStringF);
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw new InvalidProtocolBufferException("Protocol message tag had invalid wire type.");
            }
            int iJ = j();
            codedOutputStream.v(i2);
            codedOutputStream.t(iJ);
            return true;
        }
        codedOutputStream.v(i2);
        do {
            int iO = o();
            if (iO == 0) {
                break;
            }
            b();
            this.f73717i++;
            zR = r(iO, codedOutputStream);
            this.f73717i--;
        } while (zR);
        int i4 = ((i2 >>> 3) << 3) | 4;
        a(i4);
        codedOutputStream.v(i4);
        return true;
    }

    public final void s(int i2) throws InvalidProtocolBufferException {
        int i3 = this.f73712b;
        int i4 = this.d;
        int i5 = i3 - i4;
        if (i2 <= i5 && i2 >= 0) {
            this.d = i4 + i2;
            return;
        }
        if (i2 < 0) {
            throw new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int i6 = this.g;
        int i7 = i6 + i4 + i2;
        int i8 = this.f73716h;
        if (i7 > i8) {
            s((i8 - i6) - i4);
            throw InvalidProtocolBufferException.b();
        }
        this.d = i3;
        q(1);
        while (true) {
            int i9 = i2 - i5;
            int i10 = this.f73712b;
            if (i9 <= i10) {
                this.d = i9;
                return;
            } else {
                i5 += i10;
                this.d = i10;
                q(1);
            }
        }
    }

    public final boolean t(int i2) throws IOException {
        int i3 = this.d;
        int i4 = i3 + i2;
        int i5 = this.f73712b;
        if (i4 <= i5) {
            md.k(n00.m(i2, "refillBuffer() called when ", " bytes were already available in buffer"));
            return false;
        }
        if (this.g + i3 + i2 <= this.f73716h) {
            byte[] bArr = this.f73711a;
            if (i3 > 0) {
                if (i5 > i3) {
                    System.arraycopy(bArr, i3, bArr, 0, i5 - i3);
                }
                this.g += i3;
                this.f73712b -= i3;
                this.d = 0;
            }
            int i6 = this.f73712b;
            int i7 = this.f73714e.read(bArr, i6, bArr.length - i6);
            if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                md.k(n00.m(i7, "InputStream#read(byte[]) returned invalid result: ", "\nThe InputStream implementation is buggy."));
                return false;
            }
            if (i7 > 0) {
                this.f73712b += i7;
                if ((this.g + i2) - 67108864 > 0) {
                    throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
                p();
                if (this.f73712b >= i2) {
                    return true;
                }
                return t(i2);
            }
        }
        return false;
    }
}
