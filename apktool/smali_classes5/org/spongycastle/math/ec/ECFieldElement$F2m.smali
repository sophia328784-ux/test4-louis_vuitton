.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:[I

.field public final g:Lorg/spongycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-gt v1, p1, :cond_3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x2

    iput p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    filled-new-array {p2, p3, p4}, [I

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    new-instance p1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {p1, p5}, Lorg/spongycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    return-void

    :cond_1
    const-string p0, "k2 must be larger than 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "k2 must be smaller than k3"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "x value invalid in F2m field element"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 73
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(I[ILorg/spongycastle/math/ec/LongArray;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 75
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    .line 76
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    .line 77
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    .line 78
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    return-void
.end method

.method public static t(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 2

    instance-of v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    iget v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->b([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Field elements are not elements of the same field F2m"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "One of the F2m field elements has incorrect representation"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/LongArray;->c(Lorg/spongycastle/math/ec/LongArray;)V

    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-direct {p1, v1, p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object v2, v1, Lorg/spongycastle/math/ec/LongArray;->b:[J

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-nez v2, :cond_0

    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    new-array v2, v3, [J

    aput-wide v5, v2, v4

    invoke-direct {v1, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->k()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [J

    iget-object v1, v1, Lorg/spongycastle/math/ec/LongArray;->b:[J

    array-length v7, v1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-wide v1, v3, v4

    xor-long/2addr v1, v5

    aput-wide v1, v3, v4

    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v1, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    :goto_0
    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-direct {v0, v2, p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->f()I

    move-result p0

    return p0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    iget v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    iget-object v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->b([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 14

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->f()I

    move-result v2

    if-eqz v2, :cond_6

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    add-int/lit8 v5, v3, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    new-instance v6, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v6, v5}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    iget-object v7, v6, Lorg/spongycastle/math/ec/LongArray;->b:[J

    invoke-static {v7, v3}, Lorg/spongycastle/math/ec/LongArray;->h([JI)V

    array-length v8, p0

    :goto_0
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_1

    aget v9, p0, v8

    invoke-static {v7, v9}, Lorg/spongycastle/math/ec/LongArray;->h([JI)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/spongycastle/math/ec/LongArray;->h([JI)V

    new-instance v7, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v7, v5}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    iget-object v9, v7, Lorg/spongycastle/math/ec/LongArray;->b:[J

    const-wide/16 v10, 0x1

    aput-wide v10, v9, v8

    new-instance v9, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v9, v5}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    const/4 v5, 0x2

    new-array v10, v5, [I

    aput v2, v10, v8

    add-int/lit8 v2, v3, 0x1

    aput v2, v10, v4

    filled-new-array {v1, v6}, [Lorg/spongycastle/math/ec/LongArray;

    move-result-object v1

    new-array v2, v5, [I

    aput v4, v2, v8

    aput v8, v2, v4

    filled-new-array {v7, v9}, [Lorg/spongycastle/math/ec/LongArray;

    move-result-object v5

    aget v6, v10, v4

    aget v7, v10, v8

    sub-int v7, v6, v7

    :goto_1
    if-gez v7, :cond_2

    neg-int v7, v7

    aput v6, v10, v4

    aput v8, v2, v4

    rsub-int/lit8 v4, v4, 0x1

    aget v6, v10, v4

    aget v8, v2, v4

    :cond_2
    aget-object v9, v1, v4

    rsub-int/lit8 v11, v4, 0x1

    aget-object v12, v1, v11

    aget v13, v10, v11

    invoke-virtual {v9, v12, v13, v7}, Lorg/spongycastle/math/ec/LongArray;->b(Lorg/spongycastle/math/ec/LongArray;II)V

    aget-object v9, v1, v4

    invoke-virtual {v9, v6}, Lorg/spongycastle/math/ec/LongArray;->g(I)I

    move-result v9

    if-nez v9, :cond_3

    aget-object v1, v5, v11

    :goto_2
    invoke-direct {v0, v3, p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0

    :cond_3
    aget v12, v2, v11

    aget-object v13, v5, v4

    aget-object v11, v5, v11

    invoke-virtual {v13, v11, v12, v7}, Lorg/spongycastle/math/ec/LongArray;->b(Lorg/spongycastle/math/ec/LongArray;II)V

    add-int/2addr v12, v7

    if-le v12, v8, :cond_4

    move v8, v12

    goto :goto_3

    :cond_4
    if-ne v12, v8, :cond_5

    aget-object v11, v5, v4

    invoke-virtual {v11, v8}, Lorg/spongycastle/math/ec/LongArray;->g(I)I

    move-result v8

    :cond_5
    :goto_3
    sub-int v6, v9, v6

    add-int/2addr v7, v6

    move v6, v9

    goto :goto_1

    :cond_6
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->u()Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->h([I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 6

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object p0, p0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object/from16 v2, p1

    check-cast v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->f()I

    move-result v4

    iget v5, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    if-nez v4, :cond_0

    move-object v2, v3

    :goto_0
    move v15, v5

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/LongArray;->f()I

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    if-le v4, v6, :cond_2

    move-object/from16 v25, v3

    move-object v3, v2

    move-object/from16 v2, v25

    move/from16 v25, v6

    move v6, v4

    move/from16 v4, v25

    :cond_2
    add-int/lit8 v7, v4, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    add-int/lit8 v8, v6, 0x3f

    ushr-int/lit8 v8, v8, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v13, v4, 0x6

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    iget-object v3, v3, Lorg/spongycastle/math/ec/LongArray;->b:[J

    aget-wide v6, v3, v4

    const-wide/16 v9, 0x1

    cmp-long v3, v6, v9

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-array v3, v13, [J

    iget-object v2, v2, Lorg/spongycastle/math/ec/LongArray;->b:[J

    invoke-static {v6, v7, v2, v8, v3}, Lorg/spongycastle/math/ec/LongArray;->w(J[JI[J)V

    invoke-static {v3, v13, v5, v0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result v2

    new-instance v6, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v6, v3, v4, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    move v15, v5

    move-object v2, v6

    goto/16 :goto_9

    :cond_4
    add-int/lit8 v6, v6, 0x46

    ushr-int/lit8 v6, v6, 0x6

    const/16 v10, 0x10

    new-array v11, v10, [I

    shl-int/lit8 v12, v6, 0x4

    new-array v14, v12, [J

    aput v6, v11, v9

    iget-object v2, v2, Lorg/spongycastle/math/ec/LongArray;->b:[J

    invoke-static {v2, v4, v14, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    move v8, v6

    :goto_2
    if-ge v2, v10, :cond_7

    add-int v17, v8, v6

    aput v17, v11, v2

    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_5

    ushr-int/lit8 v15, v17, 0x1

    const/16 v19, 0x1

    move-object/from16 v16, v14

    move/from16 v18, v6

    invoke-static/range {v14 .. v19}, Lorg/spongycastle/math/ec/LongArray;->y([JI[JIII)V

    goto :goto_4

    :cond_5
    sub-int v8, v17, v6

    move v9, v4

    :goto_3
    if-ge v9, v6, :cond_6

    add-int v15, v17, v9

    add-int v16, v6, v9

    aget-wide v18, v14, v16

    add-int v16, v8, v9

    aget-wide v20, v14, v16

    xor-long v18, v18, v20

    aput-wide v18, v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v17

    goto :goto_2

    :cond_7
    new-array v2, v12, [J

    const/16 v17, 0x0

    const/16 v19, 0x4

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v12

    invoke-static/range {v14 .. v19}, Lorg/spongycastle/math/ec/LongArray;->y([JI[JIII)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/LongArray;->b:[J

    shl-int/lit8 v3, v13, 0x3

    new-array v9, v3, [J

    move v8, v4

    :goto_5
    if-ge v8, v7, :cond_a

    aget-wide v17, v2, v8

    move v15, v5

    move v10, v8

    move-wide/from16 v4, v17

    :goto_6
    long-to-int v12, v4

    and-int/lit8 v12, v12, 0xf

    const/16 v17, 0x4

    move-object/from16 v18, v2

    move/from16 p1, v3

    ushr-long v2, v4, v17

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget v3, v11, v12

    aget v2, v11, v2

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_8

    add-int v17, v10, v12

    aget-wide v19, v9, v17

    add-int v21, v3, v12

    aget-wide v21, v14, v21

    add-int v23, v2, v12

    aget-wide v23, v16, v23

    xor-long v21, v21, v23

    xor-long v19, v19, v21

    aput-wide v19, v9, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_8
    const/16 v2, 0x8

    ushr-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_9

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p1

    move v5, v15

    move-object/from16 v2, v18

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    add-int/2addr v10, v13

    move/from16 v3, p1

    move-object/from16 v2, v18

    goto :goto_6

    :cond_a
    move/from16 p1, v3

    move v15, v5

    :goto_8
    sub-int v12, v3, v13

    if-eqz v12, :cond_b

    sub-int v10, v12, v13

    const/16 v14, 0x8

    move-object v11, v9

    invoke-static/range {v9 .. v14}, Lorg/spongycastle/math/ec/LongArray;->d([JI[JIII)J

    move v3, v12

    goto :goto_8

    :cond_b
    invoke-static {v9, v13, v15, v0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result v2

    new-instance v3, Lorg/spongycastle/math/ec/LongArray;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v4, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    move-object v2, v3

    :goto_9
    invoke-direct {v1, v15, v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v1
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    check-cast p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p3, p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/LongArray;->v(Lorg/spongycastle/math/ec/LongArray;)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v1

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/LongArray;->v(Lorg/spongycastle/math/ec/LongArray;)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    :cond_1
    invoke-virtual {v1, p2}, Lorg/spongycastle/math/ec/LongArray;->c(Lorg/spongycastle/math/ec/LongArray;)V

    iget-object p1, v1, Lorg/spongycastle/math/ec/LongArray;->b:[J

    array-length p2, p1

    iget p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-static {p1, p2, p3, p0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result p2

    array-length v0, p1

    if-ge p2, v0, :cond_2

    new-array v0, p2, [J

    iput-object v0, v1, Lorg/spongycastle/math/ec/LongArray;->b:[J

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    invoke-direct {p1, p3, p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 13

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object v1, v0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_6

    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_4

    :cond_1
    new-instance v5, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->k()I

    move-result v6

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v1, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    shl-int/lit8 v4, v7, 0x1

    new-array v7, v4, [J

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    invoke-static {v0, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    shl-int/lit8 v0, v6, 0x1

    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    aget-wide v8, v7, v6

    add-int/lit8 v10, v0, -0x1

    const/16 v11, 0x20

    ushr-long v11, v8, v11

    long-to-int v11, v11

    invoke-static {v11}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v11

    aput-wide v11, v7, v10

    add-int/lit8 v0, v0, -0x2

    long-to-int v8, v8

    invoke-static {v8}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v8

    aput-wide v8, v7, v0

    goto :goto_2

    :cond_3
    invoke-static {v7, v4, v1, p0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result v6

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, v7, v2, v6}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    :goto_3
    invoke-direct {v5, v1, p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-object p0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->k()I

    move-result v2

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 v2, v2, 0x1

    new-array v4, v2, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_1

    iget-object v7, v1, Lorg/spongycastle/math/ec/LongArray;->b:[J

    ushr-int/lit8 v8, v6, 0x1

    aget-wide v7, v7, v8

    add-int/lit8 v9, v6, 0x1

    long-to-int v10, v7

    invoke-static {v10}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v10

    aput-wide v10, v4, v6

    add-int/lit8 v6, v6, 0x2

    const/16 v10, 0x20

    ushr-long/2addr v7, v10

    long-to-int v7, v7

    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v7

    aput-wide v7, v4, v9

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    invoke-static {v4, v2, v3, p0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result v2

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    :goto_1
    invoke-direct {v0, v3, p0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->k()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v4, v0

    goto :goto_1

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    new-array v3, v1, [J

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, v0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    ushr-int/lit8 v6, v4, 0x1

    aget-wide v5, v5, v6

    add-int/lit8 v7, v4, 0x1

    long-to-int v8, v5

    invoke-static {v8}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x2

    const/16 v8, 0x20

    ushr-long/2addr v5, v8

    long-to-int v5, v5

    invoke-static {v5}, Lorg/spongycastle/math/ec/LongArray;->l(I)J

    move-result-wide v5

    aput-wide v5, v3, v7

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v4, v3, v2, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    :goto_1
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/LongArray;->v(Lorg/spongycastle/math/ec/LongArray;)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p1

    if-ne v4, v0, :cond_2

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lorg/spongycastle/math/ec/LongArray;

    :cond_2
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/LongArray;->c(Lorg/spongycastle/math/ec/LongArray;)V

    iget-object p1, v4, Lorg/spongycastle/math/ec/LongArray;->b:[J

    array-length p2, p1

    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->e:I

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->f:[I

    invoke-static {p1, p2, v0, p0}, Lorg/spongycastle/math/ec/LongArray;->x([JII[I)I

    move-result p2

    array-length v1, p1

    if-ge p2, v1, :cond_3

    new-array v1, p2, [J

    iput-object v1, v4, Lorg/spongycastle/math/ec/LongArray;->b:[J

    invoke-static {p1, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    invoke-direct {p1, v0, p0, v4}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 6

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    iget-object p0, p0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 14

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->g:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->k()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/spongycastle/math/ec/ECConstants;->a:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v2

    const/16 v1, 0x8

    new-array v5, v1, [B

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    move v10, v9

    :goto_0
    const/4 v11, 0x1

    if-ltz v8, :cond_3

    mul-int/lit8 v12, v8, 0x8

    ushr-long v12, v3, v12

    long-to-int v12, v12

    int-to-byte v12, v12

    if-nez v10, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    add-int/lit8 v10, v9, 0x1

    aput-byte v12, v5, v9

    move v9, v10

    move v10, v11

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    mul-int/2addr v2, v1

    add-int/2addr v2, v9

    new-array v1, v2, [B

    :goto_1
    if-ge v7, v9, :cond_4

    aget-byte v2, v5, v7

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_6

    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->b:[J

    aget-wide v2, v2, v0

    move v4, v6

    :goto_3
    if-ltz v4, :cond_5

    add-int/lit8 v5, v9, 0x1

    mul-int/lit8 v7, v4, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    add-int/lit8 v4, v4, -0x1

    move v9, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
