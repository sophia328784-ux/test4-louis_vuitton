.class public Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;->i:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x7

    .line 163
    new-array v0, v0, [I

    .line 164
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 12

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat224;->e(Ljava/math/BigInteger;)[I

    move-result-object p1

    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat224;->g([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, v1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    long-to-int v7, v3

    aput v7, p1, v2

    const/16 v2, 0x20

    shr-long/2addr v3, v2

    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v3, v8, v2

    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    aget v10, v1, v7

    int-to-long v10, v10

    and-long/2addr v10, v5

    sub-long/2addr v8, v10

    add-long/2addr v8, v3

    long-to-int v3, v8

    aput v3, p1, v7

    shr-long v2, v8, v2

    aget v4, p1, v0

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v1, v1, v0

    int-to-long v9, v1

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v7, v2

    long-to-int v1, v7

    aput v1, p1, v0

    :cond_0
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    return-void

    :cond_1
    const-string p0, "x value invalid for SecP224R1FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/raw/Nat;->m(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, v1, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat224;->g([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->b([I)V

    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat224;->d([I[I)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->h([I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->e:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lorg/spongycastle/util/Arrays;->f(I[I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->i([I)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->i([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    aput p0, v0, p0

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    invoke-static {v1, p0, v0}, Lorg/spongycastle/math/raw/Nat224;->m([I[I[I)I

    :goto_0
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->i([I)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->h([I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v2, 0x7

    new-array v3, v2, [I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->i([I)Z

    move-result v0

    const/4 v4, 0x6

    sget-object v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    aput v6, v3, v6

    aput v6, v3, v7

    const/4 v0, 0x2

    aput v6, v3, v0

    const/4 v0, 0x3

    aput v6, v3, v0

    const/4 v0, 0x4

    aput v6, v3, v0

    const/4 v0, 0x5

    aput v6, v3, v0

    aput v6, v3, v4

    goto :goto_0

    :cond_1
    invoke-static {v5, v1, v3}, Lorg/spongycastle/math/raw/Nat224;->m([I[I[I)I

    :goto_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    new-array v9, v2, [I

    aget v0, v5, v4

    ushr-int/lit8 v10, v0, 0x1

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x2

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x4

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x8

    or-int/2addr v0, v10

    ushr-int/lit8 v10, v0, 0x10

    or-int/2addr v10, v0

    :cond_2
    move v0, v6

    :goto_1
    if-eq v0, v2, :cond_3

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v11

    aput v11, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v0, v9, v4

    and-int/2addr v0, v10

    aput v0, v9, v4

    invoke-static {v2, v9, v5}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v2, [I

    new-array v8, v2, [I

    new-array v10, v2, [I

    invoke-static {v1, v8}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    move v11, v6

    :goto_2
    const/16 v12, 0xe

    const/4 v13, -0x1

    if-ge v11, v2, :cond_5

    invoke-static {v8, v10}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    shl-int v14, v7, v11

    new-array v12, v12, [I

    invoke-static {v8, v12}, Lorg/spongycastle/math/raw/Nat224;->l([I[I)V

    invoke-static {v12, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->d([I[I)V

    :goto_3
    add-int/2addr v14, v13

    if-lez v14, :cond_4

    invoke-static {v8, v12}, Lorg/spongycastle/math/raw/Nat224;->l([I[I)V

    invoke-static {v12, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->d([I[I)V

    goto :goto_3

    :cond_4
    invoke-static {v8, v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-array v10, v12, [I

    invoke-static {v8, v10}, Lorg/spongycastle/math/raw/Nat224;->l([I[I)V

    invoke-static {v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->d([I[I)V

    const/16 v11, 0x5f

    :goto_4
    add-int/2addr v11, v13

    if-lez v11, :cond_6

    invoke-static {v8, v10}, Lorg/spongycastle/math/raw/Nat224;->l([I[I)V

    invoke-static {v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->d([I[I)V

    goto :goto_4

    :cond_6
    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat224;->h([I)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_9

    :cond_7
    :goto_5
    new-array v8, v2, [I

    invoke-static {v9, v8}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    new-array v10, v2, [I

    aput v7, v10, v6

    new-array v11, v2, [I

    invoke-static {v3, v11}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    new-array v12, v2, [I

    new-array v14, v2, [I

    move v15, v6

    :goto_6
    if-ge v15, v2, :cond_9

    invoke-static {v8, v12}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    invoke-static {v10, v14}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    shl-int v16, v7, v15

    :goto_7
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_8

    invoke-static {v10, v8, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v10, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->h([I[I)V

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->f([I[I)V

    invoke-static {v11, v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a([I[I[I)V

    invoke-static {v11, v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    move/from16 v17, v4

    invoke-static {v2, v11}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    move-result v4

    invoke-static {v4, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->e(I[I)V

    move/from16 v4, v17

    goto :goto_7

    :cond_8
    move/from16 v17, v4

    invoke-static {v10, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v0, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v8, v12, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v11, v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a([I[I[I)V

    invoke-static {v8, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v11, v8}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    invoke-static {v10, v12, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v10, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a([I[I[I)V

    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->f([I[I)V

    invoke-static {v11, v3, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    move/from16 v17, v4

    new-array v4, v2, [I

    new-array v12, v2, [I

    move v14, v7

    :goto_8
    const/16 v15, 0x60

    if-ge v14, v15, :cond_c

    invoke-static {v8, v4}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    invoke-static {v10, v12}, Lorg/spongycastle/math/raw/Nat224;->c([I[I)V

    invoke-static {v10, v8, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v10, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->h([I[I)V

    invoke-static {v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->f([I[I)V

    invoke-static {v11, v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->a([I[I[I)V

    invoke-static {v11, v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v2, v11}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    move-result v15

    invoke-static {v15, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->e(I[I)V

    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat224;->i([I)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-static {v5, v12, v0}, Lorg/spongycastle/math/raw/Mod;->b([I[I[I)V

    invoke-static {v0, v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->c([I[I[I)V

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->f([I[I)V

    invoke-static {v1, v9}, Lorg/spongycastle/math/raw/Nat224;->d([I[I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1

    :cond_a
    :goto_9
    const/4 v0, 0x0

    return-object v0

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_c
    invoke-static {v2, v9, v9}, Lorg/spongycastle/math/raw/Nat;->m(I[I[I)I

    move-result v4

    if-nez v4, :cond_d

    aget v4, v9, v17

    if-ne v4, v13, :cond_e

    invoke-static {v9, v5}, Lorg/spongycastle/math/raw/Nat224;->g([I[I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    invoke-static {v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->b([I)V

    :cond_e
    move/from16 v4, v17

    goto/16 :goto_5

    :cond_f
    :goto_a
    return-object v0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->f([I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->g([I[I[I)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object p0
.end method

.method public final r()Z
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->f([I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->d:[I

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat224;->n([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
