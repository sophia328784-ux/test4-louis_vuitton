.class public Lorg/spongycastle/math/ec/ECCurve$F2m;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lorg/spongycastle/math/ec/ECPoint$F2m;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 40
    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->h:I

    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->i:I

    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->j:I

    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k:I

    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->l:Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lorg/spongycastle/math/ec/ECCurve$F2m;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 41
    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 39
    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/spongycastle/math/ec/ECCurve;
    .locals 8

    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->h:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->i:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->j:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    iput v1, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;->h:I

    iput v2, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;->i:I

    iput v3, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;->j:I

    iput v4, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k:I

    iput-object v7, v0, Lorg/spongycastle/math/ec/ECCurve;->d:Ljava/math/BigInteger;

    iput-object p0, v0, Lorg/spongycastle/math/ec/ECCurve;->e:Ljava/math/BigInteger;

    new-instance p0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object p0, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;->l:Lorg/spongycastle/math/ec/ECPoint$F2m;

    iput-object v5, v0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iput-object v6, v0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 p0, 0x6

    iput p0, v0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    return-object v0
.end method

.method public final c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public final g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->h:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->i:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->j:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->h:I

    return p0
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->l:Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object p0
.end method

.method public final k(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
