package org.bouncycastle.pqc.crypto.xmss;

import defpackage.d21;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSMTParameters {
    private static final Map<Integer, XMSSMTParameters> paramsLookupTable;
    private final int height;
    private final int layers;
    private final XMSSOid oid;
    private final XMSSParameters xmssParams;

    static {
        HashMap map = new HashMap();
        Integer numValueOf = Integers.valueOf(1);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_sha256;
        map.put(numValueOf, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier));
        d21.v(20, 4, aSN1ObjectIdentifier, map, Integers.valueOf(2));
        d21.v(40, 2, aSN1ObjectIdentifier, map, Integers.valueOf(3));
        d21.v(40, 4, aSN1ObjectIdentifier, map, Integers.valueOf(4));
        d21.v(40, 8, aSN1ObjectIdentifier, map, Integers.valueOf(5));
        d21.v(60, 3, aSN1ObjectIdentifier, map, Integers.valueOf(6));
        d21.v(60, 6, aSN1ObjectIdentifier, map, Integers.valueOf(7));
        d21.v(60, 12, aSN1ObjectIdentifier, map, Integers.valueOf(8));
        Integer numValueOf2 = Integers.valueOf(9);
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_sha512;
        map.put(numValueOf2, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier2));
        d21.v(20, 4, aSN1ObjectIdentifier2, map, Integers.valueOf(10));
        d21.v(40, 2, aSN1ObjectIdentifier2, map, Integers.valueOf(11));
        d21.v(40, 4, aSN1ObjectIdentifier2, map, Integers.valueOf(12));
        d21.v(40, 8, aSN1ObjectIdentifier2, map, Integers.valueOf(13));
        d21.v(60, 3, aSN1ObjectIdentifier2, map, Integers.valueOf(14));
        d21.v(60, 6, aSN1ObjectIdentifier2, map, Integers.valueOf(15));
        d21.v(60, 12, aSN1ObjectIdentifier2, map, Integers.valueOf(16));
        Integer numValueOf3 = Integers.valueOf(17);
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_shake128;
        map.put(numValueOf3, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier3));
        d21.v(20, 4, aSN1ObjectIdentifier3, map, Integers.valueOf(18));
        d21.v(40, 2, aSN1ObjectIdentifier3, map, Integers.valueOf(19));
        d21.v(40, 4, aSN1ObjectIdentifier3, map, Integers.valueOf(20));
        d21.v(40, 8, aSN1ObjectIdentifier3, map, Integers.valueOf(21));
        d21.v(60, 3, aSN1ObjectIdentifier3, map, Integers.valueOf(22));
        d21.v(60, 6, aSN1ObjectIdentifier3, map, Integers.valueOf(23));
        d21.v(60, 12, aSN1ObjectIdentifier3, map, Integers.valueOf(24));
        Integer numValueOf4 = Integers.valueOf(25);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_shake256;
        map.put(numValueOf4, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier4));
        d21.v(20, 4, aSN1ObjectIdentifier4, map, Integers.valueOf(26));
        d21.v(40, 2, aSN1ObjectIdentifier4, map, Integers.valueOf(27));
        d21.v(40, 4, aSN1ObjectIdentifier4, map, Integers.valueOf(28));
        d21.v(40, 8, aSN1ObjectIdentifier4, map, Integers.valueOf(29));
        d21.v(60, 3, aSN1ObjectIdentifier4, map, Integers.valueOf(30));
        d21.v(60, 6, aSN1ObjectIdentifier4, map, Integers.valueOf(31));
        d21.v(60, 12, aSN1ObjectIdentifier4, map, Integers.valueOf(32));
        paramsLookupTable = Collections.unmodifiableMap(map);
    }

    public XMSSMTParameters(int i2, int i3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.height = i2;
        this.layers = i3;
        this.xmssParams = new XMSSParameters(xmssTreeHeight(i2, i3), aSN1ObjectIdentifier);
        this.oid = DefaultXMSSMTOid.lookup(getTreeDigest(), getTreeDigestSize(), getWinternitzParameter(), getLen(), getHeight(), i3);
    }

    public static XMSSMTParameters lookupByOID(int i2) {
        return paramsLookupTable.get(Integers.valueOf(i2));
    }

    private static int xmssTreeHeight(int i2, int i3) throws IllegalArgumentException {
        String str;
        if (i2 < 2) {
            str = "totalHeight must be > 1";
        } else if (i2 % i3 == 0) {
            int i4 = i2 / i3;
            if (i4 != 1) {
                return i4;
            }
            str = "height / layers must be greater than 1";
        } else {
            str = "layers must divide totalHeight without remainder";
        }
        md.n(str);
        return 0;
    }

    public int getHeight() {
        return this.height;
    }

    public int getLayers() {
        return this.layers;
    }

    public int getLen() {
        return this.xmssParams.getLen();
    }

    public XMSSOid getOid() {
        return this.oid;
    }

    public String getTreeDigest() {
        return this.xmssParams.getTreeDigest();
    }

    public ASN1ObjectIdentifier getTreeDigestOID() {
        return this.xmssParams.getTreeDigestOID();
    }

    public int getTreeDigestSize() {
        return this.xmssParams.getTreeDigestSize();
    }

    public WOTSPlus getWOTSPlus() {
        return this.xmssParams.getWOTSPlus();
    }

    public int getWinternitzParameter() {
        return this.xmssParams.getWinternitzParameter();
    }

    public XMSSParameters getXMSSParameters() {
        return this.xmssParams;
    }

    public XMSSMTParameters(int i2, int i3, Digest digest) {
        this(i2, i3, DigestUtil.getDigestOID(digest.getAlgorithmName()));
    }
}
