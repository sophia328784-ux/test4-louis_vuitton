.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$22;
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

    const-string p0, "10B7B4D696E676875615175137C8A16FD0DA2211"

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->a(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT193R2Curve;

    invoke-direct {v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193R2Curve;-><init>()V

    sget-object p0, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->a:Ljava/util/Hashtable;

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string p0, "0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Hex;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    iget-object v3, v1, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
