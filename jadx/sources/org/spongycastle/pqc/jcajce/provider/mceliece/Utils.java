package org.spongycastle.pqc.jcajce.provider.mceliece;

import defpackage.az;
import defpackage.md;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;

/* JADX INFO: loaded from: classes5.dex */
abstract class Utils {
    public static AlgorithmIdentifier a(String str) {
        if (str.equals(McElieceCCA2KeyGenParameterSpec.SHA1)) {
            return new AlgorithmIdentifier(OIWObjectIdentifiers.f77795a, DERNull.f77751b);
        }
        if (str.equals(McElieceCCA2KeyGenParameterSpec.SHA224)) {
            return new AlgorithmIdentifier(NISTObjectIdentifiers.d, DERNull.f77751b);
        }
        if (str.equals("SHA-256")) {
            return new AlgorithmIdentifier(NISTObjectIdentifiers.f77790a, DERNull.f77751b);
        }
        if (str.equals(McElieceCCA2KeyGenParameterSpec.SHA384)) {
            return new AlgorithmIdentifier(NISTObjectIdentifiers.f77791b, DERNull.f77751b);
        }
        if (str.equals("SHA-512")) {
            return new AlgorithmIdentifier(NISTObjectIdentifiers.f77792c, DERNull.f77751b);
        }
        md.n("unrecognised digest algorithm: ".concat(str));
        return null;
    }

    public static Digest b(AlgorithmIdentifier algorithmIdentifier) {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = algorithmIdentifier.f77822b;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = algorithmIdentifier.f77822b;
        if (aSN1ObjectIdentifier.equals(OIWObjectIdentifiers.f77795a)) {
            return new SHA1Digest();
        }
        if (aSN1ObjectIdentifier2.equals(NISTObjectIdentifiers.d)) {
            return new SHA224Digest();
        }
        if (aSN1ObjectIdentifier2.equals(NISTObjectIdentifiers.f77790a)) {
            return new SHA256Digest();
        }
        if (aSN1ObjectIdentifier2.equals(NISTObjectIdentifiers.f77791b)) {
            return new SHA384Digest();
        }
        if (aSN1ObjectIdentifier2.equals(NISTObjectIdentifiers.f77792c)) {
            return new SHA512Digest();
        }
        az.m(aSN1ObjectIdentifier2, "unrecognised OID in digest algorithm identifier: ");
        return null;
    }
}
