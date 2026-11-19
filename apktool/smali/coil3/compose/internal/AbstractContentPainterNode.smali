.class public abstract Lcoil3/compose/internal/AbstractContentPainterNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004BE\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcoil3/compose/internal/AbstractContentPainterNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/Alignment;",
        "alignment",
        "Landroidx/compose/ui/layout/ContentScale;",
        "contentScale",
        "",
        "alpha",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "colorFilter",
        "",
        "clipToBounds",
        "",
        "contentDescription",
        "Lcoil3/compose/ConstraintsSizeResolver;",
        "constraintSizeResolver",
        "<init>",
        "(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V",
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public p:Landroidx/compose/ui/Alignment;

.field public q:Landroidx/compose/ui/layout/ContentScale;

.field public r:F

.field public s:Landroidx/compose/ui/graphics/ColorFilter;

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Lcoil3/compose/ConstraintsSizeResolver;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ZLjava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->p:Landroidx/compose/ui/Alignment;

    iput-object p2, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->q:Landroidx/compose/ui/layout/ContentScale;

    iput p3, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->r:F

    iput-object p4, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->s:Landroidx/compose/ui/graphics/ColorFilter;

    iput-boolean p5, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->t:Z

    iput-object p6, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    iput-object p7, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    return-void
.end method


# virtual methods
.method public final L1(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    iget-object p0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->u:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/semantics/Role;->g:I

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :cond_0
    return-void
.end method

.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget-object v0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcoil3/compose/internal/AbstractContentPainterNode;->j2(J)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance p4, La2;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, La2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x7

    invoke-static {p1, p1, p1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v0

    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->j2(J)J

    move-result-wide p0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    move-result p0

    return p0
.end method

.method public final h2(J)J
    .locals 10

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v0

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    shr-long v3, p1, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    :goto_0
    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    and-long v0, p1, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v3, v2

    and-long/2addr v0, v6

    or-long/2addr v0, v3

    iget-object p0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->q:Landroidx/compose/ui/layout/ContentScale;

    invoke-interface {p0, v0, v1, p1, p2}, Landroidx/compose/ui/layout/ContentScale;->a(JJ)J

    move-result-wide v3

    shr-long v8, v3, v2

    long-to-int p0, v8

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gtz p0, :cond_4

    and-long/2addr v6, v3

    long-to-int p0, v6

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gtz p0, :cond_4

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/layout/ScaleFactorKt;->a(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public abstract i2()Landroidx/compose/ui/graphics/painter/Painter;
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->b:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcoil3/compose/internal/AbstractContentPainterNode;->h2(J)J

    move-result-wide v3

    iget-object v5, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->p:Landroidx/compose/ui/Alignment;

    invoke-static {v3, v4}, Lcoil3/compose/internal/UtilsKt;->f(J)J

    move-result-wide v6

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcoil3/compose/internal/UtilsKt;->f(J)J

    move-result-wide v8

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v5

    sget-object v7, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v7, 0x20

    shr-long v8, v5, v7

    long-to-int v8, v8

    const-wide v9, 0xffffffffL

    and-long/2addr v5, v9

    long-to-int v5, v5

    iget-object v6, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v11

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->p()V

    :try_start_0
    iget-object v13, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-boolean v2, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->t:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x1f

    and-int/lit8 v14, v2, 0x4

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b()J

    move-result-wide v16

    move-wide/from16 v19, v3

    move v4, v2

    shr-long v2, v16, v7

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v3

    move v4, v2

    move/from16 v16, v15

    :goto_0
    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_1

    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b()J

    move-result-wide v2

    and-long/2addr v2, v9

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    :cond_1
    move/from16 v17, v15

    sget-object v2, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v18, Landroidx/compose/ui/graphics/ClipOp;->b:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v13 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->a(FFFFI)V

    goto :goto_1

    :cond_2
    move-wide/from16 v19, v3

    :goto_1
    int-to-float v2, v8

    int-to-float v3, v5

    invoke-virtual {v13, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    invoke-virtual {v0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    iget v4, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->r:F

    iget-object v5, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->s:Landroidx/compose/ui/graphics/ColorFilter;

    move-object v0, v2

    move-wide/from16 v2, v19

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v6, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->R1()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v6, v11, v12}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw v0
.end method

.method public final j2(J)J
    .locals 8

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->c(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v4

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_3

    instance-of p0, v2, Lcoil3/compose/AsyncImagePainter;

    if-eqz p0, :cond_2

    check-cast v2, Lcoil3/compose/AsyncImagePainter;

    iget-object p0, v2, Lcoil3/compose/AsyncImagePainter;->x:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/compose/AsyncImagePainter$State;

    invoke-interface {p0}, Lcoil3/compose/AsyncImagePainter$State;->d()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    return-wide p1

    :cond_4
    const-wide v6, 0xffffffffL

    const/16 v2, 0x20

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    :goto_2
    int-to-float v1, v1

    goto :goto_4

    :cond_6
    shr-long v0, v4, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long v3, v4, v6

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    sget-object v3, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v3, v5}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    sget-object v3, Lcoil3/compose/internal/UtilsKt;->a:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v1

    goto :goto_4

    :cond_8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v1

    goto :goto_2

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v3, v2

    and-long/2addr v0, v6

    or-long/2addr v0, v3

    sget-object v3, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->h2(J)J

    move-result-wide v0

    shr-long v2, v0, v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v2

    invoke-static {v0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final u(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    const/4 p1, 0x0

    const/16 v0, 0xd

    invoke-static {p1, p3, p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v0

    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->j2(J)J

    move-result-wide p0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->H(I)I

    move-result p0

    return p0
.end method

.method public final y(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x7

    invoke-static {p1, p1, p1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v0

    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->j2(J)J

    move-result-wide p0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->S(I)I

    move-result p0

    return p0
.end method

.method public final z(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    const/4 p1, 0x0

    const/16 v0, 0xd

    invoke-static {p1, p3, p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v0

    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->v:Lcoil3/compose/ConstraintsSizeResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->v(J)V

    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/internal/AbstractContentPainterNode;->i2()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->g()J

    move-result-wide v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->j2(J)J

    move-result-wide p0

    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->l(I)I

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->l(I)I

    move-result p0

    return p0
.end method
