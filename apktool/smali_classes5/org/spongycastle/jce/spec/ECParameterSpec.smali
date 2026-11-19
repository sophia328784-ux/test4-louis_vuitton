.class public Lorg/spongycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:Lorg/spongycastle/math/ec/ECCurve;

.field public final c:Lorg/spongycastle/math/ec/ECPoint;

.field public final d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->d:Ljava/math/BigInteger;

    const-wide/16 p0, 0x1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    .line 21
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    .line 22
    iput-object p3, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    .line 25
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    .line 26
    iput-object p3, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECCurve;->f(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    iget-object p1, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->b(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->b:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->c:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
