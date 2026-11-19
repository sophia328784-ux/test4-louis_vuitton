package org.bouncycastle.pqc.crypto.xmss;

import defpackage.md;
import defpackage.r81;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
public final class XMSSParameters {
    private static final Map<Integer, XMSSParameters> paramsLookupTable;
    private final int height;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f77681k;
    private final XMSSOid oid;
    private final String treeDigest;
    private final ASN1ObjectIdentifier treeDigestOID;
    private final int treeDigestSize;
    private final int winternitzParameter;
    private final WOTSPlusParameters wotsPlusParams;

    static {
        HashMap map = new HashMap();
        Integer numValueOf = Integers.valueOf(1);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_sha256;
        map.put(numValueOf, new XMSSParameters(10, aSN1ObjectIdentifier));
        map.put(Integers.valueOf(2), new XMSSParameters(16, aSN1ObjectIdentifier));
        map.put(Integers.valueOf(3), new XMSSParameters(20, aSN1ObjectIdentifier));
        Integer numValueOf2 = Integers.valueOf(4);
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_sha512;
        map.put(numValueOf2, new XMSSParameters(10, aSN1ObjectIdentifier2));
        map.put(Integers.valueOf(5), new XMSSParameters(16, aSN1ObjectIdentifier2));
        map.put(Integers.valueOf(6), new XMSSParameters(20, aSN1ObjectIdentifier2));
        Integer numValueOf3 = Integers.valueOf(7);
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_shake128;
        map.put(numValueOf3, new XMSSParameters(10, aSN1ObjectIdentifier3));
        map.put(Integers.valueOf(8), new XMSSParameters(16, aSN1ObjectIdentifier3));
        map.put(Integers.valueOf(9), new XMSSParameters(20, aSN1ObjectIdentifier3));
        Integer numValueOf4 = Integers.valueOf(10);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_shake256;
        map.put(numValueOf4, new XMSSParameters(10, aSN1ObjectIdentifier4));
        map.put(Integers.valueOf(11), new XMSSParameters(16, aSN1ObjectIdentifier4));
        map.put(Integers.valueOf(12), new XMSSParameters(20, aSN1ObjectIdentifier4));
        paramsLookupTable = Collections.unmodifiableMap(map);
    }

    public XMSSParameters(int i2, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (i2 < 2) {
            md.n("height must be >= 2");
            throw null;
        }
        if (aSN1ObjectIdentifier == null) {
            r81.d("digest == null");
            throw null;
        }
        this.height = i2;
        this.f77681k = determineMinK();
        String digestName = DigestUtil.getDigestName(aSN1ObjectIdentifier);
        this.treeDigest = digestName;
        this.treeDigestOID = aSN1ObjectIdentifier;
        WOTSPlusParameters wOTSPlusParameters = new WOTSPlusParameters(aSN1ObjectIdentifier);
        this.wotsPlusParams = wOTSPlusParameters;
        int treeDigestSize = wOTSPlusParameters.getTreeDigestSize();
        this.treeDigestSize = treeDigestSize;
        int winternitzParameter = wOTSPlusParameters.getWinternitzParameter();
        this.winternitzParameter = winternitzParameter;
        this.oid = DefaultXMSSOid.lookup(digestName, treeDigestSize, winternitzParameter, wOTSPlusParameters.getLen(), i2);
    }

    private int determineMinK() {
        int i2 = 2;
        while (true) {
            int i3 = this.height;
            if (i2 > i3) {
                md.k("should never happen...");
                return 0;
            }
            if ((i3 - i2) % 2 == 0) {
                return i2;
            }
            i2++;
        }
    }

    public static XMSSParameters lookupByOID(int i2) {
        return paramsLookupTable.get(Integers.valueOf(i2));
    }

    public int getHeight() {
        return this.height;
    }

    public int getK() {
        return this.f77681k;
    }

    public int getLen() {
        return this.wotsPlusParams.getLen();
    }

    public XMSSOid getOid() {
        return this.oid;
    }

    public String getTreeDigest() {
        return this.treeDigest;
    }

    public ASN1ObjectIdentifier getTreeDigestOID() {
        return this.treeDigestOID;
    }

    public int getTreeDigestSize() {
        return this.treeDigestSize;
    }

    public WOTSPlus getWOTSPlus() {
        return new WOTSPlus(this.wotsPlusParams);
    }

    public int getWinternitzParameter() {
        return this.winternitzParameter;
    }

    public XMSSParameters(int i2, Digest digest) {
        this(i2, DigestUtil.getDigestOID(digest.getAlgorithmName()));
    }
}
