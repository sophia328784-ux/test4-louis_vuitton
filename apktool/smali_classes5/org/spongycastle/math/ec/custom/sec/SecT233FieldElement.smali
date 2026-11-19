.class public Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;
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
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

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

    const/16 v1, 0xe9

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->i(Ljava/math/BigInteger;)[J

    move-result-object p1

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    const/16 v3, 0x29

    ushr-long v3, v1, v3

    const/4 v5, 0x0

    aget-wide v6, p1, v5

    xor-long/2addr v6, v3

    aput-wide v6, p1, v5

    const/4 v5, 0x1

    aget-wide v6, p1, v5

    const/16 v8, 0xa

    shl-long/2addr v3, v8

    xor-long/2addr v3, v6

    aput-wide v3, p1, v5

    const-wide v3, 0x1ffffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    return-void

    :cond_0
    const-string p0, "x value invalid for SecT233FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

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

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

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

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->g([J[J)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0xe9

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    invoke-static {v2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    invoke-static {v2, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/16 v3, 0xe

    invoke-static {v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/16 p0, 0x1d

    invoke-static {v0, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/16 p0, 0x3a

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    const/16 p0, 0x74

    invoke-static {v0, p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->i([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    invoke-static {v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->m([J)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x238dda

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->f([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->c([J[J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 26

    const/4 v0, 0x4

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    invoke-static {v3, v4}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    invoke-static {v6, v7}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long/2addr v10, v13

    ushr-long/2addr v3, v12

    const-wide v13, -0x100000000L

    and-long/2addr v6, v13

    or-long/2addr v3, v6

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    invoke-static {v6, v7}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v6

    const/4 v15, 0x3

    aget-wide v16, v1, v15

    invoke-static/range {v16 .. v17}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v16

    and-long/2addr v8, v6

    shl-long v18, v16, v12

    or-long v8, v8, v18

    ushr-long/2addr v6, v12

    and-long v13, v16, v13

    or-long/2addr v6, v13

    const/16 v1, 0x1b

    ushr-long v13, v6, v1

    ushr-long v16, v3, v1

    const/16 v1, 0x25

    shl-long v18, v6, v1

    or-long v16, v16, v18

    xor-long v6, v6, v16

    shl-long v16, v3, v1

    xor-long v3, v3, v16

    const/16 v1, 0x8

    new-array v1, v1, [J

    move/from16 p0, v2

    const/16 v2, 0x75

    move/from16 v16, v5

    const/16 v5, 0xbf

    filled-new-array {v12, v2, v5}, [I

    move-result-object v2

    move/from16 v5, p0

    :goto_0
    if-ge v5, v15, :cond_0

    aget v12, v2, v5

    ushr-int/lit8 v17, v12, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-wide v18, v1, v17

    shl-long v20, v3, v12

    xor-long v18, v18, v20

    aput-wide v18, v1, v17

    add-int/lit8 v18, v17, 0x1

    aget-wide v19, v1, v18

    shl-long v21, v6, v12

    move/from16 v23, v15

    neg-int v15, v12

    ushr-long v24, v3, v15

    or-long v21, v21, v24

    xor-long v19, v19, v21

    aput-wide v19, v1, v18

    add-int/lit8 v18, v17, 0x2

    aget-wide v19, v1, v18

    shl-long v21, v13, v12

    ushr-long v24, v6, v15

    or-long v21, v21, v24

    xor-long v19, v19, v21

    aput-wide v19, v1, v18

    add-int/lit8 v17, v17, 0x3

    aget-wide v18, v1, v17

    ushr-long v20, v13, v15

    xor-long v18, v18, v20

    aput-wide v18, v1, v17

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v23

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->g([J[J)V

    aget-wide v1, v0, p0

    xor-long/2addr v1, v10

    aput-wide v1, v0, p0

    aget-wide v1, v0, v16

    xor-long/2addr v1, v8

    aput-wide v1, v0, v16

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object v1
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->h([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->e([J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT233FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->w([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
