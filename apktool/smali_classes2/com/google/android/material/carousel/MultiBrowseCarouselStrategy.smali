.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:[I


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->d:[I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v5, v3

    :cond_1
    iget v3, v0, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    add-float v8, v3, v4

    iget v3, v0, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    add-float/2addr v3, v4

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float v3, v5, v4

    int-to-float v6, v2

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v5, v3

    add-float/2addr v5, v4

    add-float v3, v8, v4

    add-float v7, v9, v4

    invoke-static {v5, v3, v7}, Landroidx/core/math/MathUtils;->a(FFF)F

    move-result v7

    add-float v3, v13, v7

    const/high16 v5, 0x40000000    # 2.0f

    div-float v11, v3, v5

    mul-float v3, v8, v5

    cmpg-float v10, v6, v3

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-gtz v10, :cond_2

    new-array v10, v12, [I

    aput v15, v10, v15

    goto :goto_0

    :cond_2
    sget-object v10, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->d:[I

    :goto_0
    iget v14, v1, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    sget-object v16, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->e:[I

    if-ne v14, v12, :cond_5

    array-length v14, v10

    move/from16 v17, v5

    new-array v5, v14, [I

    move/from16 v18, v12

    move v12, v15

    :goto_1
    const/4 v15, 0x2

    if-ge v12, v14, :cond_3

    aget v20, v10, v12

    mul-int/lit8 v20, v20, 0x2

    aput v20, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    new-array v10, v15, [I

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_4

    aget v14, v16, v12

    mul-int/2addr v14, v15

    aput v14, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object v12, v10

    move-object v10, v5

    goto :goto_3

    :cond_5
    move/from16 v17, v5

    move/from16 v18, v12

    move-object/from16 v12, v16

    :goto_3
    array-length v5, v12

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v5, :cond_7

    move/from16 v20, v3

    aget v3, v12, v15

    if-le v3, v14, :cond_6

    move v14, v3

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v20

    goto :goto_4

    :cond_7
    move/from16 v20, v3

    int-to-float v3, v14

    mul-float/2addr v3, v11

    sub-float v3, v6, v3

    array-length v5, v10

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v5, :cond_9

    move/from16 v16, v3

    aget v3, v10, v15

    if-le v3, v14, :cond_8

    move v14, v3

    :cond_8
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    goto :goto_5

    :cond_9
    move/from16 v16, v3

    int-to-float v3, v14

    mul-float/2addr v3, v9

    sub-float v3, v16, v3

    div-float/2addr v3, v13

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    move v3, v6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-int v5, v5

    div-float v6, v3, v13

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v15, v14

    sub-int v5, v15, v5

    add-int/lit8 v5, v5, 0x1

    new-array v14, v5, [I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_a

    sub-int v16, v15, v6

    aput v16, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    move v6, v3

    move/from16 v3, v18

    invoke-static/range {v6 .. v14}, Lcom/google/android/material/carousel/Arrangement;->a(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v5

    iget v10, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    iget v12, v5, Lcom/google/android/material/carousel/Arrangement;->g:I

    iget v14, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    iput v10, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I()I

    move-result v0

    iget v10, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    iget v14, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    add-int v15, v10, v14

    add-int/2addr v15, v12

    sub-int/2addr v15, v0

    if-lez v15, :cond_c

    if-gtz v10, :cond_b

    if-le v14, v3, :cond_c

    :cond_b
    move/from16 v19, v3

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    :goto_7
    if-lez v15, :cond_f

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    if-lez v0, :cond_d

    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    goto :goto_8

    :cond_d
    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    if-le v0, v3, :cond_e

    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    :cond_e
    :goto_8
    add-int/lit8 v15, v15, -0x1

    goto :goto_7

    :cond_f
    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    if-nez v0, :cond_10

    iget v10, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    if-nez v10, :cond_10

    cmpl-float v10, v6, v20

    if-lez v10, :cond_10

    iput v3, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    move/from16 v19, v3

    :cond_10
    if-eqz v19, :cond_11

    iget v5, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    filled-new-array {v5}, [I

    move-result-object v10

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v12}, [I

    move-result-object v14

    move-object v12, v0

    invoke-static/range {v6 .. v14}, Lcom/google/android/material/carousel/Arrangement;->a(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v5

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    const v7, 0x7f07016c

    const/4 v8, 0x0

    if-ne v1, v3, :cond_16

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v4

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float v0, v12, v17

    sub-float v10, v8, v0

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v3, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    invoke-static {v8, v1, v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v1

    iget v3, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v7, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    int-to-float v7, v7

    div-float v7, v7, v17

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v7, v13

    invoke-static {v1, v3, v7}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    move-result v3

    iget v7, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    invoke-static {v8, v3, v7, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v7, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v7, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v7

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    int-to-float v9, v9

    div-float v9, v9, v17

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v9, v13

    invoke-static {v7, v8, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    move-result v8

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v8, v9, v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->g:I

    invoke-static {v3, v8, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v8

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v8, v11, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    move-result v11

    iget v13, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v3, v11, v13, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v9, v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v15

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    int-to-float v11, v11

    div-float v11, v11, v17

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    invoke-static {v15, v9, v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    move-result v9

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v13, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v9, v11, v13}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v11, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    invoke-static {v3, v9, v11}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v3

    add-float/2addr v6, v0

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v12, v0, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v11

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v0, v9, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v20

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v0, v9, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v0

    new-instance v9, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v4, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-direct {v9, v4, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    move-object/from16 v18, v9

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    if-lez v2, :cond_12

    iget v4, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    int-to-float v2, v2

    div-float v2, v2, v17

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v2, v9

    const/16 v23, 0x0

    move/from16 v19, v1

    move/from16 v22, v2

    move/from16 v21, v4

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    :cond_12
    move/from16 v1, v20

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    if-lez v2, :cond_13

    iget v4, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    int-to-float v2, v2

    div-float v2, v2, v17

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v2, v9

    const/16 v23, 0x0

    move/from16 v20, v0

    move/from16 v22, v2

    move/from16 v21, v4

    move/from16 v19, v7

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    :cond_13
    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    iget v4, v5, Lcom/google/android/material/carousel/Arrangement;->g:I

    const/16 v23, 0x1

    const/16 v20, 0x0

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    if-lez v2, :cond_14

    iget v4, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    int-to-float v2, v2

    div-float v2, v2, v17

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    const/16 v23, 0x0

    move/from16 v20, v0

    move/from16 v22, v2

    move/from16 v21, v4

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    :cond_14
    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    if-lez v0, :cond_15

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    int-to-float v0, v0

    div-float v0, v0, v17

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    const/16 v23, 0x0

    move/from16 v22, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    :cond_15
    const/4 v13, 0x0

    const/4 v14, 0x1

    move v10, v6

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v4

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float v0, v12, v17

    sub-float v10, v8, v0

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    iget v3, v5, Lcom/google/android/material/carousel/Arrangement;->g:I

    invoke-static {v8, v1, v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v1

    iget v7, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v1, v7, v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    move-result v7

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v8, v7, v9, v3}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v7, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v7, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v7

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    invoke-static {v3, v7, v8, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c(FFFI)F

    move-result v3

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    invoke-static {v3, v8, v9}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    move-result v3

    add-float/2addr v6, v0

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v12, v0, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v11

    iget v0, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v0, v8, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v0

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    iget v9, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-static {v8, v9, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->a(FFF)F

    move-result v4

    new-instance v13, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    invoke-direct {v13, v8, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    move-object v9, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    move-object v13, v9

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->f:F

    iget v8, v5, Lcom/google/android/material/carousel/Arrangement;->g:I

    const/16 v18, 0x1

    const/4 v15, 0x0

    move v14, v1

    move/from16 v16, v2

    move/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->d:I

    if-lez v1, :cond_17

    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->e:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    move v15, v4

    move v14, v7

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    :cond_17
    iget v1, v5, Lcom/google/android/material/carousel/Arrangement;->c:I

    if-lez v1, :cond_18

    iget v2, v5, Lcom/google/android/material/carousel/Arrangement;->b:F

    const/16 v18, 0x0

    move v15, v0

    move/from16 v17, v1

    move/from16 v16, v2

    move v14, v3

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    :cond_18
    move-object v9, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    move v10, v6

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    move-object v13, v9

    invoke-virtual {v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/material/carousel/CarouselLayoutManager;I)Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I()I

    move-result p1

    iget p0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    if-ge p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
