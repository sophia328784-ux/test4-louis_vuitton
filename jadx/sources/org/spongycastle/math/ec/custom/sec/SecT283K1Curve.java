package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT283K1Curve extends ECCurve.AbstractF2m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecT283K1Point f78036h;

    public SecT283K1Curve() {
        super(283, 5, 7, 12);
        this.f78036h = new SecT283K1Point(this, null, null);
        this.f77919b = new SecT283FieldElement(BigInteger.valueOf(0L));
        this.f77920c = new SecT283FieldElement(BigInteger.valueOf(1L));
        this.d = new BigInteger(1, Hex.a("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.f77921e = BigInteger.valueOf(4L);
        this.f77922f = 6;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecT283K1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT283K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecT283FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return 283;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f78036h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 6;
    }
}
