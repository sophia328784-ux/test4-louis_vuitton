package org.spongycastle.asn1;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import io.jsonwebtoken.JwtParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1ObjectIdentifier extends ASN1Primitive {
    public static final ConcurrentHashMap d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f77710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f77711c;

    public static class OidHandle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f77712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f77713b;

        public OidHandle(byte[] bArr) {
            this.f77712a = Arrays.g(bArr);
            this.f77713b = bArr;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof OidHandle)) {
                return false;
            }
            return Arrays.a(this.f77713b, ((OidHandle) obj).f77713b);
        }

        public final int hashCode() {
            return this.f77712a;
        }
    }

    public ASN1ObjectIdentifier(byte[] bArr) {
        boolean z;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = true;
        long j2 = 0;
        BigInteger bigIntegerShiftLeft = null;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            byte b2 = bArr[i2];
            if (j2 <= 72057594037927808L) {
                z = z2;
                long j3 = j2 + ((long) (b2 & 127));
                if ((b2 & 128) == 0) {
                    if (z) {
                        if (j3 < 40) {
                            stringBuffer.append('0');
                        } else if (j3 < 80) {
                            stringBuffer.append('1');
                            j3 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j3 -= 80;
                        }
                        z2 = false;
                    } else {
                        z2 = z;
                    }
                    stringBuffer.append(JwtParser.SEPARATOR_CHAR);
                    stringBuffer.append(j3);
                    j2 = 0;
                } else {
                    j2 = j3 << 7;
                    z2 = z;
                }
            } else {
                z = z2;
                BigInteger bigIntegerOr = (bigIntegerShiftLeft == null ? BigInteger.valueOf(j2) : bigIntegerShiftLeft).or(BigInteger.valueOf(b2 & 127));
                if ((b2 & 128) == 0) {
                    if (z) {
                        stringBuffer.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z2 = false;
                    } else {
                        z2 = z;
                    }
                    stringBuffer.append(JwtParser.SEPARATOR_CHAR);
                    stringBuffer.append(bigIntegerOr);
                    j2 = 0;
                    bigIntegerShiftLeft = null;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                    z2 = z;
                }
            }
        }
        this.f77710b = stringBuffer.toString();
        this.f77711c = Arrays.c(bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ASN1ObjectIdentifier u(ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable == 0 || (aSN1Encodable instanceof ASN1ObjectIdentifier)) {
            return (ASN1ObjectIdentifier) aSN1Encodable;
        }
        if (aSN1Encodable.toASN1Primitive() instanceof ASN1ObjectIdentifier) {
            return (ASN1ObjectIdentifier) aSN1Encodable.toASN1Primitive();
        }
        if (!(aSN1Encodable instanceof byte[])) {
            md.n("illegal object in getInstance: ".concat(aSN1Encodable.getClass().getName()));
            return null;
        }
        try {
            return (ASN1ObjectIdentifier) ASN1Primitive.n((byte[]) aSN1Encodable);
        } catch (IOException e2) {
            md.n(n00.o(e2, new StringBuilder("failed to construct object identifier from byte[]: ")));
            return null;
        }
    }

    public static boolean v(int i2, String str) {
        boolean z;
        char cCharAt;
        int length = str.length();
        do {
            z = false;
            while (true) {
                length--;
                if (length < i2) {
                    return z;
                }
                cCharAt = str.charAt(length);
                if ('0' > cCharAt || cCharAt > '9') {
                    break;
                }
                z = true;
            }
            if (cCharAt != '.') {
                break;
            }
        } while (z);
        return false;
    }

    public static void x(ByteArrayOutputStream byteArrayOutputStream, long j2) {
        byte[] bArr = new byte[9];
        int i2 = 8;
        bArr[8] = (byte) (((int) j2) & CertificateBody.profileType);
        while (j2 >= 128) {
            j2 >>= 7;
            i2--;
            bArr[i2] = (byte) ((((int) j2) & CertificateBody.profileType) | 128);
        }
        byteArrayOutputStream.write(bArr, i2, 9 - i2);
    }

    public static void z(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int iBitLength = (bigInteger.bitLength() + 6) / 7;
        if (iBitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[iBitLength];
        int i2 = iBitLength - 1;
        for (int i3 = i2; i3 >= 0; i3--) {
            bArr[i3] = (byte) ((bigInteger.intValue() & CertificateBody.profileType) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i2] = (byte) (bArr[i2] & 127);
        byteArrayOutputStream.write(bArr, 0, iBitLength);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public final int hashCode() {
        return this.f77710b.hashCode();
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean i(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive == this) {
            return true;
        }
        if (!(aSN1Primitive instanceof ASN1ObjectIdentifier)) {
            return false;
        }
        return this.f77710b.equals(((ASN1ObjectIdentifier) aSN1Primitive).f77710b);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final void l(ASN1OutputStream aSN1OutputStream) throws IOException {
        byte[] bArrT = t();
        aSN1OutputStream.c(6);
        aSN1OutputStream.f(bArrT.length);
        aSN1OutputStream.f77715a.write(bArrT);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final int m() {
        int length = t().length;
        return StreamUtil.a(length) + 1 + length;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public final boolean o() {
        return false;
    }

    public final void r(String str) {
        new ASN1ObjectIdentifier(str, this);
    }

    public final void s(ByteArrayOutputStream byteArrayOutputStream) {
        OIDTokenizer oIDTokenizer = new OIDTokenizer(this.f77710b);
        int i2 = Integer.parseInt(oIDTokenizer.a()) * 40;
        String strA = oIDTokenizer.a();
        if (strA.length() <= 18) {
            x(byteArrayOutputStream, Long.parseLong(strA) + ((long) i2));
        } else {
            z(byteArrayOutputStream, new BigInteger(strA).add(BigInteger.valueOf(i2)));
        }
        while (oIDTokenizer.f77776b != -1) {
            String strA2 = oIDTokenizer.a();
            if (strA2.length() <= 18) {
                x(byteArrayOutputStream, Long.parseLong(strA2));
            } else {
                z(byteArrayOutputStream, new BigInteger(strA2));
            }
        }
    }

    public final synchronized byte[] t() {
        try {
            if (this.f77711c == null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                s(byteArrayOutputStream);
                this.f77711c = byteArrayOutputStream.toByteArray();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f77711c;
    }

    public final String toString() {
        return this.f77710b;
    }

    public ASN1ObjectIdentifier(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (v(0, str)) {
            this.f77710b = d21.p(new StringBuilder(), aSN1ObjectIdentifier.f77710b, FileUtils.HIDDEN_PREFIX, str);
        } else {
            md.n(fc.h("string ", str, " not a valid OID branch"));
            throw null;
        }
    }

    public ASN1ObjectIdentifier(String str) {
        char cCharAt;
        if (str != null) {
            boolean zV = false;
            if (str.length() >= 3 && str.charAt(1) == '.' && (cCharAt = str.charAt(0)) >= '0' && cCharAt <= '2') {
                zV = v(2, str);
            }
            if (zV) {
                this.f77710b = str;
                return;
            } else {
                md.n(fc.h("string ", str, " not an OID"));
                throw null;
            }
        }
        md.n("'identifier' cannot be null");
        throw null;
    }
}
