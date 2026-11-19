.class public Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/16 v0, 0x9

    .line 79
    new-array v0, v0, [J

    .line 80
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 6

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x23b

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x240

    if-gt v1, v2, :cond_1

    const/16 v0, 0x9

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->j([JI)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    return-void

    :cond_1
    invoke-static {}, Lct0;->c()V

    throw v0

    :cond_2
    const-string p0, "x value invalid for SecT571FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x1

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/16 v1, 0x8

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    aget-wide v3, v3, v1

    aget-wide v5, p1, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x23b

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    invoke-static {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/4 p0, 0x2

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/4 p0, 0x5

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/16 p0, 0xf

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/16 p0, 0x1e

    invoke-static {v0, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/16 p0, 0x3c

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    const/16 p0, 0xb4

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->l([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 7

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x5724cc

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/16 v0, 0x12

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->f([J[J[J)V

    invoke-static {p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->f([J[J[J)V

    const/16 p0, 0x9

    new-array p0, p0, [J

    invoke-static {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 17

    const/16 v0, 0x9

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/4 v3, 0x0

    move-object/from16 v5, p0

    move v4, v3

    :goto_0
    iget-object v6, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const-wide v7, 0xffffffffL

    const/16 v9, 0x20

    const/4 v10, 0x4

    if-ge v3, v10, :cond_0

    add-int/lit8 v10, v4, 0x1

    aget-wide v11, v6, v4

    invoke-static {v11, v12}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v11

    add-int/lit8 v4, v4, 0x2

    aget-wide v13, v6, v10

    invoke-static {v13, v14}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v13

    and-long v6, v11, v7

    shl-long v15, v13, v9

    or-long/2addr v6, v15

    aput-wide v6, v2, v3

    ushr-long v6, v11, v9

    const-wide v8, -0x100000000L

    and-long/2addr v8, v13

    or-long/2addr v6, v8

    aput-wide v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-wide v3, v6, v4

    invoke-static {v3, v4}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v3

    and-long v5, v3, v7

    aput-wide v5, v2, v10

    ushr-long/2addr v3, v9

    aput-wide v3, v0, v10

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a:[J

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/16 v0, 0x12

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    aget-wide v3, v1, p0

    aget-wide v5, v2, p0

    xor-long/2addr v3, v5

    aput-wide v3, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->f([J[J[J)V

    const/16 p0, 0x9

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final s()Ljava/math/BigInteger;
    .locals 6

    const/16 v0, 0x48

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v1, 0x8

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->g(J[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method
