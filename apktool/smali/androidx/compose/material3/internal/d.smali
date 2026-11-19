.class public final synthetic Landroidx/compose/material3/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput p4, p0, Landroidx/compose/material3/internal/d;->b:I

    iput-object p1, p0, Landroidx/compose/material3/internal/d;->c:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p2, p0, Landroidx/compose/material3/internal/d;->e:Landroidx/compose/ui/Modifier$Node;

    iput-object p3, p0, Landroidx/compose/material3/internal/d;->d:Landroidx/compose/ui/layout/Placeable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Landroidx/compose/material3/internal/d;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/compose/material3/internal/d;->d:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, p0, Landroidx/compose/material3/internal/d;->e:Landroidx/compose/ui/Modifier$Node;

    iget-object p0, p0, Landroidx/compose/material3/internal/d;->c:Landroidx/compose/ui/layout/MeasureScope;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result p0

    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->p:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->b()Landroidx/compose/foundation/gestures/DraggableAnchors;

    move-result-object p0

    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->p:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->i:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/gestures/DraggableAnchors;->c(Ljava/lang/Object;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->e()F

    move-result p0

    :goto_0
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v6, :cond_1

    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->r:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v6, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v5, v5, Landroidx/compose/material3/internal/DraggableAnchorsNodeV2;->r:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v6, :cond_2

    mul-float/2addr v0, p0

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    invoke-static {v0}, Lkotlin/math/MathKt;->c(F)I

    move-result v0

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-virtual {p1, v4, v0, p0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    iput-boolean v1, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v5, Landroidx/compose/material3/internal/DraggableAnchorsNode;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result p0

    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNode;->p:Landroidx/compose/material3/internal/AnchoredDraggableState;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->e()Landroidx/compose/material3/internal/DraggableAnchors;

    move-result-object p0

    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNode;->p:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iget-object v0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->h:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/material3/internal/DraggableAnchors;->c(Ljava/lang/Object;)F

    move-result p0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->g()F

    move-result p0

    :goto_4
    iget-object v0, v5, Landroidx/compose/material3/internal/DraggableAnchorsNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v5, :cond_5

    move v5, p0

    goto :goto_5

    :cond_5
    move v5, v3

    :goto_5
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v6, :cond_6

    goto :goto_6

    :cond_6
    move p0, v3

    :goto_6
    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    invoke-static {v5}, Lkotlin/math/MathKt;->c(F)I

    move-result v0

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    invoke-virtual {p1, v4, v0, p0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    iput-boolean v1, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
