package com.networkbench.agent.impl.util.a.a;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X9ECPoint;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.jcajce.provider.asymmetric.util.KeyUtil;

/* JADX INFO: loaded from: classes5.dex */
public class h extends BCECPublicKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f38263a = new ASN1ObjectIdentifier("1.2.156.10197.1.301");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f38264b;

    public h(BCECPublicKey bCECPublicKey) {
        super(bCECPublicKey.getAlgorithm(), bCECPublicKey);
        this.f38264b = false;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey, java.security.Key
    public byte[] getEncoded() {
        return KeyUtil.getEncodedSubjectPublicKeyInfo(new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, f38263a), ASN1OctetString.getInstance(new X9ECPoint(getQ(), this.f38264b).toASN1Primitive()).getOctets()));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey, org.bouncycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.f38264b = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public h(String str, BCECPublicKey bCECPublicKey) {
        super(str, bCECPublicKey);
        this.f38264b = false;
    }
}
