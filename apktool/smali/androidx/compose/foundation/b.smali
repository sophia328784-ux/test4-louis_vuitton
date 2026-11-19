.class public final synthetic Landroidx/compose/foundation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/b;->b:I

    iput-object p1, p0, Landroidx/compose/foundation/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 50

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/b;->b:I

    iget-object v0, v0, Landroidx/compose/foundation/b;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    instance-of v3, v1, Landroidx/compose/foundation/GestureNode;

    if-eqz v3, :cond_0

    check-cast v1, Landroidx/compose/foundation/GestureNode;

    iget-object v1, v1, Landroidx/compose/foundation/GestureNode;->p:Landroidx/compose/foundation/GestureConnection;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "Node is not a GestureNode instance"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/BorderModifierNode;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    iget v3, v0, Landroidx/compose/foundation/BorderModifierNode;->s:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v4

    mul-float/2addr v4, v3

    const/4 v3, 0x0

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_1a

    iget-object v4, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v4}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->c(J)F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1a

    iget v4, v0, Landroidx/compose/foundation/BorderModifierNode;->s:F

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget v3, v0, Landroidx/compose/foundation/BorderModifierNode;->s:F

    invoke-virtual {v1}, Landroidx/compose/ui/draw/CacheDrawScope;->getDensity()F

    move-result v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v3, v6

    :goto_1
    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->c(J)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float v3, v9, v7

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v10, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v12, v6

    const/16 v6, 0x20

    shl-long/2addr v10, v6

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long v16, v10, v12

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    iget-object v8, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v8}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v10

    shr-long/2addr v10, v6

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    sub-float/2addr v8, v9

    iget-object v10, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v10}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v10

    and-long/2addr v10, v14

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    sub-float/2addr v10, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move/from16 p1, v3

    int-to-long v2, v8

    shl-long v10, v11, v6

    and-long/2addr v2, v14

    or-long/2addr v2, v10

    mul-float v19, v9, v7

    iget-object v7, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v7}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->c(J)F

    move-result v7

    cmpl-float v7, v19, v7

    const/4 v8, 0x0

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    iget-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->u:Landroidx/compose/ui/graphics/Shape;

    iget-object v12, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v12}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v12

    move/from16 v26, v6

    iget-object v6, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v6}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v11, v12, v13, v6, v1}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v6

    instance-of v11, v6, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v11, :cond_10

    iget-object v2, v0, Landroidx/compose/foundation/BorderModifierNode;->t:Landroidx/compose/ui/graphics/Brush;

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v3, v6, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    if-eqz v7, :cond_3

    new-instance v0, Lvg;

    invoke-direct {v0, v6, v2, v8}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    goto/16 :goto_e

    :cond_3
    instance-of v5, v2, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/compose/ui/graphics/ImageBitmapConfig;->b:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/ImageBitmapConfig;->c:I

    sget-object v7, Landroidx/compose/ui/graphics/ColorFilter;->b:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v11, v9, Landroidx/compose/ui/graphics/SolidColor;->b:J

    invoke-static {v4, v11, v12}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(Landroidx/compose/ui/graphics/ColorFilter$Companion;J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    move-result-object v7

    goto :goto_3

    :cond_4
    sget-object v5, Landroidx/compose/ui/graphics/ImageBitmapConfig;->b:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v8

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    iget-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    if-nez v11, :cond_5

    new-instance v27, Landroidx/compose/foundation/BorderCache;

    const/16 v32, 0xf

    const/16 v33, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v27 .. v33}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v11, v27

    iput-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    :cond_5
    iget-object v11, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v11, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/Path;

    if-nez v12, :cond_6

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v12

    iput-object v12, v11, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/Path;

    :cond_6
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Path;->reset()V

    invoke-static {v12, v9}, Landroidx/compose/ui/graphics/Path;->n(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;)V

    sget-object v11, Landroidx/compose/ui/graphics/PathOperation;->a:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v12, v3, v8}, Landroidx/compose/ui/graphics/Path;->p(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget v11, v9, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v13, v9, Landroidx/compose/ui/geometry/Rect;->b:F

    move/from16 v35, v4

    iget v4, v9, Landroidx/compose/ui/geometry/Rect;->a:F

    sub-float/2addr v11, v4

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    iget v11, v9, Landroidx/compose/ui/geometry/Rect;->d:F

    sub-float/2addr v11, v13

    move-object/from16 p1, v9

    float-to-double v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    int-to-long v9, v10

    shl-long v9, v9, v26

    move-wide/from16 v36, v14

    int-to-long v14, v8

    and-long v14, v14, v36

    or-long v8, v9, v14

    sget-object v10, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Landroidx/compose/foundation/BorderCache;->a:Landroidx/compose/ui/graphics/ImageBitmap;

    iget-object v11, v0, Landroidx/compose/foundation/BorderCache;->b:Landroidx/compose/ui/graphics/Canvas;

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroidx/compose/ui/graphics/ImageBitmap;->b()I

    move-result v14

    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v15, v14}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    sget-object v14, Landroidx/compose/ui/graphics/ImageBitmapConfig;->b:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v15, :cond_8

    goto :goto_5

    :cond_8
    iget v14, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    if-nez v14, :cond_9

    goto :goto_8

    :cond_9
    :goto_5
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroidx/compose/ui/graphics/ImageBitmap;->b()I

    move-result v14

    new-instance v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;

    invoke-direct {v15, v14}, Landroidx/compose/ui/graphics/ImageBitmapConfig;-><init>(I)V

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_b

    goto :goto_7

    :cond_b
    iget v14, v15, Landroidx/compose/ui/graphics/ImageBitmapConfig;->a:I

    if-eq v5, v14, :cond_c

    :goto_7
    const/16 v18, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/16 v18, 0x1

    :goto_9
    if-eqz v10, :cond_d

    if-eqz v11, :cond_d

    iget-object v14, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v14}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v14

    shr-long v14, v14, v26

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-interface {v10}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_d

    iget-object v14, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v14}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v14

    and-long v14, v14, v36

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-interface {v10}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_d

    if-nez v18, :cond_e

    :cond_d
    shr-long v10, v8, v26

    long-to-int v10, v10

    and-long v14, v8, v36

    long-to-int v11, v14

    invoke-static {v10, v11, v5}, Landroidx/compose/ui/graphics/ImageBitmapKt;->a(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-result-object v10

    iput-object v10, v0, Landroidx/compose/foundation/BorderCache;->a:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v10}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    move-result-object v11

    iput-object v11, v0, Landroidx/compose/foundation/BorderCache;->b:Landroidx/compose/ui/graphics/Canvas;

    :cond_e
    iget-object v5, v0, Landroidx/compose/foundation/BorderCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v5, :cond_f

    new-instance v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v5, v0, Landroidx/compose/foundation/BorderCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_f
    iget-object v14, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object v0, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->b:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v7

    iget-object v9, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v9}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    move-object/from16 v29, v2

    iget-object v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    move-object/from16 v38, v5

    iget-object v5, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v48, v12

    iget-object v12, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    move-object/from16 p0, v2

    move-object/from16 v49, v3

    iget-wide v2, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    iput-object v9, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v11, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    iput-wide v7, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    invoke-interface {v11}, Landroidx/compose/ui/graphics/Canvas;->p()V

    sget-object v9, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v39, Landroidx/compose/ui/graphics/Color;->c:J

    sget-object v9, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v47, 0x3a

    const-wide/16 v41, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-wide/from16 v43, v7

    invoke-static/range {v38 .. v47}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->k0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    neg-float v4, v4

    neg-float v7, v13

    iget-object v8, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v8, v4, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    :try_start_0
    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    new-instance v31, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v24, 0x1e

    const/16 v25, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v31

    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v33, 0x0

    const/16 v34, 0x34

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v6

    move-object/from16 v27, v38

    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G0(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/ColorFilter;II)V

    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    shr-long v8, v8, v26

    long-to-int v6, v8

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v6, v6, v35

    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    shr-long v8, v8, v26

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    div-float/2addr v6, v8

    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    and-long v8, v8, v36

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float v8, v8, v35

    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v18

    move v13, v8

    and-long v8, v18, v36

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    div-float v8, v13, v8

    move-object v13, v10

    invoke-interface/range {v38 .. v38}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v9

    move-object/from16 v26, v1

    move-wide/from16 v18, v2

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v1

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v3, v6, v8, v9, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->f(FFJ)V

    const/16 v33, 0x0

    const/16 v34, 0x1c

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v38

    move-object/from16 v28, v48

    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G0(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/ColorFilter;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v14, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v4

    neg-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    invoke-interface {v11}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-object/from16 v1, p0

    iput-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    iput-object v5, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v12, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    move-wide/from16 v1, v18

    iput-wide v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    invoke-interface {v13}, Landroidx/compose/ui/graphics/ImageBitmap;->a()V

    move-object/from16 v0, v49

    iput-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v20, Lwg;

    move-object/from16 v21, p1

    move-object/from16 v22, v0

    move-object/from16 v25, v15

    move-wide/from16 v23, v16

    invoke-direct/range {v20 .. v25}, Lwg;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v14, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    iget-object v1, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v2, v4

    neg-float v3, v7

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    throw v0

    :cond_10
    instance-of v4, v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v4, :cond_15

    iget-object v4, v0, Landroidx/compose/foundation/BorderModifierNode;->t:Landroidx/compose/ui/graphics/Brush;

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v6}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-wide v5, v6, Landroidx/compose/ui/geometry/RoundRect;->e:J

    new-instance v19, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, v19

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lug;

    move/from16 v13, p1

    move-object v10, v4

    move-wide v11, v5

    move v14, v9

    move-wide/from16 v15, v16

    move-wide/from16 v17, v2

    move v9, v7

    invoke-direct/range {v8 .. v19}, Lug;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {v1, v8}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    goto/16 :goto_e

    :cond_11
    move-object v2, v4

    move v8, v7

    iget-object v3, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    if-nez v3, :cond_12

    new-instance v10, Landroidx/compose/foundation/BorderCache;

    const/16 v15, 0xf

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    :cond_12
    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->r:Landroidx/compose/foundation/BorderCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/Path;

    if-nez v3, :cond_13

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/foundation/BorderCache;->d:Landroidx/compose/ui/graphics/Path;

    :cond_13
    invoke-interface {v3}, Landroidx/compose/ui/graphics/Path;->reset()V

    invoke-static {v3, v6}, Landroidx/compose/ui/graphics/Path;->r(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    if-nez v8, :cond_14

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/RoundRect;->b()F

    move-result v4

    sub-float v11, v4, v9

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    move-result v4

    sub-float v12, v4, v9

    iget-wide v7, v6, Landroidx/compose/ui/geometry/RoundRect;->e:J

    invoke-static {v9, v7, v8}, Landroidx/compose/foundation/BorderKt;->c(FJ)J

    move-result-wide v13

    iget-wide v7, v6, Landroidx/compose/ui/geometry/RoundRect;->f:J

    invoke-static {v9, v7, v8}, Landroidx/compose/foundation/BorderKt;->c(FJ)J

    move-result-wide v15

    iget-wide v7, v6, Landroidx/compose/ui/geometry/RoundRect;->h:J

    invoke-static {v9, v7, v8}, Landroidx/compose/foundation/BorderKt;->c(FJ)J

    move-result-wide v7

    iget-wide v5, v6, Landroidx/compose/ui/geometry/RoundRect;->g:J

    invoke-static {v9, v5, v6}, Landroidx/compose/foundation/BorderKt;->c(FJ)J

    move-result-wide v17

    move-wide/from16 v19, v7

    const/4 v4, 0x0

    new-instance v8, Landroidx/compose/ui/geometry/RoundRect;

    const/16 v21, 0x0

    move v10, v9

    invoke-direct/range {v8 .. v21}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v8}, Landroidx/compose/ui/graphics/Path;->r(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    sget-object v5, Landroidx/compose/ui/graphics/PathOperation;->a:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v3, v0, v4}, Landroidx/compose/ui/graphics/Path;->p(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_14
    new-instance v0, Lk;

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v2, v4}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    goto :goto_e

    :cond_15
    move v8, v7

    move-wide/from16 v15, v16

    move-wide/from16 v17, v2

    instance-of v2, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v2, :cond_19

    iget-object v0, v0, Landroidx/compose/foundation/BorderModifierNode;->t:Landroidx/compose/ui/graphics/Brush;

    if-eqz v8, :cond_16

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    move-wide/from16 v21, v2

    goto :goto_b

    :cond_16
    move-wide/from16 v21, v15

    :goto_b
    if-eqz v8, :cond_17

    iget-object v2, v1, Landroidx/compose/ui/draw/CacheDrawScope;->b:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->b()J

    move-result-wide v2

    move-wide/from16 v23, v2

    goto :goto_c

    :cond_17
    move-wide/from16 v23, v17

    :goto_c
    if-eqz v8, :cond_18

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object/from16 v25, v2

    goto :goto_d

    :cond_18
    new-instance v8, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v25, v8

    :goto_d
    new-instance v19, Ltg;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v25}, Ltg;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    goto :goto_e

    :cond_19
    invoke-static {}, Lv40;->g()V

    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    new-instance v0, Lre;

    const/16 v4, 0x1d

    invoke-direct {v0, v4}, Lre;-><init>(I)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v2

    :goto_e
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
