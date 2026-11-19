.class public Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    .locals 23

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

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    const/16 v8, 0x10

    new-array v9, v8, [I

    const/16 v10, 0x8

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v6}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    goto :goto_0

    :cond_3
    invoke-static {v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v12, v4, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v12, v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v12, v4, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    move-object v4, v11

    move-object v5, v12

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    :goto_1
    move/from16 v16, v7

    goto :goto_2

    :cond_4
    invoke-static {v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v13, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_1

    :goto_2
    new-array v7, v10, [I

    invoke-static {v2, v4, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v3, v5, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v7}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v4

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v4, :cond_6

    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    new-array v4, v10, [I

    invoke-static {v12, v7, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat256;->x([I)V

    goto :goto_3

    :cond_7
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->a:[I

    invoke-static {v2, v4, v4}, Lorg/spongycastle/math/raw/Nat256;->s([I[I[I)I

    :goto_3
    invoke-static {v3, v4, v9}, Lorg/spongycastle/math/raw/Nat256;->p([I[I[I)V

    invoke-static {v12, v12, v4}, Lorg/spongycastle/math/raw/Nat256;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->d(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    new-instance v10, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v10, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    iget-object v4, v10, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v12, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v4, v11, v9}, Lorg/spongycastle/math/raw/Nat256;->q([I[I[I)I

    move-result v3

    const/4 v11, 0x1

    sget-object v12, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b:[I

    if-nez v3, :cond_8

    const/16 v3, 0xf

    aget v3, v9, v3

    ushr-int/2addr v3, v11

    const v13, 0x7fffffff

    if-lt v3, v13, :cond_9

    invoke-static {v8, v9, v12}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-static {v8, v12, v9}, Lorg/spongycastle/math/raw/Nat;->y(I[I[I)I

    :cond_9
    invoke-static {v9, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->c([I[I)V

    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v3, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    iget-object v4, v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    if-nez v14, :cond_a

    invoke-static {v4, v6, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    :cond_a
    if-nez v15, :cond_b

    invoke-static {v4, v1, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    :cond_b
    new-array v1, v11, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v3, v1, v16

    new-instance v17, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move/from16 v22, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v18, v5

    move-object/from16 v20, v10

    invoke-direct/range {v17 .. v22}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v17
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->m()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECPoint;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat256;->n([I)Z

    move-result v2

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    const/16 v6, 0x8

    new-array v7, v6, [I

    new-array v8, v6, [I

    new-array v9, v6, [I

    invoke-static {v1, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    new-array v10, v6, [I

    invoke-static {v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat256;->l([I)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    move-object v12, v8

    goto :goto_0

    :cond_2
    move-object v12, v3

    :goto_0
    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v2, v12, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v2, v12, v8}, Lorg/spongycastle/math/raw/Nat256;->a([I[I[I)I

    move-result v12

    sget-object v13, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->a:[I

    const/4 v14, -0x1

    const/4 v15, 0x7

    if-nez v12, :cond_3

    aget v12, v8, v15

    if-ne v12, v14, :cond_4

    invoke-static {v8, v13}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    invoke-static {v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->a([I)V

    :cond_4
    invoke-static {v8, v7, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v8, v8, v8}, Lorg/spongycastle/math/raw/Nat256;->b([I[I[I)I

    move-result v12

    invoke-static {v12, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->d(I[I)V

    invoke-static {v9, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v6, v9}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    move-result v2

    invoke-static {v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->d(I[I)V

    invoke-static {v6, v10, v7}, Lorg/spongycastle/math/raw/Nat;->u(I[I[I)I

    move-result v2

    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->d(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    iget-object v10, v2, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v8, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->e([I[I)V

    invoke-static {v10, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v10, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    new-instance v12, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    move/from16 v16, v15

    iget-object v15, v12, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v9, v10, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    invoke-static {v15, v8, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    invoke-static {v15, v7, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->g([I[I[I)V

    new-instance v7, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v7, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    iget-object v8, v7, Lorg/spongycastle/math/ec/custom/sec/SecP256R1FieldElement;->d:[I

    invoke-static {v6, v1, v5, v8}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    move-result v1

    if-nez v1, :cond_5

    aget v1, v8, v16

    if-ne v1, v14, :cond_6

    invoke-static {v8, v13}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->a([I)V

    :cond_6
    if-nez v11, :cond_7

    invoke-static {v8, v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->b([I[I[I)V

    :cond_7
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v7, v1, v5

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move-object v7, v1

    move-object v5, v2

    move-object v6, v12

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v3
.end method
