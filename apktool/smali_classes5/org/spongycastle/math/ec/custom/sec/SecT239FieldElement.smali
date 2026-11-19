.class public Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x4

    .line 64
    new-array v0, v0, [J

    .line 65
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 9

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xef

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->i(Ljava/math/BigInteger;)[J

    move-result-object p1

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    const/16 v3, 0x2f

    ushr-long v3, v1, v3

    const/4 v5, 0x0

    aget-wide v6, p1, v5

    xor-long/2addr v6, v3

    aput-wide v6, p1, v5

    const/4 v5, 0x2

    aget-wide v6, p1, v5

    const/16 v8, 0x1e

    shl-long/2addr v3, v8

    xor-long/2addr v3, v6

    aput-wide v3, p1, v5

    const-wide v3, 0x7fffffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    return-void

    :cond_0
    const-string p0, "x value invalid for SecT239FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    aget-wide v9, p1, v6

    xor-long/2addr v7, v9

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    aget-wide p0, p1, v9

    xor-long/2addr p0, v10

    const/4 v10, 0x4

    new-array v10, v10, [J

    aput-wide v1, v10, v0

    aput-wide v4, v10, v3

    aput-wide v7, v10, v6

    aput-wide p0, v10, v9

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

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

    const/4 p0, 0x4

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    aput-wide v10, p0, v9

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->g([J[J)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0xef

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/16 v3, 0xe

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/16 v3, 0x1d

    invoke-static {v0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/16 v3, 0x3b

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    const/16 p0, 0x77

    invoke-static {v0, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    invoke-static {v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->m([J)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x16caffe

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->f([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->c([J[J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 29

    const/4 v0, 0x4

    new-array v1, v0, [J

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

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

    const/4 v7, 0x2

    aget-wide v16, v2, v7

    invoke-static/range {v16 .. v17}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v16

    const/4 v8, 0x3

    aget-wide v18, v2, v8

    invoke-static/range {v18 .. v19}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v18

    and-long v8, v16, v9

    shl-long v20, v18, v13

    or-long v8, v8, v20

    ushr-long v16, v16, v13

    and-long v13, v18, v14

    or-long v13, v16, v13

    const/16 v2, 0x31

    ushr-long v15, v13, v2

    ushr-long v17, v4, v2

    const/16 v2, 0xf

    shl-long v19, v13, v2

    or-long v17, v17, v19

    shl-long v19, v4, v2

    xor-long v13, v13, v19

    const/16 v2, 0x8

    new-array v2, v2, [J

    const/16 v10, 0x27

    move/from16 v19, v0

    const/16 v0, 0x78

    filled-new-array {v10, v0}, [I

    move-result-object v0

    move v10, v3

    :goto_0
    if-ge v10, v7, :cond_0

    aget v20, v0, v10

    ushr-int/lit8 v21, v20, 0x6

    move/from16 p0, v3

    and-int/lit8 v3, v20, 0x3f

    aget-wide v22, v2, v21

    shl-long v24, v4, v3

    xor-long v22, v22, v24

    aput-wide v22, v2, v21

    add-int/lit8 v20, v21, 0x1

    aget-wide v22, v2, v20

    shl-long v24, v13, v3

    move/from16 v26, v6

    neg-int v6, v3

    ushr-long v27, v4, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v20, v21, 0x2

    aget-wide v22, v2, v20

    shl-long v24, v17, v3

    ushr-long v27, v13, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v20, v21, 0x3

    aget-wide v22, v2, v20

    shl-long v24, v15, v3

    ushr-long v27, v17, v6

    or-long v24, v24, v27

    xor-long v22, v22, v24

    aput-wide v22, v2, v20

    add-int/lit8 v21, v21, 0x4

    aget-wide v22, v2, v21

    ushr-long v24, v15, v6

    xor-long v22, v22, v24

    aput-wide v22, v2, v21

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, p0

    move/from16 v6, v26

    goto :goto_0

    :cond_0
    move/from16 p0, v3

    move/from16 v26, v6

    invoke-static {v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    aget-wide v2, v1, p0

    xor-long/2addr v2, v11

    aput-wide v2, v1, p0

    aget-wide v2, v1, v26

    xor-long/2addr v2, v8

    aput-wide v2, v1, v26

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->e([J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

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
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT239FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->w([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
