.class public Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x7

    .line 103
    new-array v0, v0, [J

    .line 104
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 9

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x199

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1c0

    if-gt v1, v2, :cond_1

    const/4 v0, 0x7

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
    const/4 p1, 0x6

    aget-wide v2, v0, p1

    const/16 v4, 0x19

    ushr-long v4, v2, v4

    aget-wide v6, v0, v1

    xor-long/2addr v6, v4

    aput-wide v6, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    const/16 v8, 0x17

    shl-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, v0, v1

    const-wide/32 v4, 0x1ffffff

    and-long v1, v2, v4

    aput-wide v1, v0, p1

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    return-void

    :cond_1
    invoke-static {}, Lct0;->c()V

    throw v0

    :cond_2
    const-string p0, "x value invalid for SecT409FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 23

    move-object/from16 v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

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

    aget-wide v17, v0, v14

    xor-long v15, v15, v17

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    aget-wide v20, v0, v17

    xor-long v18, v18, v20

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    aget-wide v0, v0, v20

    xor-long v0, v21, v0

    move/from16 p0, v2

    const/4 v2, 0x7

    new-array v2, v2, [J

    aput-wide v3, v2, p0

    aput-wide v6, v2, v5

    aput-wide v9, v2, v8

    aput-wide v12, v2, v11

    aput-wide v15, v2, v14

    aput-wide v18, v2, v17

    aput-wide v0, v2, v20

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    const/4 v7, 0x2

    aget-wide v8, v0, v7

    const/4 v10, 0x3

    aget-wide v11, v0, v10

    const/4 v13, 0x4

    aget-wide v14, v0, v13

    const/16 v16, 0x5

    aget-wide v17, v0, v16

    const/16 v19, 0x6

    aget-wide v20, v0, v19

    const/4 v0, 0x7

    new-array v0, v0, [J

    aput-wide v2, v0, v1

    aput-wide v5, v0, v4

    aput-wide v8, v0, v7

    aput-wide v11, v0, v10

    aput-wide v14, v0, v13

    aput-wide v17, v0, v16

    aput-wide v20, v0, v19

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object v1
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/4 v1, 0x6

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

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

    const/16 p0, 0x199

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    const/4 v0, 0x7

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-array p0, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/16 v4, 0xd

    new-array v4, v4, [J

    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->c([J[J)V

    invoke-static {v4, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    const/4 v3, 0x1

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/4 v3, 0x3

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/4 v3, 0x6

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/16 v3, 0xc

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/16 v3, 0x18

    invoke-static {v0, v3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/16 v3, 0x30

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/16 v3, 0x60

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    const/16 v3, 0xc0

    invoke-static {p0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->f([JI[J)V

    invoke-static {p0, v2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    invoke-static {p0, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

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
    const/4 v3, 0x7

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x3e68e7

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

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

    const/4 v0, 0x7

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->d([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/16 v0, 0xd

    new-array v1, v0, [J

    const/16 v2, 0xe

    new-array v3, v2, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    invoke-static {p0, p1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->b([J[J[J)V

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    if-ge p1, v0, :cond_0

    aget-wide v4, v1, p1

    aget-wide v6, v3, p1

    xor-long/2addr v4, v6

    aput-wide v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [J

    invoke-static {p2, p3, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->b([J[J[J)V

    :goto_1
    if-ge p0, v0, :cond_1

    aget-wide p2, v1, p0

    aget-wide v2, p1, p0

    xor-long/2addr p2, v2

    aput-wide p2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x7

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    invoke-static {v5, v6}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    ushr-long/2addr v2, v11

    const-wide v12, -0x100000000L

    and-long/2addr v5, v12

    or-long/2addr v2, v5

    const/4 v5, 0x2

    aget-wide v14, v0, v5

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v14

    const/4 v6, 0x3

    aget-wide v16, v0, v6

    invoke-static/range {v16 .. v17}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v16

    and-long v18, v14, v7

    shl-long v20, v16, v11

    or-long v18, v18, v20

    ushr-long/2addr v14, v11

    and-long v16, v16, v12

    or-long v14, v14, v16

    const/16 v16, 0x4

    aget-wide v20, v0, v16

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v20

    const/16 v17, 0x5

    aget-wide v22, v0, v17

    invoke-static/range {v22 .. v23}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v22

    and-long v24, v20, v7

    shl-long v26, v22, v11

    or-long v24, v24, v26

    ushr-long v20, v20, v11

    and-long v12, v22, v12

    or-long v12, v20, v12

    const/16 v20, 0x6

    aget-wide v21, v0, v20

    invoke-static/range {v21 .. v22}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v21

    and-long v7, v21, v7

    ushr-long v26, v21, v11

    const/16 v0, 0x2c

    shl-long v28, v2, v0

    xor-long v9, v9, v28

    shl-long v28, v14, v0

    xor-long v18, v18, v28

    const/16 v11, 0x14

    ushr-long v28, v2, v11

    xor-long v18, v18, v28

    shl-long v28, v12, v0

    xor-long v23, v24, v28

    ushr-long v28, v14, v11

    xor-long v23, v23, v28

    shl-long v28, v26, v0

    xor-long v7, v7, v28

    ushr-long v28, v12, v11

    xor-long v7, v7, v28

    const/16 v0, 0xd

    shl-long v28, v2, v0

    xor-long v7, v7, v28

    const/16 v11, 0x34

    ushr-long v21, v21, v11

    shl-long v28, v14, v0

    xor-long v21, v21, v28

    const/16 v11, 0x33

    ushr-long/2addr v2, v11

    xor-long v2, v21, v2

    shl-long v21, v12, v0

    ushr-long/2addr v14, v11

    xor-long v14, v21, v14

    shl-long v21, v26, v0

    ushr-long v11, v12, v11

    xor-long v11, v21, v11

    const/4 v0, 0x7

    new-array v0, v0, [J

    aput-wide v9, v0, v1

    aput-wide v18, v0, v4

    aput-wide v23, v0, v5

    aput-wide v7, v0, v6

    aput-wide v2, v0, v16

    aput-wide v14, v0, v17

    aput-wide v11, v0, v20

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object v1
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [J

    const/16 v1, 0xd

    new-array v1, v1, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->c([J[J)V

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    const/16 v0, 0xd

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->c([J[J)V

    const/4 p0, 0x0

    move v3, p0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, v1, v3

    aget-wide v6, v2, v3

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    new-array v2, v2, [J

    invoke-static {p1, p2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->b([J[J[J)V

    :goto_1
    if-ge p0, v0, :cond_1

    aget-wide p1, v1, p0

    aget-wide v3, v2, p0

    xor-long/2addr p1, v3

    aput-wide p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x7

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

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

    const/16 v0, 0x38

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT409FieldElement;->d:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v1, 0x6

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
