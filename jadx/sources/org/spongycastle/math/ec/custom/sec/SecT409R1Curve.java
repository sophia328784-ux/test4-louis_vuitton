package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT409R1Curve extends ECCurve.AbstractF2m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecT409R1Point f78039h;

    public SecT409R1Curve() {
        super(409, 87, 0, 0);
        this.f78039h = new SecT409R1Point(this, null, null);
        this.f77919b = new SecT409FieldElement(BigInteger.valueOf(1L));
        this.f77920c = new SecT409FieldElement(new BigInteger(1, Hex.a("0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F")));
        this.d = new BigInteger(1, Hex.a("010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"));
        this.f77921e = BigInteger.valueOf(2L);
        this.f77922f = 6;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecT409R1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT409R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecT409FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return 409;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f78039h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 6;
    }
}
