.class public Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    .locals 39

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

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    const/16 v8, 0x8

    new-array v9, v8, [I

    const/4 v10, 0x4

    new-array v11, v10, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v6}, Lorg/spongycastle/math/raw/Nat128;->c([I)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    goto :goto_0

    :cond_3
    invoke-static {v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v12, v4, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v12, v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v12, v4, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    move-object v4, v11

    move-object v5, v12

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat128;->c([I)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    :goto_1
    move/from16 v16, v7

    goto :goto_2

    :cond_4
    invoke-static {v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v13, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    move-object v2, v9

    move-object v3, v13

    goto :goto_1

    :goto_2
    new-array v7, v10, [I

    invoke-static {v2, v4, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    invoke-static {v3, v5, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    invoke-static {v7}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v4

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v4, :cond_6

    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    new-array v4, v10, [I

    invoke-static {v12, v7, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v2

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    aput v16, v4, v16

    aput v16, v4, v8

    aput v16, v4, v18

    aput v16, v4, v17

    goto :goto_3

    :cond_7
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v2, v4, v4}, Lorg/spongycastle/math/raw/Nat128;->g([I[I[I)I

    :goto_3
    invoke-static {v3, v4, v9}, Lorg/spongycastle/math/raw/Nat128;->e([I[I[I)V

    invoke-static {v12, v12, v4}, Lorg/spongycastle/math/raw/Nat128;->a([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->e(I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    new-instance v13, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v13, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v4, v13, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v12, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    aget v3, v11, v16

    move/from16 v19, v8

    move-object v12, v9

    int-to-long v8, v3

    const-wide v20, 0xffffffffL

    and-long v8, v8, v20

    aget v3, v11, v19

    move-object/from16 v23, v11

    int-to-long v10, v3

    and-long v10, v10, v20

    aget v3, v23, v18

    move-object/from16 v18, v2

    int-to-long v2, v3

    and-long v2, v2, v20

    move-wide/from16 v24, v2

    aget v2, v23, v17

    int-to-long v2, v2

    and-long v2, v2, v20

    const-wide/16 v26, 0x0

    move-wide/from16 v28, v2

    move-object/from16 v17, v5

    move-wide/from16 v22, v8

    move/from16 v5, v16

    move-wide/from16 v2, v26

    :goto_4
    const/4 v8, 0x4

    if-ge v5, v8, :cond_8

    aget v9, v4, v5

    int-to-long v8, v9

    and-long v8, v8, v20

    mul-long v30, v8, v22

    move/from16 v27, v5

    aget v5, v12, v27

    move-wide/from16 v32, v8

    int-to-long v8, v5

    and-long v8, v8, v20

    add-long v8, v30, v8

    long-to-int v5, v8

    aput v5, v12, v27

    const/16 v5, 0x20

    ushr-long/2addr v8, v5

    mul-long v30, v32, v10

    add-int/lit8 v34, v27, 0x1

    move/from16 v35, v5

    aget v5, v12, v34

    move-wide/from16 v36, v8

    int-to-long v8, v5

    and-long v8, v8, v20

    add-long v30, v30, v8

    add-long v8, v30, v36

    long-to-int v5, v8

    aput v5, v12, v34

    ushr-long v8, v8, v35

    mul-long v30, v32, v24

    add-int/lit8 v5, v27, 0x2

    move/from16 v36, v5

    aget v5, v12, v36

    move-wide/from16 v37, v8

    int-to-long v8, v5

    and-long v8, v8, v20

    add-long v30, v30, v8

    add-long v8, v30, v37

    long-to-int v5, v8

    aput v5, v12, v36

    ushr-long v8, v8, v35

    mul-long v30, v32, v28

    add-int/lit8 v5, v27, 0x3

    move/from16 v32, v5

    aget v5, v12, v32

    move-wide/from16 v36, v8

    int-to-long v8, v5

    and-long v8, v8, v20

    add-long v30, v30, v8

    add-long v8, v30, v36

    long-to-int v5, v8

    aput v5, v12, v32

    ushr-long v8, v8, v35

    add-int/lit8 v5, v27, 0x4

    move/from16 v27, v5

    aget v5, v12, v27

    move-wide/from16 v30, v8

    int-to-long v8, v5

    and-long v8, v8, v20

    add-long/2addr v2, v8

    add-long v2, v2, v30

    long-to-int v5, v2

    aput v5, v12, v27

    ushr-long v2, v2, v35

    move/from16 v5, v34

    goto :goto_4

    :cond_8
    long-to-int v2, v2

    if-nez v2, :cond_9

    const/4 v2, 0x7

    aget v2, v12, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7ffffffe

    if-lt v2, v3, :cond_a

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->b:[I

    invoke-static {v12, v2}, Lorg/spongycastle/math/raw/Nat256;->k([I[I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c:[I

    const/16 v3, 0x8

    invoke-static {v3, v2, v12}, Lorg/spongycastle/math/raw/Nat;->e(I[I[I)I

    :cond_a
    invoke-static {v12, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->d([I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    if-nez v14, :cond_b

    invoke-static {v3, v6, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    :cond_b
    if-nez v15, :cond_c

    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    :cond_c
    move/from16 v1, v19

    new-array v1, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v2, v1, v16

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    new-instance v17, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move/from16 v22, v0

    move-object/from16 v21, v1

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v22}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v17
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->m()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public final n()Lorg/spongycastle/math/ec/ECPoint;
    .locals 13

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat128;->d([I)Z

    move-result v1

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    const/4 v5, 0x4

    new-array v6, v5, [I

    new-array v7, v5, [I

    new-array v8, v5, [I

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    new-array v9, v5, [I

    invoke-static {v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat128;->c([I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    move-object v11, v7

    goto :goto_0

    :cond_2
    move-object v11, v2

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v1, v11, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    invoke-static {v1, v11, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a([I[I[I)V

    invoke-static {v7, v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v7, v7, v7}, Lorg/spongycastle/math/raw/Nat128;->a([I[I[I)I

    move-result v11

    invoke-static {v11, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->e(I[I)V

    invoke-static {v8, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v5, v8}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    move-result v1

    invoke-static {v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->e(I[I)V

    invoke-static {v5, v9, v6}, Lorg/spongycastle/math/raw/Nat;->u(I[I[I)I

    move-result v1

    invoke-static {v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->e(I[I)V

    move v1, v4

    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v9, v4, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v7, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->f([I[I)V

    invoke-static {v9, v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    invoke-static {v9, v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    move v11, v5

    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v5, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v12, v5, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v8, v9, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    invoke-static {v12, v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    invoke-static {v12, v6, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->h([I[I[I)V

    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;

    invoke-direct {v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;-><init>([I)V

    iget-object v7, v6, Lorg/spongycastle/math/ec/custom/sec/SecP128R1FieldElement;->d:[I

    invoke-static {v11, v0, v1, v7}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    aget v0, v7, v0

    ushr-int/2addr v0, v8

    const v9, 0x7ffffffe

    if-lt v0, v9, :cond_4

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->a:[I

    invoke-static {v7, v0}, Lorg/spongycastle/math/raw/Nat128;->b([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->b([I)V

    :cond_4
    if-nez v10, :cond_5

    invoke-static {v7, v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->c([I[I[I)V

    :cond_5
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;

    new-array v0, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v6, v0, v1

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method
