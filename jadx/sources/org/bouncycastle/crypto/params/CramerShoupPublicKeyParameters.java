package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BigInteger f77629c;
    private BigInteger d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BigInteger f77630h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f77629c = bigInteger;
        this.d = bigInteger2;
        this.f77630h = bigInteger3;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        return cramerShoupPublicKeyParameters.getC().equals(this.f77629c) && cramerShoupPublicKeyParameters.getD().equals(this.d) && cramerShoupPublicKeyParameters.getH().equals(this.f77630h) && super.equals(obj);
    }

    public BigInteger getC() {
        return this.f77629c;
    }

    public BigInteger getD() {
        return this.d;
    }

    public BigInteger getH() {
        return this.f77630h;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return super.hashCode() ^ ((this.f77629c.hashCode() ^ this.d.hashCode()) ^ this.f77630h.hashCode());
    }
}
