package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecP128R1Curve extends ECCurve.AbstractFp {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final BigInteger f77955i = new BigInteger(1, Hex.a("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SecP128R1Point f77956h;

    public SecP128R1Curve() {
        super(f77955i);
        this.f77956h = new SecP128R1Point(this, null, null);
        this.f77919b = new SecP128R1FieldElement(new BigInteger(1, Hex.a("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f77920c = new SecP128R1FieldElement(new BigInteger(1, Hex.a("E87579C11079F43DD824993C2CEE5ED3")));
        this.d = new BigInteger(1, Hex.a("FFFFFFFE0000000075A30D1B9038A115"));
        this.f77921e = BigInteger.valueOf(1L);
        this.f77922f = 2;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECCurve a() {
        return new SecP128R1Curve();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint c(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP128R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECFieldElement g(BigInteger bigInteger) {
        return new SecP128R1FieldElement(bigInteger);
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final int h() {
        return f77955i.bitLength();
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final ECPoint i() {
        return this.f77956h;
    }

    @Override // org.spongycastle.math.ec.ECCurve
    public final boolean k(int i2) {
        return i2 == 2;
    }
}
