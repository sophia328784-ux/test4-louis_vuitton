.class public abstract Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.super Lorg/spongycastle/math/ec/ECCurve;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    filled-new-array {v1, p2, p1}, [I

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/math/field/FiniteFields;->a([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p0, "k3 must be 0 if k2 == 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p3, p2, :cond_3

    if-le p4, p3, :cond_2

    filled-new-array {v1, p2, p3, p4, p1}, [I

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/math/field/FiniteFields;->a([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;-><init>(Lorg/spongycastle/math/field/FiniteField;)V

    return-void

    :cond_2
    const-string p0, "k3 must be > k2"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "k2 must be > k1"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "k1 must be > 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p3, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Lorg/spongycastle/math/ec/ECCurve;->c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public final e(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->n()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->h()I

    move-result v4

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    :cond_2
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v6}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object v8, v0

    move v7, v1

    move-object v9, v3

    :goto_0
    if-ge v7, v4, :cond_3

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v0, v9

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->r()Z

    move-result v3

    if-ne p1, v1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eq v3, p1, :cond_6

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->b()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_6
    iget p1, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    const/4 v3, 0x5

    if-eq p1, v3, :cond_7

    const/4 v3, 0x6

    if-eq p1, v3, :cond_7

    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_3

    :cond_8
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_9

    invoke-virtual {p0, p2, p1, v1}, Lorg/spongycastle/math/ec/ECCurve;->c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "Invalid point compression"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2
.end method
