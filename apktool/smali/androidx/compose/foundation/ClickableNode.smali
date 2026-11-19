.class public Landroidx/compose/foundation/ClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u00002\u00020\u0001BM\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/ClickableNode;",
        "Landroidx/compose/foundation/AbstractClickableNode;",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/IndicationNodeFactory;",
        "indicationNodeFactory",
        "",
        "useLocalIndication",
        "enabled",
        "",
        "onClickLabel",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "Lkotlin/Function0;",
        "",
        "onClick",
        "<init>",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public M:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p8, 0x0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final I(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 9

    iget-object v0, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/List;

    invoke-super {p0, p1, p2}, Landroidx/compose/foundation/AbstractClickableNode;->I(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p1, :cond_8

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez p1, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_a

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->p2(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_6

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    if-eqz v4, :cond_2

    iget-boolean v3, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-nez v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, p1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {p1}, Landroidx/compose/ui/platform/ViewConfiguration;->g()F

    move-result p1

    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-wide v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    iget-object v7, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void

    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    invoke-virtual {p0, p1, p2, v1}, Landroidx/compose/foundation/AbstractClickableNode;->o2(JZ)V

    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    return-void

    :cond_8
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p1, :cond_a

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz p1, :cond_a

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_5
    if-ge v2, p1, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v3, p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eq p2, v3, :cond_9

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    iget-object v0, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->q2(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_0
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->m2(J)J

    move-result-wide p1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4, p3, p4, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-virtual {p0, p1, p2, v2}, Landroidx/compose/foundation/AbstractClickableNode;->o2(JZ)V

    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void

    :cond_6
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p1, :cond_8

    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz p1, :cond_8

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_3
    if-ge p2, p1, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eq p3, p4, :cond_7

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final f1()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/foundation/AbstractClickableNode;->f1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void
.end method

.method public final t2(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final u2(Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final w1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ClickableNode;->w2(Z)V

    return-void
.end method

.method public final w2(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroidx/compose/foundation/ClickableNode;->N:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/ClickableNode;->M:Landroidx/compose/ui/input/pointer/PointerInputChange;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->n2(Z)V

    return-void
.end method
