.class public Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x5

    .line 105
    new-array v0, v0, [J

    .line 106
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 13

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x11b

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x140

    if-gt v1, v2, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v3

    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    aget-wide v3, v1, p1

    const/16 v5, 0x1b

    ushr-long v5, v3, v5

    aget-wide v7, v1, v2

    shl-long v9, v5, v0

    xor-long/2addr v9, v5

    const/4 v0, 0x7

    shl-long v11, v5, v0

    xor-long/2addr v9, v11

    const/16 v0, 0xc

    shl-long/2addr v5, v0

    xor-long/2addr v5, v9

    xor-long/2addr v5, v7

    aput-wide v5, v1, v2

    const-wide/32 v5, 0x7ffffff

    and-long v2, v3, v5

    aput-wide v2, v1, p1

    iput-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    return-void

    :cond_1
    invoke-static {}, Lct0;->c()V

    throw v0

    :cond_2
    const-string p0, "x value invalid for SecT283FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 17

    move-object/from16 v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aget-wide v5, v0, v2

    xor-long/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    aget-wide v8, v0, v5

    xor-long/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    aget-wide v11, v0, v8

    xor-long/2addr v9, v11

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    aget-wide v14, v0, v11

    xor-long/2addr v12, v14

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    aget-wide v0, v0, v14

    xor-long/2addr v0, v15

    const/4 v15, 0x5

    new-array v15, v15, [J

    aput-wide v3, v15, v2

    aput-wide v6, v15, v5

    aput-wide v9, v15, v8

    aput-wide v12, v15, v11

    aput-wide v0, v15, v14

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v0, v15}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 15

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 p0, 0x5

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    aput-wide v10, p0, v9

    aput-wide v13, p0, v12

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/4 v1, 0x4

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

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

    const/16 p0, 0x11b

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-array p0, v0, [J

    new-array v0, v0, [J

    invoke-static {v3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    invoke-static {p0, v3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/4 v2, 0x2

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/4 v2, 0x4

    invoke-static {v0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/16 v2, 0x8

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    invoke-static {v0, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/16 v2, 0x11

    invoke-static {v0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    invoke-static {p0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    invoke-static {p0, v3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/16 v2, 0x23

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/16 v2, 0x46

    invoke-static {v0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {p0, v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    invoke-static {p0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    invoke-static {p0, v3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    const/16 v2, 0x8d

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->i([JI[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 7

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

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
    const/4 v3, 0x5

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x2b33ab

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    aget-wide v2, v2, v1

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
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/16 v0, 0x9

    new-array v0, v0, [J

    const/16 v1, 0xa

    new-array v2, v1, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->c([J[J[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a([J[J[J)V

    new-array p0, v1, [J

    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->c([J[J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a([J[J[J)V

    const/4 p0, 0x5

    new-array p0, p0, [J

    invoke-static {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 22

    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v0, v0, [J

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    invoke-static {v7, v8}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long v11, v4, v9

    const/16 v13, 0x20

    shl-long v14, v7, v13

    or-long/2addr v11, v14

    ushr-long/2addr v4, v13

    const-wide v14, -0x100000000L

    and-long/2addr v7, v14

    or-long/2addr v4, v7

    aput-wide v4, v0, v3

    const/4 v4, 0x2

    aget-wide v7, v2, v4

    invoke-static {v7, v8}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v7

    const/4 v5, 0x3

    aget-wide v16, v2, v5

    invoke-static/range {v16 .. v17}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v16

    and-long v18, v7, v9

    shl-long v20, v16, v13

    or-long v18, v18, v20

    ushr-long/2addr v7, v13

    and-long v14, v16, v14

    or-long/2addr v7, v14

    aput-wide v7, v0, v6

    const/4 v5, 0x4

    aget-wide v7, v2, v5

    invoke-static {v7, v8}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v7

    and-long/2addr v9, v7

    ushr-long/2addr v7, v13

    aput-wide v7, v0, v4

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a:[J

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->f([J[J[J)V

    aget-wide v7, v1, v3

    xor-long/2addr v7, v11

    aput-wide v7, v1, v3

    aget-wide v2, v1, v6

    xor-long v2, v2, v18

    aput-wide v2, v1, v6

    aget-wide v2, v1, v4

    xor-long/2addr v2, v9

    aput-wide v2, v1, v4

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    const/16 v0, 0x9

    new-array v1, v0, [J

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->e([J[J)V

    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a([J[J[J)V

    const/16 p0, 0xa

    new-array p0, p0, [J

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a([J[J[J)V

    const/4 p0, 0x5

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->d:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v1, 0x4

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
