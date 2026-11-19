.class public Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SourceFile"


# instance fields
.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x3

    .line 66
    new-array v0, v0, [J

    .line 67
    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 12

    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xa3

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat192;->h(Ljava/math/BigInteger;)[J

    move-result-object p1

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const/16 v3, 0x23

    ushr-long v3, v1, v3

    const/4 v5, 0x0

    aget-wide v6, p1, v5

    const/4 v8, 0x3

    shl-long v8, v3, v8

    xor-long/2addr v8, v3

    const/4 v10, 0x6

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    const/4 v10, 0x7

    shl-long/2addr v3, v10

    xor-long/2addr v3, v8

    xor-long/2addr v3, v6

    aput-wide v3, p1, v5

    const-wide v3, 0x7ffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    return-void

    :cond_0
    const-string p0, "x value invalid for SecT163FieldElement"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

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

    aget-wide p0, p1, v6

    xor-long/2addr p0, v7

    const/4 v7, 0x3

    new-array v7, v7, [J

    aput-wide v1, v7, v0

    aput-wide v4, v7, v3

    aput-wide p0, v7, v6

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final b()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 p0, 0x3

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    aput-wide v7, p0, v6

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object v0
.end method

.method public final d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->g()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v1, 0x2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

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

    const/16 p0, 0xa3

    return p0
.end method

.method public final g()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->m([J)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v0, [J

    new-array v3, v0, [J

    const/4 v4, 0x6

    new-array v4, v4, [J

    invoke-static {p0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->d([J[J)V

    invoke-static {v4, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->f([J[J)V

    const/4 p0, 0x1

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    invoke-static {v2, v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    invoke-static {v3, v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    const/16 p0, 0x9

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    const/16 p0, 0x1b

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    invoke-static {v3, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    const/16 p0, 0x51

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->g([JI[J)V

    invoke-static {v2, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 7

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

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
    const/4 v3, 0x3

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->i([JI)I

    move-result p0

    const v0, 0x27fb3

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->m([J)Z

    move-result p0

    return p0
.end method

.method public final j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final k(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p3, p3, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v0, 0x6

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->b([J[J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->b([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->a([J[J[J)V

    const/4 p0, 0x3

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->f([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final m()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public final n()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 15

    const/4 v0, 0x3

    new-array v1, v0, [J

    new-array v0, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-wide v6, p0, v5

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

    aput-wide v3, v0, v2

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Lorg/spongycastle/math/raw/Interleave;->e(J)J

    move-result-wide v3

    and-long v6, v3, v8

    ushr-long/2addr v3, v12

    aput-wide v3, v0, v5

    sget-object p0, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->a:[J

    invoke-static {v0, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->e([J[J[J)V

    aget-wide v3, v1, v2

    xor-long/2addr v3, v10

    aput-wide v3, v1, v2

    aget-wide v2, v1, v5

    xor-long/2addr v2, v6

    aput-wide v2, v1, v5

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final o()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x6

    new-array v1, v1, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->d([J[J)V

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->f([J[J)V

    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p0
.end method

.method public final p(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    iget-object p2, p2, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    const/4 v0, 0x6

    new-array v1, v0, [J

    new-array v2, v0, [J

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->d([J[J)V

    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->a([J[J[J)V

    new-array p0, v0, [J

    invoke-static {p1, p2, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->b([J[J[J)V

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->a([J[J[J)V

    const/4 p0, 0x3

    new-array p0, p0, [J

    invoke-static {v1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163Field;->f([J[J)V

    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;-><init>([J)V

    return-object p1
.end method

.method public final q(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public final r()Z
    .locals 5

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

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

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT163FieldElement;->d:[J

    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->u([J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
