package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecP160R1Curve extends ECCurve.AbstractFp {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BigInteger f77963i = new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecP160R1Point f77964h;

    public SecP160R1Curve() {
        super(f77963i);
        this.f77964h = new SecP160R1Point(this, null, null);
        this.f77919b = new SecP160R1FieldElement(new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC")));
        this.f77920c = new SecP160R1FieldElement(new BigInteger(1, Hex.a("1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45")));
        this.d = new BigInteger(1, Hex.a("0100000000000000000001F4C8F927AED3CA752257"));
        this.f77921e = BigInteger.valueOf(1L);
        this.f77922f = 2;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecP160R1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP160R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecP160R1FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return f77963i.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f77964h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 2;
    }
}
