.class public final synthetic Lwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lwg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lwg;->d:J

    iput-object p3, p0, Lwg;->c:Ljava/lang/Object;

    iput-object p4, p0, Lwg;->e:Ljava/lang/Object;

    iput-object p5, p0, Lwg;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lwg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lwg;->d:J

    iput-object p4, p0, Lwg;->e:Ljava/lang/Object;

    iput-object p5, p0, Lwg;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lwg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwg;->c:Ljava/lang/Object;

    iput-object p2, p0, Lwg;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lwg;->d:J

    iput-object p5, p0, Lwg;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lwg;->b:I

    iget-object v2, v0, Lwg;->f:Ljava/lang/Object;

    iget-object v3, v0, Lwg;->e:Ljava/lang/Object;

    iget-object v4, v0, Lwg;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v4, [F

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    iget v5, v1, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    iget-object v6, v1, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/Paragraph;

    iget v7, v1, Landroidx/compose/ui/text/ParagraphInfo;->c:I

    iget-wide v8, v0, Lwg;->d:J

    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v0

    if-le v5, v0, :cond_0

    iget v0, v1, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    goto :goto_0

    :cond_0
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->f(J)I

    move-result v0

    :goto_0
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v5

    if-ge v7, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v9}, Landroidx/compose/ui/text/TextRange;->e(J)I

    move-result v7

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    move-result v0

    invoke-virtual {v1, v7}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    move-result-wide v0

    iget v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-interface {v6, v0, v1, v4, v5}, Landroidx/compose/ui/text/Paragraph;->q(J[FI)V

    iget v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->d(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v5

    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :goto_2
    if-ge v1, v0, :cond_2

    add-int/lit8 v5, v1, 0x1

    aget v7, v4, v5

    iget v8, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    add-float/2addr v7, v8

    aput v7, v4, v5

    add-int/lit8 v5, v1, 0x3

    aget v7, v4, v5

    add-float/2addr v7, v8

    aput v7, v4, v5

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_2
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-interface {v6}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    move-result v1

    add-float/2addr v1, v0

    iput v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    check-cast v3, Landroidx/compose/animation/core/Animatable;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    const/16 v1, 0x20

    shr-long/2addr v6, v1

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    float-to-double v11, v6

    float-to-double v6, v7

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->b()J

    move-result-wide v7

    shr-long v11, v7, v1

    long-to-int v4, v11

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/geometry/Offset;

    iget-wide v11, v11, Landroidx/compose/ui/geometry/Offset;->a:J

    shr-long/2addr v11, v1

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    sub-float/2addr v4, v11

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v11, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    and-long/2addr v11, v9

    long-to-int v2, v11

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v7, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v11, v2

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v7, v2

    shl-long v1, v11, v1

    and-long/2addr v7, v9

    or-long/2addr v1, v7

    :goto_3
    move-wide v9, v1

    goto :goto_4

    :cond_3
    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v7

    shr-long/2addr v7, v1

    long-to-int v2, v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v11, v2

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v7, v2

    shl-long v1, v11, v1

    and-long/2addr v7, v9

    or-long/2addr v1, v7

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float v8, v1, v6

    const/4 v11, 0x0

    const/16 v12, 0x78

    iget-wide v6, v0, Lwg;->d:J

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v9, v0, Lwg;->d:J

    move-object/from16 v17, v2

    check-cast v17, Landroidx/compose/ui/graphics/ColorFilter;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    iget v1, v4, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v2, v4, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    :try_start_0
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/graphics/ImageBitmap;

    const/16 v19, 0x0

    const/16 v20, 0x37a

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->X(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
