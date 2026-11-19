package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT163R2Curve extends ECCurve.AbstractF2m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecT163R2Point f78029h;

    public SecT163R2Curve() {
        super(163, 3, 6, 7);
        this.f78029h = new SecT163R2Point(this, null, null);
        this.f77919b = new SecT163FieldElement(BigInteger.valueOf(1L));
        this.f77920c = new SecT163FieldElement(new BigInteger(1, Hex.a("020A601907B8C953CA1481EB10512F78744A3205FD")));
        this.d = new BigInteger(1, Hex.a("040000000000000000000292FE77E70C12A4234C33"));
        this.f77921e = BigInteger.valueOf(2L);
        this.f77922f = 6;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecT163R2Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT163R2Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecT163FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return 163;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f78029h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 6;
    }
}
