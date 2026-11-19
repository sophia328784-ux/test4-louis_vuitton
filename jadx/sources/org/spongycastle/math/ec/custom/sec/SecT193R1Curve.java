package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecT193R1Curve extends ECCurve.AbstractF2m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecT193R1Point f78030h;

    public SecT193R1Curve() {
        super(193, 15, 0, 0);
        this.f78030h = new SecT193R1Point(this, null, null);
        this.f77919b = new SecT193FieldElement(new BigInteger(1, Hex.a("0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01")));
        this.f77920c = new SecT193FieldElement(new BigInteger(1, Hex.a("00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814")));
        this.d = new BigInteger(1, Hex.a("01000000000000000000000000C7F34A778F443ACC920EBA49"));
        this.f77921e = BigInteger.valueOf(2L);
        this.f77922f = 6;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecT193R1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecT193R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecT193FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return 193;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f78030h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 6;
    }
}
