package org.bouncycastle.asn1;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ASN1ObjectIdentifier extends ASN1Primitive {
    private static final long LONG_LIMIT = 72057594037927808L;
    private static final int MAX_CONTENTS_LENGTH = 4096;
    private static final int MAX_IDENTIFIER_LENGTH = 16385;
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1ObjectIdentifier.class, 6) { // from class: org.bouncycastle.asn1.ASN1ObjectIdentifier.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1ObjectIdentifier.createPrimitive(dEROctetString.getOctets(), false);
        }
    };
    private static final ConcurrentMap<OidHandle, ASN1ObjectIdentifier> pool = new ConcurrentHashMap();
    private final byte[] contents;
    private String identifier;

    public static class OidHandle {
        private final byte[] contents;
        private final int key;

        public OidHandle(byte[] bArr) {
            this.key = Arrays.hashCode(bArr);
            this.contents = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof OidHandle) {
                return Arrays.areEqual(this.contents, ((OidHandle) obj).contents);
            }
            return false;
        }

        public int hashCode() {
            return this.key;
        }
    }

    public ASN1ObjectIdentifier(String str) {
        checkIdentifier(str);
        byte[] identifier = parseIdentifier(str);
        checkContentsLength(identifier.length);
        this.contents = identifier;
        this.identifier = str;
    }

    public static void checkContentsLength(int i2) {
        if (i2 <= 4096) {
            return;
        }
        md.n("exceeded OID contents length limit");
    }

    public static void checkIdentifier(String str) {
        if (str == null) {
            r81.d("'identifier' cannot be null");
        } else if (str.length() > MAX_IDENTIFIER_LENGTH) {
            md.n("exceeded OID contents length limit");
        } else {
            if (isValidIdentifier(str)) {
                return;
            }
            md.n(fc.h("string ", str, " not a valid OID"));
        }
    }

    public static ASN1ObjectIdentifier createPrimitive(byte[] bArr, boolean z) {
        checkContentsLength(bArr.length);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = pool.get(new OidHandle(bArr));
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        if (!ASN1RelativeOID.isValidContents(bArr)) {
            md.n("invalid OID contents");
            return null;
        }
        if (z) {
            bArr = Arrays.clone(bArr);
        }
        return new ASN1ObjectIdentifier(bArr, null);
    }

    public static ASN1ObjectIdentifier fromContents(byte[] bArr) {
        if (bArr != null) {
            return createPrimitive(bArr, true);
        }
        r81.d("'contents' cannot be null");
        return null;
    }

    public static ASN1ObjectIdentifier getInstance(Object obj) {
        String strO;
        if (obj == null || (obj instanceof ASN1ObjectIdentifier)) {
            return (ASN1ObjectIdentifier) obj;
        }
        if (!(obj instanceof ASN1Encodable)) {
            if (obj instanceof byte[]) {
                try {
                    return (ASN1ObjectIdentifier) TYPE.fromByteArray((byte[]) obj);
                } catch (IOException e2) {
                    strO = n00.o(e2, new StringBuilder("failed to construct object identifier from byte[]: "));
                }
            }
            md.n(strO);
            return null;
        }
        ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            return (ASN1ObjectIdentifier) aSN1Primitive;
        }
        strO = o60.l(obj, "illegal object in getInstance: ");
        md.n(strO);
        return null;
    }

    private static boolean isValidIdentifier(String str) {
        char cCharAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2' || !ASN1RelativeOID.isValidIdentifier(str, 2)) {
            return false;
        }
        if (cCharAt == '2' || str.length() == 3 || str.charAt(3) == '.') {
            return true;
        }
        return (str.length() == 4 || str.charAt(4) == '.') && str.charAt(2) < '4';
    }

    private static String parseContents(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        BigInteger bigIntegerShiftLeft = null;
        long j2 = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            byte b2 = bArr[i2];
            if (j2 <= LONG_LIMIT) {
                long j3 = j2 + ((long) (b2 & 127));
                if ((b2 & 128) == 0) {
                    if (z) {
                        if (j3 < 40) {
                            sb.append('0');
                        } else if (j3 < 80) {
                            sb.append('1');
                            j3 -= 40;
                        } else {
                            sb.append('2');
                            j3 -= 80;
                        }
                        z = false;
                    }
                    sb.append(JwtParser.SEPARATOR_CHAR);
                    sb.append(j3);
                    j2 = 0;
                } else {
                    j2 = j3 << 7;
                }
            } else {
                if (bigIntegerShiftLeft == null) {
                    bigIntegerShiftLeft = BigInteger.valueOf(j2);
                }
                BigInteger bigIntegerOr = bigIntegerShiftLeft.or(BigInteger.valueOf(b2 & 127));
                if ((b2 & 128) == 0) {
                    if (z) {
                        sb.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z = false;
                    }
                    sb.append(JwtParser.SEPARATOR_CHAR);
                    sb.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j2 = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0050 A[LOOP:0: B:7:0x003b->B:12:0x0050, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:16:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0041  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004b -> B:5:0x0026). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    private static byte[] parseIdentifier(java.lang.String r7) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            org.bouncycastle.asn1.OIDTokenizer r1 = new org.bouncycastle.asn1.OIDTokenizer
            r1.<init>(r7)
            java.lang.String r7 = r1.nextToken()
            int r7 = java.lang.Integer.parseInt(r7)
            int r7 = r7 * 40
            java.lang.String r2 = r1.nextToken()
            int r3 = r2.length()
            r4 = 18
            if (r3 > r4) goto L2a
            long r5 = (long) r7
            long r2 = java.lang.Long.parseLong(r2)
            long r2 = r2 + r5
        L26:
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r2)
            goto L3b
        L2a:
            java.math.BigInteger r3 = new java.math.BigInteger
            r3.<init>(r2)
            long r5 = (long) r7
            java.math.BigInteger r7 = java.math.BigInteger.valueOf(r5)
            java.math.BigInteger r7 = r3.add(r7)
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r7)
        L3b:
            boolean r7 = r1.hasMoreTokens()
            if (r7 == 0) goto L59
            java.lang.String r7 = r1.nextToken()
            int r2 = r7.length()
            if (r2 > r4) goto L50
            long r2 = java.lang.Long.parseLong(r7)
            goto L26
        L50:
            java.math.BigInteger r2 = new java.math.BigInteger
            r2.<init>(r7)
            org.bouncycastle.asn1.ASN1RelativeOID.writeField(r0, r2)
            goto L3b
        L59:
            byte[] r7 = r0.toByteArray()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.ASN1ObjectIdentifier.parseIdentifier(java.lang.String):byte[]");
    }

    public static ASN1ObjectIdentifier tryFromID(String str) {
        if (str == null) {
            r81.d("'identifier' cannot be null");
            return null;
        }
        if (str.length() > MAX_IDENTIFIER_LENGTH || !isValidIdentifier(str)) {
            return null;
        }
        byte[] identifier = parseIdentifier(str);
        if (identifier.length <= 4096) {
            return new ASN1ObjectIdentifier(identifier, str);
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (this == aSN1Primitive) {
            return true;
        }
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            return Arrays.areEqual(this.contents, ((ASN1ObjectIdentifier) aSN1Primitive).contents);
        }
        return false;
    }

    public ASN1ObjectIdentifier branch(String str) {
        ASN1RelativeOID.checkIdentifier(str);
        byte[] identifier = ASN1RelativeOID.parseIdentifier(str);
        checkContentsLength(this.contents.length + identifier.length);
        return new ASN1ObjectIdentifier(Arrays.concatenate(this.contents, identifier), getId() + FileUtils.HIDDEN_PREFIX + str);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z) throws IOException {
        aSN1OutputStream.writeEncodingDL(z, 6, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z) {
        return ASN1OutputStream.getLengthOfEncodingDL(z, this.contents.length);
    }

    public synchronized String getId() {
        try {
            if (this.identifier == null) {
                this.identifier = parseContents(this.contents);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.identifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        return Arrays.hashCode(this.contents);
    }

    public ASN1ObjectIdentifier intern() {
        OidHandle oidHandle = new OidHandle(this.contents);
        ConcurrentMap<OidHandle, ASN1ObjectIdentifier> concurrentMap = pool;
        ASN1ObjectIdentifier aSN1ObjectIdentifier = concurrentMap.get(oidHandle);
        if (aSN1ObjectIdentifier != null) {
            return aSN1ObjectIdentifier;
        }
        synchronized (concurrentMap) {
            try {
                if (concurrentMap.containsKey(oidHandle)) {
                    this = concurrentMap.get(oidHandle);
                } else {
                    concurrentMap.put(oidHandle, this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    public boolean on(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        byte[] bArr = this.contents;
        byte[] bArr2 = aSN1ObjectIdentifier.contents;
        int length = bArr2.length;
        return bArr.length > length && Arrays.areEqual(bArr, 0, length, bArr2, 0, length);
    }

    public String toString() {
        return getId();
    }

    private ASN1ObjectIdentifier(byte[] bArr, String str) {
        this.contents = bArr;
        this.identifier = str;
    }

    public static ASN1ObjectIdentifier getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (!z && !aSN1TaggedObject.isParsed() && aSN1TaggedObject.hasContextTag()) {
            ASN1Primitive aSN1Primitive = aSN1TaggedObject.getBaseObject().toASN1Primitive();
            if (!(aSN1Primitive instanceof ASN1ObjectIdentifier)) {
                return fromContents(ASN1OctetString.getInstance(aSN1Primitive).getOctets());
            }
        }
        return (ASN1ObjectIdentifier) TYPE.getContextInstance(aSN1TaggedObject, z);
    }
}
