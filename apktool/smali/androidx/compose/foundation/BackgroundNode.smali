.class final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B)\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/BackgroundNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/graphics/Color;",
        "color",
        "Landroidx/compose/ui/graphics/Brush;",
        "brush",
        "",
        "alpha",
        "Landroidx/compose/ui/graphics/Shape;",
        "shape",
        "<init>",
        "(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public p:J

.field public q:Landroidx/compose/ui/graphics/Brush;

.field public r:F

.field public s:Landroidx/compose/ui/graphics/Shape;

.field public t:J

.field public u:Landroidx/compose/ui/unit/LayoutDirection;

.field public v:Landroidx/compose/ui/graphics/Outline;

.field public w:Landroidx/compose/ui/graphics/Shape;

.field public x:Landroidx/compose/ui/graphics/Outline;


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->p:J

    iput-object p3, p0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/Brush;

    iput p4, p0, Landroidx/compose/foundation/BackgroundNode;->r:F

    iput-object p5, p0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/graphics/Shape;

    sget-object p1, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p1, Landroidx/compose/ui/geometry/Size;->c:J

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->t:J

    return-void
.end method


# virtual methods
.method public final J()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L1(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->q(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->b:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/graphics/Shape;

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    if-ne v3, v4, :cond_2

    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->p:J

    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/foundation/BackgroundNode;->p:J

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->k0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/Brush;

    if-eqz v1, :cond_1

    iget v6, v0, Landroidx/compose/foundation/BackgroundNode;->r:F

    const/4 v9, 0x0

    const/16 v10, 0x76

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    move-object v1, v0

    goto/16 :goto_2

    :cond_1
    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_2
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/compose/foundation/BackgroundNode;->t:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->w:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->v:Landroidx/compose/ui/graphics/Outline;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    new-instance v3, Landroidx/compose/foundation/a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Landroidx/compose/foundation/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    iget-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->x:Landroidx/compose/ui/graphics/Outline;

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/foundation/BackgroundNode;->x:Landroidx/compose/ui/graphics/Outline;

    :goto_0
    iput-object v3, v0, Landroidx/compose/foundation/BackgroundNode;->v:Landroidx/compose/ui/graphics/Outline;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->t:J

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->s:Landroidx/compose/ui/graphics/Shape;

    iput-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->w:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->p:J

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v4, v0, Landroidx/compose/foundation/BackgroundNode;->p:J

    invoke-static {v1, v3, v4, v5}, Landroidx/compose/ui/graphics/OutlineKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V

    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/BackgroundNode;->q:Landroidx/compose/ui/graphics/Brush;

    if-eqz v2, :cond_a

    iget v0, v0, Landroidx/compose/foundation/BackgroundNode;->r:F

    const/16 v4, 0x38

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    move v6, v0

    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b:I

    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const-wide v7, 0xffffffffL

    const/4 v5, 0x0

    const/16 v10, 0x20

    if-eqz v0, :cond_6

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v11, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v12, v3

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v14, v3

    shl-long v10, v12, v10

    and-long/2addr v7, v14

    or-long/2addr v7, v10

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->b(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v10

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v7

    move-object v7, v4

    move-object v8, v5

    move-wide v4, v10

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->U0(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto/16 :goto_2

    :cond_6
    move-object v1, v2

    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_8

    move-object v11, v3

    check-cast v11, Landroidx/compose/ui/graphics/Outline$Rounded;

    move-object v2, v1

    iget-object v1, v11, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v1, :cond_7

    move-object/from16 v0, p1

    move v3, v6

    move v6, v9

    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->v0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto/16 :goto_2

    :cond_7
    move-object v1, v2

    move v3, v6

    move v6, v9

    iget-object v0, v11, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v11, v0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    shr-long/2addr v11, v10

    long-to-int v2, v11

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v9, v0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    iget v11, v0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v12, v9

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v14, v9

    shl-long v11, v12, v10

    and-long v13, v14, v7

    or-long/2addr v11, v13

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->b()F

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    move-result v0

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v13, v9

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move v9, v6

    int-to-long v5, v0

    shl-long/2addr v13, v10

    and-long/2addr v5, v7

    or-long/2addr v5, v13

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v13, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide v15, v7

    int-to-long v7, v0

    shl-long/2addr v13, v10

    and-long/2addr v7, v15

    or-long/2addr v7, v13

    move-wide/from16 v17, v7

    move v8, v3

    move-wide v2, v11

    move v11, v9

    move-object v9, v4

    move-wide v4, v5

    move-wide/from16 v6, v17

    move-object/from16 v0, p1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->o1(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    goto :goto_2

    :cond_8
    instance-of v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_9

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v3, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    move-object v2, v1

    move v3, v6

    move v6, v9

    move-object v1, v0

    move-object/from16 v0, p1

    goto :goto_1

    :cond_9
    invoke-static {}, Lv40;->g()V

    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->R1()V

    return-void
.end method

.method public final y0()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->c:J

    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->t:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->u:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->v:Landroidx/compose/ui/graphics/Outline;

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->w:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
