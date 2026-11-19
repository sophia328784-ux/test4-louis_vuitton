.class public Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [J

    .line 66
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 11

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc1

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->i(Ljava/math/BigInteger;)[J

    move-result-object p1

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    const/4 v3, 0x1

    ushr-long v4, v1, v3

    const/4 v6, 0x0

    aget-wide v7, p1, v6

    const/16 v9, 0xf

    shl-long v9, v4, v9

    xor-long/2addr v4, v9

    xor-long/2addr v4, v7

    aput-wide v4, p1, v6

    aget-wide v4, p1, v3

    const/16 v6, 0x32

    ushr-long v6, v1, v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    return-void

    :cond_0
    const-string p0, "x value invalid for SecT193FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

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

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

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

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat256;->g([J[J)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0xc1

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [J

    new-array v0, v0, [J

    const/16 v3, 0x8

    new-array v3, v3, [J

    invoke-static {p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->e([J[J)V

    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    const/4 p0, 0x1

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/4 p0, 0x3

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/4 p0, 0x6

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/16 p0, 0xc

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/16 p0, 0x18

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/16 p0, 0x30

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    const/16 p0, 0x60

    invoke-static {v2, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->h([JI[J)V

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->m([J)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x1d731f

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->o([J)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->f([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->c([J[J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

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

    aget-wide v12, v0, v5

    invoke-static {v12, v13}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v12

    and-long v6, v12, v7

    const/4 v8, 0x3

    aget-wide v14, v0, v8

    shl-long/2addr v14, v11

    xor-long/2addr v6, v14

    ushr-long v14, v12, v11

    const/16 v0, 0x8

    shl-long v16, v2, v0

    xor-long v9, v9, v16

    shl-long v16, v14, v0

    xor-long v6, v6, v16

    const/16 v0, 0x38

    ushr-long v16, v2, v0

    xor-long v6, v6, v16

    const/16 v0, 0x21

    shl-long v16, v2, v0

    xor-long v6, v6, v16

    shl-long/2addr v14, v0

    const/16 v0, 0x1f

    ushr-long/2addr v2, v0

    xor-long/2addr v2, v14

    const/16 v0, 0x3f

    ushr-long v11, v12, v0

    const/4 v0, 0x4

    new-array v0, v0, [J

    aput-wide v9, v0, v1

    aput-wide v6, v0, v4

    aput-wide v2, v0, v5

    aput-wide v11, v0, v8

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object v1
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/16 v1, 0x8

    new-array v1, v1, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->e([J[J)V

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    const/16 v0, 0x8

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->e([J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->c([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->a([J[J[J)V

    const/4 p0, 0x4

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->g([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT193FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->w([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
