package org.spongycastle.pqc.jcajce.provider.xmss;

import defpackage.az;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.digests.SHAKEDigest;

/* JADX INFO: loaded from: classes5.dex */
abstract class DigestUtil {
    public static ExtendedDigest a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.f77790a)) {
            return new SHA256Digest();
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.f77792c)) {
            return new SHA512Digest();
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.f77793e)) {
            return new SHAKEDigest(128);
        }
        if (aSN1ObjectIdentifier.equals(NISTObjectIdentifiers.f77794f)) {
            return new SHAKEDigest(256);
        }
        az.m(aSN1ObjectIdentifier, "unrecognized digest OID: ");
        return null;
    }
}
