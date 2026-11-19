package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class ECParameterSpec implements AlgorithmParameterSpec {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ECCurve f77913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ECPoint f77914c;
    public final BigInteger d;

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this.f77913b = eCCurve;
        this.f77914c = eCPoint.j();
        this.d = bigInteger;
        BigInteger.valueOf(1L);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ECParameterSpec)) {
            return false;
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        return this.f77913b.f(eCParameterSpec.f77913b) && this.f77914c.b(eCParameterSpec.f77914c);
    }

    public final int hashCode() {
        return this.f77914c.hashCode() ^ this.f77913b.hashCode();
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f77913b = eCCurve;
        this.f77914c = eCPoint.j();
        this.d = bigInteger;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f77913b = eCCurve;
        this.f77914c = eCPoint.j();
        this.d = bigInteger;
    }
}
