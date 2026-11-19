.class final Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/animation/SkipToLookaheadSizeNode;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SkipToLookaheadSizeNode;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->c:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    iput-object p2, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->d:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->e:J

    iput-object p5, p0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->f:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v2, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->c:Landroidx/compose/animation/SkipToLookaheadSizeNode;

    iget-object v3, v2, Landroidx/compose/animation/SkipToLookaheadSizeNode;->p:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/ScaleToBoundsImpl;

    if-nez v3, :cond_0

    iget-object v0, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->d:Landroidx/compose/ui/layout/Placeable;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto/16 :goto_2

    :cond_0
    iget-object v4, v3, Landroidx/compose/animation/ScaleToBoundsImpl;->a:Landroidx/compose/ui/layout/ContentScale;

    iget-wide v5, v2, Landroidx/compose/animation/SkipToLookaheadSizeNode;->s:J

    const/16 v7, 0x20

    shr-long v8, v5, v7

    long-to-int v8, v8

    const-wide v9, 0xffffffffL

    if-eqz v8, :cond_2

    and-long v11, v5, v9

    long-to-int v8, v11

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v5

    iget-wide v11, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->e:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v11

    invoke-interface {v4, v5, v6, v11, v12}, Landroidx/compose/ui/layout/ContentScale;->a(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v11, v4

    shl-long v4, v5, v7

    and-long/2addr v11, v9

    or-long/2addr v4, v11

    sget v6, Landroidx/compose/ui/layout/ScaleFactor;->a:I

    :goto_1
    iget-object v11, v3, Landroidx/compose/animation/ScaleToBoundsImpl;->b:Landroidx/compose/ui/Alignment;

    iget-wide v12, v2, Landroidx/compose/animation/SkipToLookaheadSizeNode;->s:J

    shr-long/2addr v12, v7

    long-to-int v3, v12

    int-to-float v3, v3

    shr-long v12, v4, v7

    long-to-int v6, v12

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Lkotlin/math/MathKt;->c(F)I

    move-result v3

    iget-wide v12, v2, Landroidx/compose/animation/SkipToLookaheadSizeNode;->s:J

    and-long/2addr v12, v9

    long-to-int v2, v12

    int-to-float v2, v2

    and-long v12, v4, v9

    long-to-int v6, v12

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Lkotlin/math/MathKt;->c(F)I

    move-result v2

    int-to-long v12, v3

    shl-long/2addr v12, v7

    int-to-long v2, v2

    and-long/2addr v2, v9

    or-long/2addr v12, v2

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    iget-object v2, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->f:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v16

    iget-wide v14, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->e:J

    invoke-interface/range {v11 .. v16}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v2

    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v6, v2, v7

    long-to-int v6, v6

    and-long/2addr v2, v9

    long-to-int v3, v2

    new-instance v2, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;

    invoke-direct {v2, v4, v5}, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2$1;-><init>(J)V

    const/4 v5, 0x4

    iget-object v0, v0, Landroidx/compose/animation/SkipToLookaheadSizeNode$measure$2;->d:Landroidx/compose/ui/layout/Placeable;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v2

    move v2, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->F(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
