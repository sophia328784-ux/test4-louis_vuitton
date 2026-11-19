package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT571K1Curve extends ECCurve.AbstractF2m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecT571K1Point f78041h;

    public SecT571K1Curve() {
        super(571, 2, 5, 10);
        this.f78041h = new SecT571K1Point(this, null, null);
        this.f77919b = new SecT571FieldElement(BigInteger.valueOf(0L));
        this.f77920c = new SecT571FieldElement(BigInteger.valueOf(1L));
        this.d = new BigInteger(1, Hex.a("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
        this.f77921e = BigInteger.valueOf(4L);
        this.f77922f = 6;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecT571K1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT571K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecT571FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return 571;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f78041h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 6;
    }
}
