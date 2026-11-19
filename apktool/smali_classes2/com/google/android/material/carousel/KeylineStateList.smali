.class public Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/carousel/KeylineState;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:[F

.field public final e:[F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->b:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->c:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->f:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object p1

    iget p1, p1, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    invoke-static {v0, p3}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->g:F

    invoke-static {v1, p2, v0}, Lcom/google/android/material/carousel/KeylineStateList;->d(FLjava/util/ArrayList;Z)[F

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/carousel/KeylineStateList;->d:[F

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/google/android/material/carousel/KeylineStateList;->d(FLjava/util/ArrayList;Z)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->e:[F

    return-void
.end method

.method public static d(FLjava/util/ArrayList;Z)[F
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    sub-float/2addr v5, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    invoke-virtual {v5}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    sub-float v5, v4, v5

    :goto_1
    div-float/2addr v5, p0

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    aget v3, v1, v3

    add-float/2addr v3, v5

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static e(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    move/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    move/from16 v2, p6

    invoke-direct {v3, v0, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 v0, 0x0

    move/from16 v2, p3

    move v12, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v6, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    add-float/2addr v4, v2

    move/from16 v14, p4

    move/from16 v15, p5

    if-lt v12, v14, :cond_0

    if-gt v12, v15, :cond_0

    const/4 v5, 0x1

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    iget v5, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    iget-boolean v8, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    iget v9, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    iget v4, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    add-float/2addr v2, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/google/android/material/carousel/KeylineState;->e:I

    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->d:I

    iget v4, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    sget-object v5, Lcom/google/android/material/carousel/KeylineStateList$1;->a:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    if-eq v5, v9, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-direct {v10, v4, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v15, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    if-eqz v15, :cond_1

    if-ne v4, v0, :cond_1

    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    move v13, v12

    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    move v14, v13

    iget v13, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v11

    move v11, v14

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    goto :goto_8

    :cond_1
    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    if-eqz p3, :cond_2

    add-float v12, v12, p1

    goto :goto_2

    :cond_2
    sub-float v12, v12, p1

    :goto_2
    if-eqz p3, :cond_3

    move/from16 v17, p1

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    :goto_3
    if-eqz p3, :cond_4

    move/from16 v18, v6

    goto :goto_4

    :cond_4
    move/from16 v18, p1

    :goto_4
    if-lt v4, v3, :cond_5

    if-gt v4, v2, :cond_5

    move v14, v9

    :goto_5
    move v13, v12

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :goto_6
    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    if-eqz p3, :cond_6

    div-float v16, v11, v8

    add-float v16, v16, v13

    int-to-float v7, v1

    sub-float v7, v16, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_7

    :cond_6
    div-float v7, v11, v8

    sub-float v7, v13, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_7
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v19, v13

    move v13, v11

    move/from16 v11, v19

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-direct {v10, v4, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    if-eqz v11, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float v0, p1, v0

    if-eqz p3, :cond_b

    move/from16 v1, p1

    goto :goto_a

    :cond_b
    move v1, v6

    :goto_a
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_10

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    if-eqz v12, :cond_c

    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    move v13, v12

    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    move v14, v13

    iget v13, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v11

    move v11, v14

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    goto :goto_10

    :cond_c
    if-lt v7, v3, :cond_d

    if-gt v7, v2, :cond_d

    move v14, v9

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_c
    iget v12, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    sub-float v13, v12, v0

    move/from16 v12, p4

    invoke-static {v13, v4, v12}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v15

    div-float v16, v13, v8

    add-float v16, v16, v1

    iget v6, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    sub-float v6, v16, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    if-eqz p3, :cond_e

    move/from16 v17, v6

    goto :goto_d

    :cond_e
    const/16 v17, 0x0

    :goto_d
    if-eqz p3, :cond_f

    const/16 v18, 0x0

    :goto_e
    move v12, v15

    goto :goto_f

    :cond_f
    move/from16 v18, v6

    goto :goto_e

    :goto_f
    const/4 v15, 0x0

    move/from16 v19, v16

    move/from16 v16, v11

    move/from16 v11, v19

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->b(FFFZZFFF)V

    add-float/2addr v1, v13

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_b

    :cond_10
    invoke-virtual {v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->c:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method

.method public final b(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/google/android/material/carousel/KeylineStateList;->f:F

    add-float v5, v2, v4

    iget v6, v0, Lcom/google/android/material/carousel/KeylineStateList;->g:F

    sub-float v7, v3, v6

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->c()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v8

    iget v8, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->g:F

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineStateList;->a()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v9

    iget v9, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->h:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_0

    add-float/2addr v5, v8

    :cond_0
    cmpl-float v4, v6, v9

    if-nez v4, :cond_1

    sub-float/2addr v7, v9

    :cond_1
    cmpg-float v4, v1, v5

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v4, :cond_2

    invoke-static {v8, v6, v2, v5, v1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->d:[F

    goto :goto_0

    :cond_2
    cmpl-float v2, v1, v7

    if-lez v2, :cond_8

    invoke-static {v6, v8, v7, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->c:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->e:[F

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v7, 0x1

    move v9, v7

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ge v9, v3, :cond_4

    aget v12, v0, v9

    cmpg-float v13, v1, v12

    if-gtz v13, :cond_3

    add-int/lit8 v0, v9, -0x1

    invoke-static {v6, v8, v5, v12, v1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    move-result v1

    int-to-float v0, v0

    int-to-float v3, v9

    new-array v5, v10, [F

    aput v1, v5, v4

    aput v0, v5, v7

    aput v3, v5, v11

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v5, v12

    goto :goto_1

    :cond_4
    new-array v5, v10, [F

    fill-array-data v5, :array_0

    :goto_2
    aget v0, v5, v7

    float-to-int v0, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    aget v1, v5, v11

    float-to-int v1, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    aget v2, v5, v4

    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    iget-object v5, v0, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    iget v6, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    cmpl-float v3, v3, v6

    const/4 v6, 0x0

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState$Keyline;

    new-instance v12, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v8, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    iget v9, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    invoke-static {v8, v9, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v13

    iget v8, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    iget v9, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    invoke-static {v8, v9, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v14

    iget v8, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    iget v9, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    invoke-static {v8, v9, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v15

    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    invoke-static {v6, v7, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFFFFZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->d:I

    iget v4, v1, Lcom/google/android/material/carousel/KeylineState;->d:I

    invoke-static {v3, v4, v2}, Lcom/google/android/material/animation/AnimationUtils;->c(IIF)I

    move-result v12

    iget v3, v0, Lcom/google/android/material/carousel/KeylineState;->e:I

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->e:I

    invoke-static {v3, v1, v2}, Lcom/google/android/material/animation/AnimationUtils;->c(IIF)I

    move-result v13

    new-instance v9, Lcom/google/android/material/carousel/KeylineState;

    iget v10, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    iget v14, v0, Lcom/google/android/material/carousel/KeylineState;->f:I

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/ArrayList;III)V

    return-object v9

    :cond_6
    const-string v0, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v6

    :cond_7
    const-string v0, "Keylines being linearly interpolated must have the same item size."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v6

    :cond_8
    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final c()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/carousel/KeylineStateList;->b:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lfc;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/carousel/KeylineState;

    return-object p0
.end method
