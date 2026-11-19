.class public abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-graphics"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    iget-boolean v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s:Z

    if-eqz v4, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->u()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    iget-object v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b:Landroidx/compose/ui/unit/Density;

    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v5, v6, v0, v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->e(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->M()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->l()V

    :cond_3
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v13

    if-nez v13, :cond_7

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t:J

    sget-object v10, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v10, 0x20

    shr-long v11, v8, v10

    long-to-int v11, v11

    int-to-float v11, v11

    const-wide v14, 0xffffffffL

    and-long/2addr v8, v14

    long-to-int v8, v8

    int-to-float v9, v8

    const/16 p0, 0x1

    iget-wide v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    move-wide/from16 v17, v14

    shr-long v14, v5, v10

    long-to-int v8, v14

    int-to-float v8, v8

    add-float v10, v11, v8

    and-long v5, v5, v17

    long-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v9

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a()F

    move-result v6

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->b()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v8

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E()I

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v6, v14

    if-ltz v14, :cond_5

    sget-object v14, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/graphics/BlendMode;->d:I

    if-ne v12, v14, :cond_5

    if-nez v8, :cond_5

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->h()I

    move-result v14

    sget-object v15, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->a:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v15, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->b:I

    if-ne v14, v15, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move v8, v11

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v14, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->p:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v14, :cond_6

    new-instance v14, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v14}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    iput-object v14, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->p:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_6
    invoke-virtual {v14, v6}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    invoke-virtual {v14, v12}, Landroidx/compose/ui/graphics/AndroidPaint;->k(I)V

    invoke-virtual {v14, v8}, Landroidx/compose/ui/graphics/AndroidPaint;->l(Landroidx/compose/ui/graphics/ColorFilter;)V

    invoke-static {v14}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a(Landroidx/compose/ui/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v12

    move v8, v11

    move v11, v5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    :goto_2
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->C()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_7
    const/16 p0, 0x1

    :goto_3
    if-nez v13, :cond_8

    iget-boolean v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:Z

    if-eqz v5, :cond_8

    move/from16 v5, p0

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_d

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->p()V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d()Landroidx/compose/ui/graphics/Outline;

    move-result-object v6

    instance-of v8, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v8, :cond_9

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    invoke-static {v1, v6}, Landroidx/compose/ui/graphics/Canvas;->g(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_6

    :cond_9
    instance-of v8, v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v8, :cond_b

    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->m:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/AndroidPath;->k()V

    goto :goto_5

    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v8

    iput-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->m:Landroidx/compose/ui/graphics/AndroidPath;

    :goto_5
    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v8, v6}, Landroidx/compose/ui/graphics/Path;->r(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-static {v1, v8}, Landroidx/compose/ui/graphics/Canvas;->k(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    goto :goto_6

    :cond_b
    instance-of v8, v6, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v8, :cond_c

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    invoke-static {v1, v6}, Landroidx/compose/ui/graphics/Canvas;->k(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V

    goto :goto_6

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_d
    :goto_6
    if-eqz v2, :cond_13

    iget-object v2, v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    iget-boolean v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->e:Z

    if-nez v6, :cond_e

    const-string v6, "Only add dependencies during a tracking"

    invoke-static {v6}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_e
    iget-object v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    const/4 v8, 0x0

    if-eqz v6, :cond_f

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    iget-object v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v6, :cond_10

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v6

    iget-object v9, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v9}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    iput-object v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    iput-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_7

    :cond_10
    iput-object v0, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :goto_7
    iget-object v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->d:Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_11

    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->m(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    goto :goto_8

    :cond_11
    iget-object v6, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v6, v0, :cond_12

    move/from16 v6, p0

    goto :goto_8

    :cond_12
    iput-object v8, v2, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_13

    iget v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    :cond_13
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v2, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_15

    sget v2, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a:I

    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v2, :cond_14

    new-instance v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->o:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_14
    iget-object v3, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b:Landroidx/compose/ui/unit/Density;

    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v9

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    move-result-object v11

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    move/from16 p0, v4

    move v15, v5

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v4

    move-object/from16 v16, v7

    iget-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v3, v9, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    iput-object v0, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->p()V

    :try_start_1
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v3, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v3, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    iput-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_9

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v3, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v3, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    iput-object v7, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    throw v0

    :cond_15
    move/from16 p0, v4

    move v15, v5

    move-object/from16 v16, v7

    invoke-interface {v3, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->O(Landroidx/compose/ui/graphics/Canvas;)V

    :goto_9
    if-eqz v15, :cond_16

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_16
    if-eqz p0, :cond_17

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->q()V

    :cond_17
    if-nez v13, :cond_18

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_a
    return-void
.end method
