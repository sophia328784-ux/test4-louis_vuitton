.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    .locals 22

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

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v4, v1, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->e()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->f()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    const/16 v8, 0x11

    new-array v9, v8, [I

    new-array v10, v8, [I

    new-array v11, v8, [I

    new-array v12, v8, [I

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->h()Z

    move-result v13

    iget-object v6, v6, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    if-eqz v13, :cond_3

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    iget-object v5, v5, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    goto :goto_0

    :cond_3
    invoke-static {v6, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    iget-object v4, v4, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v11, v4, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v11, v6, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v11, v4, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    move-object v4, v10

    move-object v5, v11

    :goto_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->h()Z

    move-result v14

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    if-eqz v14, :cond_4

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    goto :goto_1

    :cond_4
    invoke-static {v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v12, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v12, v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    iget-object v2, v3, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    move-object v2, v9

    move-object v3, v12

    :goto_1
    new-array v15, v8, [I

    invoke-static {v2, v4, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v3, v5, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v8, v15}, Lorg/spongycastle/math/raw/Nat;->r(I[I)Z

    move-result v4

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v4, :cond_6

    invoke-static {v8, v10}, Lorg/spongycastle/math/raw/Nat;->r(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;->n()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v15, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    new-array v4, v8, [I

    invoke-static {v11, v15, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v11, v2, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v3, v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    iget-object v3, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v10, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    invoke-static {v3, v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a([I[I[I)V

    invoke-static {v3, v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v3, v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    new-instance v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v8, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    iget-object v4, v8, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v11, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v4, v10, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v10, v9, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    iget-object v4, v3, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    if-nez v13, :cond_7

    invoke-static {v4, v6, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    :cond_7
    if-nez v14, :cond_8

    invoke-static {v4, v1, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v3, v1, v7

    new-instance v16, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move/from16 v21, v0

    move-object/from16 v20, v1

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    move-object/from16 v19, v8

    invoke-direct/range {v16 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v16
.end method

.method public final i()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->c:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->m()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->i()Z

    move-result v1

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->a:Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->i()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->d:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    const/16 v5, 0x11

    new-array v6, v5, [I

    new-array v7, v5, [I

    new-array v8, v5, [I

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    new-array v9, v5, [I

    invoke-static {v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->h()Z

    move-result v10

    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    if-nez v10, :cond_2

    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    move-object v11, v7

    goto :goto_0

    :cond_2
    move-object v11, v2

    :goto_0
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v1, v11, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v1, v11, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->a([I[I[I)V

    invoke-static {v7, v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v5, v7, v7, v7}, Lorg/spongycastle/math/raw/Nat;->c(I[I[I[I)I

    invoke-static {v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->e([I)V

    invoke-static {v8, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v5, v8}, Lorg/spongycastle/math/raw/Nat;->t(I[I)I

    invoke-static {v8}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->e([I)V

    invoke-static {v5, v9, v6}, Lorg/spongycastle/math/raw/Nat;->u(I[I[I)I

    invoke-static {v6}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->e([I)V

    move v1, v4

    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->f([I[I)V

    invoke-static {v5, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v5, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    move-object v9, v5

    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    iget-object v11, v5, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v8, v9, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    invoke-static {v11, v7, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    invoke-static {v11, v6, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->g([I[I[I)V

    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v6, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    const/16 v7, 0x10

    aget v8, v0, v7

    shl-int/lit8 v9, v8, 0x17

    iget-object v11, v6, Lorg/spongycastle/math/ec/custom/sec/SecP521R1FieldElement;->d:[I

    invoke-static {v7, v0, v9, v11}, Lorg/spongycastle/math/raw/Nat;->s(I[II[I)I

    move-result v0

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    or-int/2addr v0, v8

    and-int/lit16 v0, v0, 0x1ff

    aput v0, v11, v7

    if-nez v10, :cond_3

    invoke-static {v11, v2, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->c([I[I[I)V

    :cond_3
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;

    new-array v0, v9, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v6, v0, v1

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint;->e:Z

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method
