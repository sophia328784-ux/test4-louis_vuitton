.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    .locals 26

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
    if-ne v0, v1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v6, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/16 v8, 0x10

    new-array v9, v8, [I

    const/16 v10, 0x8

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    iget-object v7, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    goto :goto_0

    :cond_3
    invoke-static {v4, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v12, v6, v11}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v12, v4, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    iget-object v6, v7, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v12, v6, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    move-object v6, v11

    move-object v7, v12

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    :goto_1
    move/from16 v16, v5

    goto :goto_2

    :cond_4
    invoke-static {v1, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v13, v2, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_1

    :goto_2
    new-array v5, v10, [I

    invoke-static {v2, v6, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    invoke-static {v3, v7, v11}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    invoke-static {v5}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v6

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v6, :cond_6

    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_6
    new-array v6, v10, [I

    invoke-static {v5, v6}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    new-array v8, v10, [I

    invoke-static {v6, v5, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v6, v2, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat256;->x([I)V

    goto :goto_3

    :cond_7
    sget-object v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a:[I

    invoke-static {v2, v8, v8}, Lorg/spongycastle/math/raw/Nat256;->s([I[I[I)I

    :goto_3
    invoke-static {v3, v8, v9}, Lorg/spongycastle/math/raw/Nat256;->p([I[I[I)V

    invoke-static {v12, v12, v8}, Lorg/spongycastle/math/raw/Nat256;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->c(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v11, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    invoke-static {v3, v8, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    new-instance v13, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v13, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v8, v13, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v12, v3, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    invoke-static {v8, v11, v9}, Lorg/spongycastle/math/raw/Nat256;->q([I[I[I)I

    sget-object v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b:[I

    const/16 v11, 0x10

    invoke-static {v11, v9, v3}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    aget v11, v9, v16

    int-to-long v10, v11

    const-wide v17, 0xffffffffL

    and-long v10, v10, v17

    aget v12, v3, v16

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    int-to-long v2, v12

    and-long v2, v2, v17

    sub-long/2addr v10, v2

    long-to-int v2, v10

    aput v2, v9, v16

    const/16 v2, 0x20

    shr-long/2addr v10, v2

    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    const/16 v12, 0x8

    invoke-static {v12, v9, v3}, Lorg/spongycastle/math/raw/Nat;->h(I[II)I

    move-result v10

    int-to-long v10, v10

    goto :goto_4

    :cond_8
    const/16 v12, 0x8

    :goto_4
    aget v3, v9, v12

    move/from16 p1, v2

    int-to-long v2, v3

    and-long v2, v2, v17

    const-wide/16 v24, 0x13

    add-long v2, v2, v24

    add-long/2addr v2, v10

    long-to-int v10, v2

    aput v10, v9, v12

    shr-long v2, v2, p1

    cmp-long v10, v2, v22

    const/16 v11, 0xf

    if-eqz v10, :cond_9

    const/16 v2, 0x9

    invoke-static {v11, v9, v2}, Lorg/spongycastle/math/raw/Nat;->o(I[II)I

    move-result v2

    int-to-long v2, v2

    :cond_9
    aget v10, v9, v11

    move/from16 p1, v11

    int-to-long v11, v10

    and-long v10, v11, v17

    aget v12, v21, p1

    const/16 v19, 0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v21, v2

    int-to-long v2, v12

    and-long v2, v2, v17

    sub-long/2addr v10, v2

    add-long v10, v10, v21

    long-to-int v2, v10

    aput v2, v9, p1

    goto :goto_5

    :cond_a
    move-object/from16 v20, v2

    :goto_5
    invoke-static {v9, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->b([I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    if-nez v14, :cond_b

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    :cond_b
    if-nez v15, :cond_c

    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    :cond_c
    if-eqz v14, :cond_d

    if-eqz v15, :cond_d

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v0, v2, v6}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->o(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v2, v3, v16

    const/16 v19, 0x1

    aput-object v1, v3, v19

    new-instance v17, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move/from16 v22, v0

    move-object/from16 v21, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v20

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v22}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v17
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->m()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECPoint;
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    move-object v6, v5

    check-cast v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v7, 0x1

    aget-object v8, v3, v7

    check-cast v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    if-nez v8, :cond_2

    check-cast v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->o(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v8

    aput-object v8, v3, v7

    :cond_2
    const/16 v3, 0x8

    new-array v5, v3, [I

    iget-object v9, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v9, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    invoke-static {v5, v5, v5}, Lorg/spongycastle/math/raw/Nat256;->b([I[I[I)I

    move-result v9

    iget-object v10, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    aget v11, v10, v4

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    aget v15, v5, v4

    move-wide/from16 v16, v13

    int-to-long v13, v15

    and-long v13, v13, v16

    add-long/2addr v11, v13

    long-to-int v13, v11

    aput v13, v5, v4

    const/16 v13, 0x20

    ushr-long/2addr v11, v13

    aget v14, v10, v7

    int-to-long v14, v14

    and-long v14, v14, v16

    move/from16 v18, v4

    aget v4, v5, v7

    move/from16 v19, v13

    move-wide/from16 v20, v14

    int-to-long v13, v4

    and-long v13, v13, v16

    add-long v14, v20, v13

    add-long/2addr v14, v11

    long-to-int v4, v14

    aput v4, v5, v7

    ushr-long v11, v14, v19

    const/4 v4, 0x2

    aget v13, v10, v4

    int-to-long v13, v13

    and-long v13, v13, v16

    aget v15, v5, v4

    move/from16 v20, v7

    move-object/from16 v21, v8

    int-to-long v7, v15

    and-long v7, v7, v16

    add-long/2addr v13, v7

    add-long/2addr v13, v11

    long-to-int v7, v13

    aput v7, v5, v4

    ushr-long v7, v13, v19

    const/4 v11, 0x3

    aget v12, v10, v11

    int-to-long v12, v12

    and-long v12, v12, v16

    aget v14, v5, v11

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v12, v7

    long-to-int v7, v12

    aput v7, v5, v11

    ushr-long v7, v12, v19

    const/4 v11, 0x4

    aget v12, v10, v11

    int-to-long v12, v12

    and-long v12, v12, v16

    aget v14, v5, v11

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v12, v7

    long-to-int v7, v12

    aput v7, v5, v11

    ushr-long v7, v12, v19

    const/4 v11, 0x5

    aget v12, v10, v11

    int-to-long v12, v12

    and-long v12, v12, v16

    aget v14, v5, v11

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v12, v7

    long-to-int v7, v12

    aput v7, v5, v11

    ushr-long v7, v12, v19

    const/4 v11, 0x6

    aget v12, v10, v11

    int-to-long v12, v12

    and-long v12, v12, v16

    aget v14, v5, v11

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v12, v7

    long-to-int v7, v12

    aput v7, v5, v11

    ushr-long v7, v12, v19

    const/4 v11, 0x7

    aget v10, v10, v11

    int-to-long v12, v10

    and-long v12, v12, v16

    aget v10, v5, v11

    int-to-long v14, v10

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v12, v7

    long-to-int v7, v12

    aput v7, v5, v11

    ushr-long v7, v12, v19

    long-to-int v7, v7

    add-int/2addr v9, v7

    invoke-static {v9, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->c(I[I)V

    new-array v7, v3, [I

    invoke-static {v1, v7}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->h([I[I)V

    new-array v8, v3, [I

    invoke-static {v7, v1, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    new-array v1, v3, [I

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v8, v2, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v1, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->h([I[I)V

    new-array v2, v3, [I

    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    invoke-static {v2, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->h([I[I)V

    new-instance v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v11, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v3, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v5, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    new-instance v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v12, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v8, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v1, v3, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    invoke-static {v8, v5, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v8, v2, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->g([I[I[I)V

    new-instance v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1, v7}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    iget-object v5, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v3, v5, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    :cond_3
    new-instance v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v3, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    move-object/from16 v8, v21

    iget-object v2, v8, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v5, v2, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    invoke-static {v5, v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->h([I[I)V

    new-instance v9, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    new-array v13, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v13, v18

    aput-object v3, v13, v20

    iget-boolean v14, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    invoke-direct/range {v9 .. v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v9
.end method

.method public final o(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v0, p1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    move-object p2, v1

    :cond_1
    invoke-static {p2, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->d([I[I)V

    iget-object p0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->d:[I

    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->a([I[I[I)V

    return-object v0
.end method
