.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    }
.end annotation


# instance fields
.field public final a:[Lcom/google/android/material/shape/ShapePath;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lcom/google/android/material/shape/ShapePath;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .locals 1

    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapeAppearanceModel;[FFLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    const/4 v11, 0x2

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    const/4 v14, 0x4

    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    const/16 v16, 0x0

    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    const/4 v12, 0x1

    if-ge v9, v14, :cond_a

    if-nez p2, :cond_3

    if-eq v9, v12, :cond_2

    if-eq v9, v11, :cond_1

    const/4 v14, 0x3

    if-eq v9, v14, :cond_0

    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_0
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_1
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_2
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    goto :goto_1

    :cond_3
    new-instance v14, Lcom/google/android/material/shape/ClampedCornerSize;

    aget v11, p2, v9

    invoke-direct {v14, v11}, Lcom/google/android/material/shape/ClampedCornerSize;-><init>(F)V

    :goto_1
    if-eq v9, v12, :cond_6

    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    const/4 v11, 0x3

    if-eq v9, v11, :cond_4

    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_4
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->a:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_5
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/CornerTreatment;

    goto :goto_2

    :cond_6
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/CornerTreatment;

    :goto_2
    aget-object v12, v15, v9

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v14, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    move-result v14

    invoke-virtual {v11, v12, v2, v14}, Lcom/google/android/material/shape/CornerTreatment;->a(Lcom/google/android/material/shape/ShapePath;FF)V

    add-int/lit8 v11, v9, 0x1

    rem-int/lit8 v12, v11, 0x4

    mul-int/lit8 v12, v12, 0x5a

    int-to-float v12, v12

    aget-object v14, v8, v9

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-eq v9, v8, :cond_9

    const/4 v8, 0x2

    if-eq v9, v8, :cond_8

    const/4 v8, 0x3

    if-eq v9, v8, :cond_7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v9

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    move/from16 v17, v9

    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    move/from16 v17, v9

    iget v8, v3, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_9
    move/from16 v17, v9

    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    aget-object v8, v19, v17

    iget v9, v14, Landroid/graphics/PointF;->x:F

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v8, v19, v17

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v8, v15, v17

    iget v9, v8, Lcom/google/android/material/shape/ShapePath;->c:F

    aput v9, v13, v16

    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->d:F

    const/16 v18, 0x1

    aput v8, v13, v18

    aget-object v8, v19, v17

    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v8, v10, v17

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    aget-object v8, v10, v17

    aget v9, v13, v16

    aget v13, v13, v18

    invoke-virtual {v8, v9, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v8, v10, v17

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v9, v11

    goto/16 :goto_0

    :cond_a
    move-object/from16 v19, v8

    move/from16 v18, v12

    move/from16 v8, v16

    :goto_4
    if-ge v8, v14, :cond_14

    aget-object v9, v15, v8

    iget v11, v9, Lcom/google/android/material/shape/ShapePath;->a:F

    aput v11, v13, v16

    iget v9, v9, Lcom/google/android/material/shape/ShapePath;->b:F

    aput v9, v13, v18

    aget-object v9, v19, v8

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v8, :cond_b

    aget v9, v13, v16

    aget v11, v13, v18

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_b
    aget v9, v13, v16

    aget v11, v13, v18

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v9, v15, v8

    aget-object v11, v19, v8

    invoke-virtual {v9, v11, v5}, Lcom/google/android/material/shape/ShapePath;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v4, :cond_c

    aget-object v9, v15, v8

    aget-object v11, v19, v8

    invoke-interface {v4, v9, v11, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->a(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    :cond_c
    add-int/lit8 v9, v8, 0x1

    rem-int/lit8 v11, v9, 0x4

    aget-object v12, v15, v8

    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->c:F

    aput v14, v13, v16

    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->d:F

    const/16 v18, 0x1

    aput v12, v13, v18

    aget-object v12, v19, v8

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v12, v15, v11

    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->a:F

    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    aput v14, v3, v16

    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->b:F

    aput v12, v3, v18

    aget-object v12, v19, v11

    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v12, v13, v16

    aget v14, v3, v16

    sub-float/2addr v12, v14

    move/from16 p2, v9

    move-object v14, v10

    float-to-double v9, v12

    aget v12, v13, v18

    aget v3, v3, v18

    sub-float/2addr v12, v3

    move-object/from16 v20, v14

    move-object v3, v15

    float-to-double v14, v12

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x3a83126f    # 0.001f

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aget-object v12, v3, v8

    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->c:F

    aput v14, v13, v16

    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->d:F

    const/4 v14, 0x1

    aput v12, v13, v14

    aget-object v12, v19, v8

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v8, v14, :cond_d

    const/4 v12, 0x3

    if-eq v8, v12, :cond_d

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aget v15, v13, v14

    sub-float/2addr v12, v15

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto :goto_6

    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aget v14, v13, v16

    sub-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    :goto_6
    const/high16 v14, 0x43870000    # 270.0f

    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v15, v10, v10, v14, v10}, Lcom/google/android/material/shape/ShapePath;->e(FFFF)V

    const/4 v14, 0x1

    if-eq v8, v14, :cond_10

    const/4 v10, 0x2

    if-eq v8, v10, :cond_f

    const/4 v14, 0x3

    if-eq v8, v14, :cond_e

    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_e
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_f
    const/4 v14, 0x3

    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/EdgeTreatment;

    goto :goto_7

    :cond_10
    const/4 v14, 0x3

    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/EdgeTreatment;

    :goto_7
    invoke-virtual {v10, v9, v12, v2, v15}, Lcom/google/android/material/shape/EdgeTreatment;->b(FFFLcom/google/android/material/shape/ShapePath;)V

    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    aget-object v12, v20, v8

    invoke-virtual {v15, v12, v9}, Lcom/google/android/material/shape/ShapePath;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    if-eqz v12, :cond_11

    invoke-virtual {v10}, Lcom/google/android/material/shape/EdgeTreatment;->a()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v0, v9, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c(Landroid/graphics/Path;I)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v0, v9, v11}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c(Landroid/graphics/Path;I)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_8

    :cond_11
    const/16 v18, 0x1

    goto :goto_9

    :cond_12
    :goto_8
    sget-object v10, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v9, v9, v7, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v9, v15, Lcom/google/android/material/shape/ShapePath;->a:F

    aput v9, v13, v16

    iget v9, v15, Lcom/google/android/material/shape/ShapePath;->b:F

    const/16 v18, 0x1

    aput v9, v13, v18

    aget-object v9, v20, v8

    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v9, v13, v16

    aget v10, v13, v18

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v9, v20, v8

    invoke-virtual {v15, v9, v6}, Lcom/google/android/material/shape/ShapePath;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_a

    :goto_9
    aget-object v9, v20, v8

    invoke-virtual {v15, v9, v5}, Lcom/google/android/material/shape/ShapePath;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_a
    if-eqz v4, :cond_13

    aget-object v9, v20, v8

    invoke-interface {v4, v15, v9, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->b(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    :cond_13
    move/from16 v8, p2

    move-object v15, v3

    move-object/from16 v10, v20

    const/4 v14, 0x4

    move-object/from16 v3, p4

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_15
    return-void
.end method

.method public final c(Landroid/graphics/Path;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapePath;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p2
.end method
