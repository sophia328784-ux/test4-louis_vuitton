.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$9;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# virtual methods
.method public final a()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 6

    const-string p0, "BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5"

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->a(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;

    invoke-direct {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;-><init>()V

    sget-object p0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->a:Ljava/util/Hashtable;

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string p0, "04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    iget-object v3, v1, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
