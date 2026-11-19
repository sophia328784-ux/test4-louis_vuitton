.class public abstract Lorg/spongycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECCurve$F2m;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECCurve$Fp;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractFp;,
        Lorg/spongycastle/math/ec/ECCurve$Config;
    }
.end annotation


# instance fields
.field public final a:Lorg/spongycastle/math/field/FiniteField;

.field public b:Lorg/spongycastle/math/ec/ECFieldElement;

.field public c:Lorg/spongycastle/math/ec/ECFieldElement;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:I

.field public g:Lorg/spongycastle/math/ec/endo/ECEndomorphism;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/field/FiniteField;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->g:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    return-void
.end method


# virtual methods
.method public abstract a()Lorg/spongycastle/math/ec/ECCurve;
.end method

.method public b(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 0

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lorg/spongycastle/math/ec/ECCurve;->c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public final d([B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->h()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_b

    const/4 v6, 0x3

    if-eq v3, v6, :cond_b

    const/4 v6, 0x4

    const-string v7, "Invalid point coordinates"

    if-eq v3, v6, :cond_7

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    invoke-static {v3, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid point encoding 0x"

    invoke-static {p0, p1}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    array-length v6, p1

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v5

    if-ne v6, v8, :cond_6

    invoke-static {p1, v5, v0}, Lorg/spongycastle/util/BigIntegers;->a([BII)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v8, v0, 0x1

    invoke-static {p1, v8, v0}, Lorg/spongycastle/util/BigIntegers;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-ne v0, v5, :cond_5

    invoke-virtual {p0, v2, v6, p1}, Lorg/spongycastle/math/ec/ECCurve;->b(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {v7}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_5
    const-string p0, "Inconsistent Y coordinate in hybrid encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_6
    const-string p0, "Incorrect length for hybrid encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_7
    array-length v1, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v5

    if-ne v1, v6, :cond_a

    invoke-static {p1, v5, v0}, Lorg/spongycastle/util/BigIntegers;->a([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v5, v0, 0x1

    invoke-static {p1, v5, v0}, Lorg/spongycastle/util/BigIntegers;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Lorg/spongycastle/math/ec/ECCurve;->b(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->m()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->l()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v7}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_a
    const-string p0, "Incorrect length for uncompressed encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_b
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_d

    and-int/lit8 v1, v3, 0x1

    invoke-static {p1, v5, v0}, Lorg/spongycastle/util/BigIntegers;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/spongycastle/math/ec/ECCurve;->e(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->l()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    const-string p0, "Invalid point"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_d
    const-string p0, "Incorrect length for compressed encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_e
    array-length p1, p1

    if-ne p1, v5, :cond_12

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    :cond_f
    :goto_2
    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    const-string p0, "Invalid infinity encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_11
    :goto_3
    return-object p0

    :cond_12
    const-string p0, "Incorrect length for infinity encoding"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4
.end method

.method public abstract e(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->f(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract h()I
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public abstract i()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public j(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->s()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean p1, p1, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->b(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "Invalid point coordinates"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public abstract k(I)Z
.end method
