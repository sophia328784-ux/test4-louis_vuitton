.class public final synthetic Landroidx/compose/foundation/gestures/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

.field public final synthetic d:Landroidx/compose/foundation/gestures/AnchoredDragScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/foundation/gestures/a;->b:I

    iput-object p1, p0, Landroidx/compose/foundation/gestures/a;->c:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/a;->d:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/compose/foundation/gestures/a;->b:I

    const/16 v1, 0x20

    const-wide v2, 0xffffffffL

    iget-object v4, p0, Landroidx/compose/foundation/gestures/a;->d:Landroidx/compose/foundation/gestures/AnchoredDragScope;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/a;->c:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->K:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-wide v5, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    iget-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->L:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v7, :cond_0

    and-long v1, v5, v2

    :goto_0
    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    goto :goto_1

    :cond_0
    shr-long v1, v5, v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->d(F)F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->K:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->e()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->D2(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;F)J

    move-result-wide v0

    invoke-static {v4, p1}, Landroidx/compose/foundation/gestures/AnchoredDragScope;->b(Landroidx/compose/foundation/gestures/AnchoredDragScope;F)V

    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-wide v5, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a:J

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->E2()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    :goto_2
    invoke-static {p1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->g(FJ)J

    move-result-wide v5

    goto :goto_3

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :goto_3
    iget-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->L:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, v0, :cond_2

    and-long v0, v5, v2

    :goto_4
    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    goto :goto_5

    :cond_2
    shr-long v0, v5, v1

    goto :goto_4

    :goto_5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->N:Landroidx/compose/foundation/OverscrollEffect;

    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->K:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->d(F)F

    move-result p0

    invoke-static {v4, p0}, Landroidx/compose/foundation/gestures/AnchoredDragScope;->b(Landroidx/compose/foundation/gestures/AnchoredDragScope;F)V

    goto :goto_6

    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->D2(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;F)J

    move-result-wide v1

    sget-object p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    new-instance v3, Landroidx/compose/foundation/gestures/a;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5}, Landroidx/compose/foundation/gestures/a;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Landroidx/compose/foundation/gestures/AnchoredDragScope;I)V

    invoke-interface {v0, v1, v2, p1, v3}, Landroidx/compose/foundation/OverscrollEffect;->o(JILkotlin/jvm/functions/Function1;)J

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
