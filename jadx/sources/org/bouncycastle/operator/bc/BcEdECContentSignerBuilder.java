package org.bouncycastle.operator.bc;

import defpackage.md;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.edec.EdECObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.signers.Ed25519Signer;
import org.bouncycastle.operator.OperatorCreationException;

/* JADX INFO: loaded from: classes5.dex */
public class BcEdECContentSignerBuilder extends BcContentSignerBuilder {
    public BcEdECContentSignerBuilder(AlgorithmIdentifier algorithmIdentifier) {
        super(algorithmIdentifier, new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha512));
    }

    @Override // org.bouncycastle.operator.bc.BcContentSignerBuilder
    public Signer createSigner(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) throws OperatorCreationException {
        if (algorithmIdentifier.getAlgorithm().equals((ASN1Primitive) EdECObjectIdentifiers.id_Ed25519)) {
            return new Ed25519Signer();
        }
        md.k("unknown signature type");
        return null;
    }
}
