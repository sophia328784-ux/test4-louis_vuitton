.class public Lorg/spongycastle/math/ec/ECCurve$Fp;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field public h:Ljava/math/BigInteger;

.field public i:Ljava/math/BigInteger;

.field public j:Lorg/spongycastle/math/ec/ECPoint$Fp;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->h:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->t(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->i:Ljava/math/BigInteger;

    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->j:Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$Fp;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    iput-object p4, p0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/math/ec/ECCurve;
    .locals 6

    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->i:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->h:Ljava/math/BigInteger;

    iput-object v2, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->i:Ljava/math/BigInteger;

    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v1, v0, Lorg/spongycastle/math/ec/ECCurve$Fp;->j:Lorg/spongycastle/math/ec/ECPoint$Fp;

    iput-object v3, v0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iput-object v4, v0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    iput-object v5, v0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iput-object p0, v0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    const/4 p0, 0x4

    iput p0, v0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    return-object v0
.end method

.method public final c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public final g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->h:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->i:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve$Fp;->j:Lorg/spongycastle/math/ec/ECPoint$Fp;

    return-object p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget v0, v0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    move-object v3, p0

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$Fp;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$Fp;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$Fp;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    filled-new-array {v0}, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p1, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    :goto_0
    invoke-super {v3, p1}, Lorg/spongycastle/math/ec/ECCurve;->j(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
