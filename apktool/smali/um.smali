.class public final synthetic Lum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lum;->c:I

    iput-object p2, p0, Lum;->d:Ljava/lang/Object;

    iput-object p3, p0, Lum;->e:Ljava/lang/Object;

    iput-object p4, p0, Lum;->f:Ljava/lang/Object;

    iput-object p5, p0, Lum;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;ILandroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum;->d:Ljava/lang/Object;

    iput-object p2, p0, Lum;->e:Ljava/lang/Object;

    iput-object p3, p0, Lum;->f:Ljava/lang/Object;

    iput p4, p0, Lum;->c:I

    iput-object p5, p0, Lum;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 1

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum;->d:Ljava/lang/Object;

    iput p2, p0, Lum;->c:I

    iput-object p3, p0, Lum;->e:Ljava/lang/Object;

    iput-object p4, p0, Lum;->f:Ljava/lang/Object;

    iput-object p5, p0, Lum;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;[I)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lum;->d:Ljava/lang/Object;

    iput-object p2, p0, Lum;->e:Ljava/lang/Object;

    iput p3, p0, Lum;->c:I

    iput-object p4, p0, Lum;->f:Ljava/lang/Object;

    iput-object p5, p0, Lum;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lum;->b:I

    const/16 v1, 0x20

    iget-object v2, p0, Lum;->g:Ljava/lang/Object;

    iget-object v3, p0, Lum;->f:Ljava/lang/Object;

    iget-object v4, p0, Lum;->e:Ljava/lang/Object;

    iget-object v5, p0, Lum;->d:Ljava/lang/Object;

    iget p0, p0, Lum;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v5, Landroidx/compose/runtime/State;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide p0

    shr-long/2addr p0, v1

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v4, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide p0

    shr-long/2addr p0, v1

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide p0

    shr-long/2addr p0, v1

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v5, Landroidx/compose/material3/WindowBoundsCalculator;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/MutableIntState;

    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    sget v0, Landroidx/compose/material3/ExposedDropdownMenuKt;->a:I

    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    shr-long v0, v6, v1

    long-to-int p1, v0

    invoke-interface {v3, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    iget-object p1, v5, Landroidx/compose/material3/WindowBoundsCalculator;->a:Landroid/view/View;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance p1, Landroidx/compose/ui/unit/IntRect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v1, v3, v5, v0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->c()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->f:Landroidx/compose/ui/geometry/Rect;

    :goto_2
    invoke-static {p1, v0, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt;->b(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/geometry/Rect;I)I

    move-result p0

    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    check-cast v4, Landroidx/compose/animation/core/FiniteAnimationSpec;

    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    check-cast v2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    sget v0, Landroidx/compose/material3/DatePickerKt;->a:F

    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/DisplayMode;

    iget v0, v0, Landroidx/compose/material3/DisplayMode;->a:I

    sget-object v1, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/DisplayMode;->c:I

    const/4 v6, 0x6

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v0, v1, :cond_5

    new-instance v0, Lbp;

    invoke-direct {v0, v7}, Lbp;-><init>(I)V

    invoke-static {v0, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-static {v4, v9, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-static {v3, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    new-instance v3, Lhb;

    invoke-direct {v3, p0, v6}, Lhb;-><init>(II)V

    invoke-static {v3, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/compose/animation/AnimatedContentKt;->e(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    goto :goto_3

    :cond_5
    new-instance v0, Lhb;

    invoke-direct {v0, p0, v6}, Lhb;-><init>(II)V

    invoke-static {v0, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    invoke-static {v4, v9, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object p0

    new-instance v0, Lbp;

    invoke-direct {v0, v7}, Lbp;-><init>(I)V

    invoke-static {v0, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {v3, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/animation/AnimatedContentKt;->e(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    :goto_3
    new-instance v0, Lc;

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Lc;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/compose/animation/AnimatedContentKt;->c(Lc;)Landroidx/compose/animation/SizeTransform;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroidx/compose/animation/AnimatedContentTransitionScope;->d(Landroidx/compose/animation/ContentTransform;Landroidx/compose/animation/SizeTransform;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast v5, [Landroidx/compose/ui/layout/Placeable;

    check-cast v4, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    check-cast v2, [I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    array-length v0, v5

    const/4 v1, 0x0

    move v6, v1

    :goto_4
    if-ge v1, v0, :cond_9

    aget-object v7, v5, v1

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Landroidx/compose/ui/layout/Measured;->e()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    check-cast v9, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_5

    :cond_6
    move-object v9, v11

    :goto_5
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    if-eqz v9, :cond_7

    iget-object v11, v9, Landroidx/compose/foundation/layout/RowColumnParentData;->c:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    :cond_7
    if-eqz v11, :cond_8

    iget v9, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-virtual {v11, p0, v9, v10}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v9

    goto :goto_6

    :cond_8
    iget-object v9, v4, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/Alignment$Horizontal;

    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-interface {v9, v11, p0, v10}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v9

    :goto_6
    aget v6, v2, v6

    invoke-static {p1, v7, v9, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v1, v1, 0x1

    move v6, v8

    goto :goto_4

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
