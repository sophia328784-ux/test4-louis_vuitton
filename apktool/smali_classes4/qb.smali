.class public final synthetic Lqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    iput p3, p0, Lqb;->b:I

    iput-object p1, p0, Lqb;->d:Ljava/lang/Object;

    iput p2, p0, Lqb;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lqb;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v0, Lqb;->c:F

    iget-object v0, v0, Lqb;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/compose/animation/core/Transition;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->i()Z

    move-result v1

    iget-object v7, v0, Landroidx/compose/animation/core/Transition;->g:Landroidx/compose/runtime/MutableLongState;

    if-nez v1, :cond_3

    move-object v1, v7

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->b()J

    move-result-wide v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    invoke-virtual {v7, v5, v6}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->D(J)V

    iget-object v7, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    iget-object v7, v7, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmpg-float v1, v4, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    long-to-double v5, v5

    float-to-double v3, v4

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->d(D)J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroidx/compose/animation/core/Transition;->p(J)V

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v5, v6, v2}, Landroidx/compose/animation/core/Transition;->j(JZ)V

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Ljava/util/Set;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;->Default:Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;

    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;->a(Ljava/lang/Enum;F)V

    sget-object v2, Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;->TopToBottom:Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;->DismissedToBottom:Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;

    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;->a(Ljava/lang/Enum;F)V

    :cond_4
    sget-object v2, Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;->BottomToTop:Lcom/vuitton/android/presentation/compose/components/DismissVerticalDirection;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;->DismissedToTop:Lcom/vuitton/android/presentation/compose/components/DismissVerticalValue;

    neg-float v2, v4

    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/gestures/DraggableAnchorsConfig;->a(Ljava/lang/Enum;F)V

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v1, v0, v4, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    new-instance v2, Landroidx/compose/animation/ContentTransform;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/ContentTransform;

    iget-object v3, v3, Landroidx/compose/animation/ContentTransform;->a:Landroidx/compose/animation/EnterTransition;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/ContentTransform;

    iget-object v0, v0, Landroidx/compose/animation/ContentTransform;->b:Landroidx/compose/animation/ExitTransition;

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v4, v1}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V

    return-object v2

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v1

    const-wide v16, 0xffffffffL

    and-long v1, v1, v16

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    and-long v6, v6, v16

    or-long v12, v2, v6

    sget-object v2, Landroidx/compose/ui/geometry/CornerRadius;->a:Landroidx/compose/ui/geometry/CornerRadius$Companion;

    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->e:J

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v10

    const/4 v14, 0x0

    const/16 v15, 0xf2

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    shr-long/2addr v2, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, v4

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    and-long v3, v3, v16

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float v4, v2, v3

    if-gez v4, :cond_6

    move v2, v3

    :cond_6
    iget-wide v6, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    invoke-interface {v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v3

    and-long v3, v3, v16

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    shl-long v0, v2, v1

    and-long v2, v8, v16

    or-long v10, v0, v2

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    const/4 v14, 0x0

    const/16 v15, 0xf2

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJJLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
