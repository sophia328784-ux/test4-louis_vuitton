.class public Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-nez p3, :cond_1

    move p1, v0

    :cond_1
    if-ne p2, p1, :cond_2

    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    return-void

    :cond_2
    const-string p0, "Exactly one of the field elements is null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 27
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v3, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v4, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v4

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v4, :cond_3

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint;->a(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v8, v1, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    const/16 v9, 0x9

    new-array v10, v9, [J

    new-array v11, v9, [J

    new-array v12, v9, [J

    new-array v9, v9, [J

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->h()Z

    move-result v13

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    move-object v13, v14

    goto :goto_0

    :cond_4
    invoke-static {v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    iget-object v15, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    move/from16 v16, v7

    iget-object v7, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    goto :goto_1

    :cond_5
    move/from16 v16, v7

    iget-object v7, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v7, v13, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    iget-object v7, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v7, v13, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    move-object v7, v9

    move-object v15, v11

    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->h()Z

    move-result v17

    if-eqz v17, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object v14

    :goto_2
    iget-object v1, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    if-nez v14, :cond_7

    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    goto :goto_3

    :cond_7
    invoke-static {v1, v14, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    iget-object v1, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v1, v14, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    move-object v1, v10

    move-object v2, v12

    :goto_3
    invoke-static {v2, v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    invoke-static {v1, v15, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v12}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->j()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iget-object v2, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->o()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->b()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v5}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->j:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct {v1, v6, v4, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    :cond_a
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->b:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Lorg/spongycastle/math/ec/ECCurve;->g(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object v8, v1

    move-object v7, v4

    goto :goto_5

    :cond_b
    invoke-static {v9, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    invoke-static {v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object v2

    invoke-static {v1, v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    invoke-static {v15, v2, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v1, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    iget-object v3, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v10, v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->j:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct {v2, v6, v1, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    :cond_c
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v3, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    iget-object v7, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v9, v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    if-eqz v14, :cond_d

    invoke-static {v7, v14, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    :cond_d
    const/16 v2, 0x12

    new-array v8, v2, [J

    invoke-static {v11, v9, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    new-array v10, v2, [J

    invoke-static {v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    move/from16 v11, v16

    :goto_4
    if-ge v11, v2, :cond_e

    aget-wide v14, v8, v11

    aget-wide v17, v10, v11

    xor-long v14, v14, v17

    aput-wide v14, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_e
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v2, v5, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->a([J[J[J)V

    invoke-static {v9, v7, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->f([J[J[J)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    iget-object v4, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v8, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    if-eqz v13, :cond_f

    invoke-static {v7, v13, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    :cond_f
    move-object v7, v1

    move-object v8, v2

    move-object v2, v3

    :goto_5
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x1

    new-array v9, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v2, v9, v16

    iget-boolean v10, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct/range {v5 .. v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v5
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->r()Z

    move-result p0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->r()Z

    move-result v0

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final e()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->j(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECFieldElement;->d(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->a(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    filled-new-array {v0}, [Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECPoint;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v2, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    const/16 v6, 0x9

    new-array v7, v6, [J

    new-array v8, v6, [J

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->h()Z

    move-result v9

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->h([J)[J

    move-result-object v9

    :goto_0
    if-nez v9, :cond_3

    iget-object v10, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    goto :goto_1

    :cond_3
    iget-object v10, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v10, v9, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    invoke-static {v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    move-object v10, v7

    move-object v3, v8

    :goto_1
    new-array v11, v6, [J

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v2, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    move v2, v5

    :goto_2
    if-ge v2, v6, :cond_4

    aget-wide v12, v11, v2

    aget-wide v14, v10, v2

    aget-wide v16, v3, v2

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat576;->a([J)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->j:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct {v1, v4, v2, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    :cond_5
    const/16 v2, 0x12

    new-array v12, v2, [J

    invoke-static {v11, v10, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->f([J[J[J)V

    move v10, v5

    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    iget-object v7, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    invoke-static {v11, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->k([J[J)V

    new-instance v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v13, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    iget-object v11, v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    if-eqz v9, :cond_6

    invoke-static {v11, v3, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->e([J[J[J)V

    :cond_6
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->d:[J

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v1, v9, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->g([J[J[J)V

    move-object v1, v8

    :goto_3
    new-array v3, v2, [J

    invoke-static {v1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->d([J[J)V

    move v1, v10

    :goto_4
    if-ge v1, v2, :cond_8

    aget-wide v14, v12, v1

    aget-wide v16, v3, v1

    xor-long v14, v14, v16

    aput-wide v14, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v12, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->i([J[J)V

    move v1, v10

    :goto_5
    if-ge v1, v6, :cond_9

    aget-wide v2, v8, v1

    aget-wide v14, v7, v1

    aget-wide v16, v11, v1

    xor-long v14, v14, v16

    xor-long/2addr v2, v14

    aput-wide v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v6, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x1

    new-array v7, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v13, v7, v10

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v3
.end method
