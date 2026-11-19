.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    const/16 v8, 0xc

    new-array v9, v8, [I

    const/4 v10, 0x6

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v6}, Lorg/spongycastle/math/raw/Nat192;->k([I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    goto :goto_0

    :cond_3
    invoke-static {v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v12, v4, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v12, v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v12, v4, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    move-object v4, v11

    move-object v5, v12

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat192;->k([I)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    :goto_1
    move/from16 v16, v7

    goto :goto_2

    :cond_4
    invoke-static {v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v13, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_1

    :goto_2
    new-array v7, v10, [I

    invoke-static {v2, v4, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    invoke-static {v3, v5, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    invoke-static {v7}, Lorg/spongycastle/math/raw/Nat192;->l([I)Z

    move-result v4

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v4, :cond_6

    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat192;->l([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    new-array v4, v10, [I

    invoke-static {v12, v7, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat192;->l([I)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_7

    aput v16, v4, v16

    aput v16, v4, v10

    const/4 v2, 0x2

    aput v16, v4, v2

    const/4 v2, 0x3

    aput v16, v4, v2

    const/4 v2, 0x4

    aput v16, v4, v2

    const/4 v2, 0x5

    aput v16, v4, v2

    goto :goto_3

    :cond_7
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a:[I

    invoke-static {v2, v4, v4}, Lorg/spongycastle/math/raw/Nat192;->q([I[I[I)I

    :goto_3
    invoke-static {v3, v4, v9}, Lorg/spongycastle/math/raw/Nat192;->n([I[I[I)V

    invoke-static {v12, v12, v4}, Lorg/spongycastle/math/raw/Nat192;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->c(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    new-instance v13, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v13, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v4, v13, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v12, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    invoke-static {v4, v11, v9}, Lorg/spongycastle/math/raw/Nat192;->o([I[I[I)I

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0xb

    aget v3, v9, v3

    const/4 v11, -0x1

    if-ne v3, v11, :cond_9

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->b:[I

    invoke-static {v8, v9, v3}, Lorg/spongycastle/math/raw/Nat;->l(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->c:[I

    const/16 v11, 0x8

    invoke-static {v11, v3, v9}, Lorg/spongycastle/math/raw/Nat;->e(I[I[I)I

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v8, v9, v11}, Lorg/spongycastle/math/raw/Nat;->o(I[II)I

    :cond_9
    invoke-static {v9, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->b([I[I)V

    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v4, v3, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    if-nez v14, :cond_a

    invoke-static {v4, v6, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    :cond_a
    if-nez v15, :cond_b

    invoke-static {v4, v1, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    :cond_b
    new-array v1, v10, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v3, v1, v16

    new-instance v17, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move/from16 v22, v0

    move-object/from16 v21, v1

    move-object/from16 v19, v2

    move-object/from16 v18, v5

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v22}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v17
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->m()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECPoint;
    .locals 12

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat192;->l([I)Z

    move-result v1

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    const/4 v5, 0x6

    new-array v6, v5, [I

    invoke-static {v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    new-array v7, v5, [I

    invoke-static {v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    new-array v8, v5, [I

    iget-object v9, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v9, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    invoke-static {v8, v8, v8}, Lorg/spongycastle/math/raw/Nat192;->b([I[I[I)I

    move-result v9

    invoke-static {v9, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->c(I[I)V

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v6, v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v5, v6}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    move-result v1

    invoke-static {v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->c(I[I)V

    new-array v1, v5, [I

    invoke-static {v5, v7, v1}, Lorg/spongycastle/math/raw/Nat;->u(I[I[I)I

    move-result v9

    invoke-static {v9, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->c(I[I)V

    move v9, v4

    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v4, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v7, v4, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->d([I[I)V

    invoke-static {v7, v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    invoke-static {v7, v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    move v10, v5

    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v11, v5, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v6, v7, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    invoke-static {v11, v8, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    invoke-static {v11, v1, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->f([I[I[I)V

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    iget-object v6, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v10, v0, v9, v6}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    aget v0, v6, v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a:[I

    invoke-static {v6, v0}, Lorg/spongycastle/math/raw/Nat192;->j([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x11c9

    invoke-static {v10, v0, v6}, Lorg/spongycastle/math/raw/Nat;->b(II[I)V

    :cond_3
    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat192;->k([I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->d:[I

    invoke-static {v6, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->a([I[I[I)V

    :cond_4
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    const/4 v0, 0x1

    new-array v6, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v6, v9

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method
