package org.spongycastle.asn1;

import defpackage.az;
import defpackage.d20;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes5.dex */
public class ASN1InputStream extends FilterInputStream implements BERTags {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f77707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f77708c;
    public final byte[][] d;

    public ASN1InputStream(InputStream inputStream, int i2, boolean z) {
        super(inputStream);
        this.f77707b = i2;
        this.f77708c = z;
        this.d = new byte[11][];
    }

    public static ASN1EncodableVector c(DefiniteLengthInputStream definiteLengthInputStream) {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(definiteLengthInputStream);
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        while (true) {
            ASN1Primitive aSN1PrimitiveJ = aSN1InputStream.j();
            if (aSN1PrimitiveJ == null) {
                return aSN1EncodableVector;
            }
            aSN1EncodableVector.a(aSN1PrimitiveJ);
        }
    }

    public static ASN1Primitive e(int i2, DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        int i3;
        if (i2 == 10) {
            byte[] bArrG = g(definiteLengthInputStream, bArr);
            if (bArrG.length > 1) {
                return new ASN1Enumerated(bArrG);
            }
            if (bArrG.length == 0) {
                md.n("ENUMERATED has zero length");
                return null;
            }
            int i4 = bArrG[0] & 255;
            if (i4 >= 12) {
                return new ASN1Enumerated(Arrays.c(bArrG));
            }
            ASN1Enumerated[] aSN1EnumeratedArr = ASN1Enumerated.f77703c;
            ASN1Enumerated aSN1Enumerated = aSN1EnumeratedArr[i4];
            if (aSN1Enumerated != null) {
                return aSN1Enumerated;
            }
            ASN1Enumerated aSN1Enumerated2 = new ASN1Enumerated(Arrays.c(bArrG));
            aSN1EnumeratedArr[i4] = aSN1Enumerated2;
            return aSN1Enumerated2;
        }
        if (i2 == 12) {
            return new DERUTF8String(definiteLengthInputStream.k());
        }
        if (i2 == 30) {
            int i5 = definiteLengthInputStream.f77767e / 2;
            char[] cArr = new char[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = definiteLengthInputStream.read();
                if (i7 < 0 || (i3 = definiteLengthInputStream.read()) < 0) {
                    break;
                }
                cArr[i6] = (char) ((i7 << 8) | (i3 & 255));
            }
            return new DERBMPString(cArr);
        }
        switch (i2) {
            case 1:
                byte[] bArrG2 = g(definiteLengthInputStream, bArr);
                byte[] bArr2 = ASN1Boolean.f77698c;
                if (bArrG2.length != 1) {
                    md.n("BOOLEAN value should have 1 byte in it");
                    return null;
                }
                byte b2 = bArrG2[0];
                if (b2 == 0) {
                    return ASN1Boolean.f77699e;
                }
                return (b2 & 255) == 255 ? ASN1Boolean.f77700f : new ASN1Boolean(bArrG2);
            case 2:
                return new ASN1Integer(definiteLengthInputStream.k(), false);
            case 3:
                int i8 = definiteLengthInputStream.f77767e;
                if (i8 < 1) {
                    md.n("truncated BIT STRING detected");
                    return null;
                }
                int i9 = definiteLengthInputStream.read();
                int i10 = i8 - 1;
                byte[] bArr3 = new byte[i10];
                if (i10 != 0) {
                    if (Streams.a(definiteLengthInputStream, bArr3) != i10) {
                        d20.g("EOF encountered in middle of BIT STRING");
                        return null;
                    }
                    if (i9 > 0 && i9 < 8) {
                        byte b3 = bArr3[i8 - 2];
                        if (b3 != ((byte) ((255 << i9) & b3))) {
                            return new DLBitString(bArr3, i9);
                        }
                    }
                }
                return new DERBitString(bArr3, i9);
            case 4:
                return new DEROctetString(definiteLengthInputStream.k());
            case 5:
                return DERNull.f77751b;
            case 6:
                byte[] bArrG3 = g(definiteLengthInputStream, bArr);
                ConcurrentHashMap concurrentHashMap = ASN1ObjectIdentifier.d;
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) ASN1ObjectIdentifier.d.get(new ASN1ObjectIdentifier.OidHandle(bArrG3));
                return aSN1ObjectIdentifier == null ? new ASN1ObjectIdentifier(bArrG3) : aSN1ObjectIdentifier;
            default:
                switch (i2) {
                    case 18:
                        return new DERNumericString(definiteLengthInputStream.k());
                    case 19:
                        return new DERPrintableString(definiteLengthInputStream.k());
                    case 20:
                        return new DERT61String(definiteLengthInputStream.k());
                    case 21:
                        return new DERVideotexString(definiteLengthInputStream.k());
                    case 22:
                        return new DERIA5String(definiteLengthInputStream.k());
                    case 23:
                        byte[] bArrK = definiteLengthInputStream.k();
                        ASN1UTCTime aSN1UTCTime = new ASN1UTCTime();
                        aSN1UTCTime.f77726b = bArrK;
                        return aSN1UTCTime;
                    case 24:
                        byte[] bArrK2 = definiteLengthInputStream.k();
                        ASN1GeneralizedTime aSN1GeneralizedTime = new ASN1GeneralizedTime();
                        aSN1GeneralizedTime.f77706b = bArrK2;
                        return aSN1GeneralizedTime;
                    case 25:
                        return new DERGraphicString(definiteLengthInputStream.k());
                    case 26:
                        return new DERVisibleString(definiteLengthInputStream.k());
                    case 27:
                        return new DERGeneralString(definiteLengthInputStream.k());
                    case 28:
                        return new DERUniversalString(definiteLengthInputStream.k());
                    default:
                        az.o(n00.m(i2, "unknown tag ", " encountered"));
                        return null;
                }
        }
    }

    public static byte[] g(DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        int i2 = definiteLengthInputStream.f77767e;
        if (i2 >= bArr.length) {
            return definiteLengthInputStream.k();
        }
        byte[] bArr2 = bArr[i2];
        if (bArr2 == null) {
            bArr2 = new byte[i2];
            bArr[i2] = bArr2;
        }
        Streams.a(definiteLengthInputStream, bArr2);
        return bArr2;
    }

    public static int h(InputStream inputStream, int i2) throws IOException {
        int i3 = inputStream.read();
        if (i3 < 0) {
            d20.g("EOF found when length expected");
            return 0;
        }
        if (i3 == 128) {
            return -1;
        }
        if (i3 <= 127) {
            return i3;
        }
        int i4 = i3 & CertificateBody.profileType;
        if (i4 > 4) {
            az.o(pq0.k(i4, "DER length more than 4 bytes: "));
            return 0;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = inputStream.read();
            if (i7 < 0) {
                d20.g("EOF found reading length");
                return 0;
            }
            i5 = (i5 << 8) + i7;
        }
        if (i5 < 0) {
            az.o("corrupted stream - negative length found");
            return 0;
        }
        if (i5 < i2) {
            return i5;
        }
        az.o("corrupted stream - out of bounds length found");
        return 0;
    }

    public static int k(InputStream inputStream, int i2) throws IOException {
        int i3 = i2 & 31;
        if (i3 != 31) {
            return i3;
        }
        int i4 = inputStream.read();
        if ((i4 & CertificateBody.profileType) == 0) {
            az.o("corrupted stream - invalid high tag number found");
            return 0;
        }
        int i5 = 0;
        while (i4 >= 0 && (i4 & 128) != 0) {
            i5 = ((i4 & CertificateBody.profileType) | i5) << 7;
            i4 = inputStream.read();
        }
        if (i4 >= 0) {
            return (i4 & CertificateBody.profileType) | i5;
        }
        d20.g("EOF found inside tag value.");
        return 0;
    }

    public final ASN1Primitive d(int i2, int i3, int i4) throws IOException {
        boolean z = (i2 & 32) != 0;
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this, i4);
        if ((i2 & 64) != 0) {
            return new DERApplicationSpecific(i3, definiteLengthInputStream.k(), z);
        }
        if ((i2 & 128) != 0) {
            return new ASN1StreamParser(definiteLengthInputStream).b(i3, z);
        }
        if (!z) {
            return e(i3, definiteLengthInputStream, this.d);
        }
        if (i3 == 4) {
            ASN1EncodableVector aSN1EncodableVectorC = c(definiteLengthInputStream);
            int size = aSN1EncodableVectorC.f77702a.size();
            ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[size];
            for (int i5 = 0; i5 != size; i5++) {
                aSN1OctetStringArr[i5] = (ASN1OctetString) aSN1EncodableVectorC.b(i5);
            }
            return new BEROctetString(aSN1OctetStringArr);
        }
        if (i3 == 8) {
            return new DERExternal(c(definiteLengthInputStream));
        }
        if (i3 != 16) {
            if (i3 != 17) {
                az.o(n00.m(i3, "unknown tag ", " encountered"));
                return null;
            }
            ASN1EncodableVector aSN1EncodableVectorC2 = c(definiteLengthInputStream);
            DERSequence dERSequence = DERFactory.f77746a;
            return aSN1EncodableVectorC2.f77702a.size() < 1 ? DERFactory.f77747b : new DLSet(aSN1EncodableVectorC2);
        }
        if (!this.f77708c) {
            ASN1EncodableVector aSN1EncodableVectorC3 = c(definiteLengthInputStream);
            DERSequence dERSequence2 = DERFactory.f77746a;
            return aSN1EncodableVectorC3.f77702a.size() < 1 ? DERFactory.f77746a : new DLSequence(aSN1EncodableVectorC3);
        }
        byte[] bArrK = definiteLengthInputStream.k();
        LazyEncodedSequence lazyEncodedSequence = new LazyEncodedSequence();
        lazyEncodedSequence.f77772c = bArrK;
        return lazyEncodedSequence;
    }

    public final ASN1Primitive j() {
        int i2 = read();
        if (i2 <= 0) {
            if (i2 != 0) {
                return null;
            }
            az.o("unexpected end-of-contents marker");
            return null;
        }
        int iK = k(this, i2);
        boolean z = (i2 & 32) != 0;
        int i3 = this.f77707b;
        int iH = h(this, i3);
        if (iH >= 0) {
            try {
                return d(i2, iK, iH);
            } catch (IllegalArgumentException e2) {
                throw new ASN1Exception("corrupted stream detected", e2);
            }
        }
        if (!z) {
            az.o("indefinite-length primitive encoding encountered");
            return null;
        }
        ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this, i3), i3);
        if ((i2 & 64) != 0) {
            return new BERApplicationSpecificParser(iK, aSN1StreamParser).getLoadedObject();
        }
        if ((i2 & 128) != 0) {
            return new BERTaggedObjectParser(true, iK, aSN1StreamParser).getLoadedObject();
        }
        if (iK == 4) {
            return new BEROctetStringParser(aSN1StreamParser).getLoadedObject();
        }
        if (iK == 8) {
            return new DERExternalParser(aSN1StreamParser).getLoadedObject();
        }
        if (iK == 16) {
            return new BERSequenceParser(aSN1StreamParser).getLoadedObject();
        }
        if (iK == 17) {
            return new BERSetParser(aSN1StreamParser).getLoadedObject();
        }
        az.o("unknown BER object encountered");
        return null;
    }

    public ASN1InputStream(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public ASN1InputStream(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }

    public ASN1InputStream(InputStream inputStream, int i2) {
        this(inputStream, i2, false);
    }

    public ASN1InputStream(InputStream inputStream, boolean z) {
        this(inputStream, StreamUtil.c(inputStream), z);
    }

    public ASN1InputStream(InputStream inputStream) {
        this(inputStream, StreamUtil.c(inputStream));
    }
}
