.class public Lorg/spongycastle/math/ec/custom/sec/SecT409K1Curve;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "SourceFile"


# instance fields
.field public final h:Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x57

    const/4 v1, 0x0

    const/16 v2, 0x199

    invoke-direct {p0, v2, v0, v1, v1}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Curve;->h:Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->a(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/math/ec/ECCurve;
    .locals 0

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Curve;

    invoke-direct {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Curve;-><init>()V

    return-object p0
.end method

.method public final c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public final g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public final h()I
    .locals 0

    const/16 p0, 0x199

    return p0
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409K1Curve;->h:Lorg/spongycastle/math/ec/custom/sec/SecT409K1Point;

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
