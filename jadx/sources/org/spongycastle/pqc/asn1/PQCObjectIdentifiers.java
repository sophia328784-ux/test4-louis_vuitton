package org.spongycastle.pqc.asn1;

import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import org.bouncycastle.pqc.legacy.crypto.gmss.GMSSKeyPairGenerator;
import org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceFujisakiCipher;
import org.bouncycastle.pqc.legacy.crypto.mceliece.McElieceKobaraImaiCipher;
import org.bouncycastle.pqc.legacy.crypto.mceliece.McEliecePointchevalCipher;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.bc.BCObjectIdentifiers;

/* JADX INFO: loaded from: classes5.dex */
public interface PQCObjectIdentifiers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f78066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f78067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f78068c;
    public static final ASN1ObjectIdentifier d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f78069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f78070f;
    public static final ASN1ObjectIdentifier g;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.5.3.2");
        f78066a = aSN1ObjectIdentifier;
        n00.D(aSN1ObjectIdentifier, "1", ContentTree.AUDIO_ID, ContentTree.IMAGE_ID, "4");
        aSN1ObjectIdentifier.r("5");
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier(GMSSKeyPairGenerator.OID);
        aSN1ObjectIdentifier2.r("1");
        aSN1ObjectIdentifier2.r(ContentTree.AUDIO_ID);
        aSN1ObjectIdentifier2.r(ContentTree.IMAGE_ID);
        aSN1ObjectIdentifier2.r("4");
        aSN1ObjectIdentifier2.r("5");
        f78067b = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
        f78068c = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.2");
        new ASN1ObjectIdentifier(McElieceFujisakiCipher.OID);
        new ASN1ObjectIdentifier(McEliecePointchevalCipher.OID);
        new ASN1ObjectIdentifier(McElieceKobaraImaiCipher.OID);
        d = BCObjectIdentifiers.f77781a;
        f78069e = BCObjectIdentifiers.d;
        f78070f = BCObjectIdentifiers.f77782b;
        g = BCObjectIdentifiers.f77783c;
    }
}
