.class final Landroidx/compose/foundation/CombinedClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017B\u007f\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/foundation/CombinedClickableNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/foundation/AbstractClickableNode;",
        "Lkotlin/Function0;",
        "",
        "onClick",
        "",
        "onLongClickLabel",
        "onLongClick",
        "onDoubleClick",
        "",
        "hapticFeedbackEnabled",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/IndicationNodeFactory;",
        "indicationNodeFactory",
        "useLocalIndication",
        "enabled",
        "onClickLabel",
        "Landroidx/compose/ui/semantics/Role;",
        "role",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "DoubleKeyClickState",
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
.field public M:Ljava/lang/String;

.field public N:Lkotlin/jvm/functions/Function0;

.field public O:Lkotlin/jvm/functions/Function0;

.field public P:Z

.field public final Q:Landroidx/collection/MutableLongObjectMap;

.field public final R:Landroidx/collection/MutableLongObjectMap;

.field public S:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public T:Lkotlinx/coroutines/Job;

.field public V:Lkotlinx/coroutines/Job;

.field public W:Z

.field public X:Z

.field public Y:J

.field public Z:Z

.field public b1:Lkotlinx/coroutines/Job;

.field public c1:Z

.field public d1:Z

.field public e1:J

.field public f1:Z

.field public h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

.field public t0:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v7, p1

    move-object v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->M:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Landroidx/compose/foundation/CombinedClickableNode;->P:Z

    sget p1, Landroidx/collection/LongObjectMapKt;->a:I

    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroidx/collection/MutableLongObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Q:Landroidx/collection/MutableLongObjectMap;

    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    invoke-direct {p1, p2, p3, p4}, Landroidx/collection/MutableLongObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->R:Landroidx/collection/MutableLongObjectMap;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:J

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->e1:J

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

    if-ne p2, p1, :cond_d

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez p1, :cond_4

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_f

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p2, :cond_f

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p2

    if-ne p2, v1, :cond_2

    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    iget-wide v5, p0, Landroidx/compose/foundation/CombinedClickableNode;->e1:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x28

    cmp-long p2, v3, v5

    if-gez p2, :cond_0

    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->f1:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->c1:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    :cond_2
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->p2(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;

    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, p2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->t0:Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    if-eqz p1, :cond_7

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

    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    if-eqz v4, :cond_5

    iget-boolean v3, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-nez v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->x2(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_7
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_3
    if-ge p2, p1, :cond_c

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v4, :cond_8

    iget-boolean v4, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    if-eqz v4, :cond_8

    iget-boolean v3, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-nez v3, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
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

    :goto_4
    if-ge v3, p2, :cond_f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-wide v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_9

    move v5, v1

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void

    :cond_c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iput-boolean v1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/foundation/CombinedClickableNode;->x2(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    return-void

    :cond_d
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p1, :cond_f

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    if-nez p1, :cond_f

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_7
    if-ge v2, p1, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v3, p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eq p2, v3, :cond_e

    invoke-virtual {p0, v1}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method public final b2()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->z2()V

    return-void
.end method

.method public final f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    iget-object v0, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_10

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_3

    invoke-static {p1, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p2, :cond_12

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p2

    if-ne p2, v3, :cond_2

    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p2, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    iget-wide v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:J

    sub-long/2addr p2, v4

    const-wide/16 v4, 0x28

    cmp-long p2, p2, v4

    if-gez p2, :cond_0

    iput-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Z

    return-void

    :cond_0
    iput-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->W:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_1

    invoke-interface {p2, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    :cond_2
    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->q2(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;

    invoke-direct {p2, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode$handleDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p1, v1, v1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->c:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v2

    :goto_0
    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->P:Z

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, p1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object p2, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {p1, v2}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    :cond_7
    iput-boolean v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    :cond_8
    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    if-eqz p1, :cond_b

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_a

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {p3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p3

    if-nez p3, :cond_9

    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->y2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_b
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_3
    if-ge p2, p1, :cond_f

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->m2(J)J

    move-result-wide p1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_12

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4, p3, p4, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    iget-object p3, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/CombinedClickableNode;->y2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    return-void

    :cond_10
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p1, :cond_12

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    if-nez p1, :cond_12

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v2

    :goto_6
    if-ge p2, p1, :cond_12

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result p4

    if-eqz p4, :cond_11

    iget-object p4, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eq p3, p4, :cond_11

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public final f1()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/foundation/AbstractClickableNode;->f1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void
.end method

.method public final k2(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->M:Ljava/lang/String;

    new-instance v1, Landroidx/compose/foundation/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/c;-><init>(Landroidx/compose/ui/Modifier$Node;I)V

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p1, p0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s2()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/CombinedClickableNode;->z2()V

    return-void
.end method

.method public final t2(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->N:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Q:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;

    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyDownEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    invoke-static {v3, v2, v2, v4, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Landroidx/collection/MutableLongObjectMap;->g(JLjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->R:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    if-eqz v4, :cond_2

    iget-object v5, v4, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->a:Lkotlinx/coroutines/Job;

    invoke-interface {v5}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-boolean v2, v4, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->b:Z

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/MutableLongObjectMap;->f(J)Ljava/lang/Object;

    return p1

    :cond_1
    invoke-virtual {v3, v0, v1}, Landroidx/collection/MutableLongObjectMap;->f(J)Ljava/lang/Object;

    :cond_2
    return p1
.end method

.method public final u2(Landroid/view/KeyEvent;)V
    .locals 6

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Q:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->f(J)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->R:Landroidx/collection/MutableLongObjectMap;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongObjectMap;->b(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v4, :cond_6

    new-instance v2, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v5, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyUpEvent$2;

    invoke-direct {v5, p0, v0, v1, v3}, Landroidx/compose/foundation/CombinedClickableNode$onClickKeyUpEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v4, v3, v3, v5, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/collection/MutableLongObjectMap;->g(JLjava/lang/Object;)V

    return-void

    :cond_3
    if-nez v4, :cond_4

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongObjectMap;->f(J)Ljava/lang/Object;

    return-void

    :cond_5
    if-nez v4, :cond_6

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final w1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/CombinedClickableNode;->w2(Z)V

    return-void
.end method

.method public final w2(Z)V
    .locals 5

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->t0:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_0

    invoke-interface {v4, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->t0:Lkotlinx/coroutines/Job;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->c1:Z

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->e1:J

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->f1:Z

    goto :goto_0

    :cond_2
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v3, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->W:Z

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    iput-wide v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:J

    iput-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Z

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->n2(Z)V

    return-void
.end method

.method public final x2(JLandroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->f1:Z

    if-nez v0, :cond_2

    iget-wide v2, p3, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    const/4 p3, 0x1

    invoke-virtual {p0, v2, v3, p3}, Landroidx/compose/foundation/AbstractClickableNode;->o2(JZ)V

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->e1:J

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->c1:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$2;

    invoke-direct {p2, p0, v1}, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$2;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p1, v1, v1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->b1:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->h0:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->f1:Z

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->c1:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->t0:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->t0:Lkotlinx/coroutines/Job;

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->d1:Z

    return-void
.end method

.method public final y2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Z

    if-nez v0, :cond_2

    iget-wide v3, p3, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-virtual {p0, v3, v4, v1}, Landroidx/compose/foundation/AbstractClickableNode;->o2(JZ)V

    iput-wide p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Y:J

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->W:Z

    iget-object p2, p0, Landroidx/compose/foundation/CombinedClickableNode;->O:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$1;

    invoke-direct {p2, p0, v2}, Landroidx/compose/foundation/CombinedClickableNode$handleUpEvent$1;-><init>(Landroidx/compose/foundation/CombinedClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    invoke-static {p1, v2, v2, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->V:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    iput-object v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->S:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->Z:Z

    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->W:Z

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v2, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlinx/coroutines/Job;

    iput-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableNode;->X:Z

    return-void
.end method

.method public final z2()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->Q:Landroidx/collection/MutableLongObjectMap;

    iget-object v2, v1, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/LongObjectMap;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ltz v4, :cond_3

    move v15, v14

    const-wide/16 v16, 0x80

    :goto_0
    aget-wide v6, v3, v15

    const-wide/16 v18, 0xff

    not-long v8, v6

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    sub-int v8, v15, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    move v9, v14

    :goto_1
    if-ge v9, v8, :cond_1

    and-long v20, v6, v18

    cmp-long v20, v20, v16

    if-gez v20, :cond_0

    shl-int/lit8 v20, v15, 0x3

    add-int v20, v20, v9

    aget-object v20, v2, v20

    move/from16 v21, v10

    move-object/from16 v10, v20

    check-cast v10, Lkotlinx/coroutines/Job;

    invoke-interface {v10, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_2

    :cond_0
    move/from16 v21, v10

    :goto_2
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v21

    goto :goto_1

    :cond_1
    move/from16 v21, v10

    if-ne v8, v13, :cond_4

    goto :goto_3

    :cond_2
    move/from16 v21, v10

    :goto_3
    if-eq v15, v4, :cond_4

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v21

    goto :goto_0

    :cond_3
    move/from16 v21, v10

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableLongObjectMap;->c()V

    iget-object v0, v0, Landroidx/compose/foundation/CombinedClickableNode;->R:Landroidx/collection/MutableLongObjectMap;

    iget-object v1, v0, Landroidx/collection/LongObjectMap;->c:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_8

    move v4, v14

    :goto_4
    aget-wide v6, v2, v4

    not-long v8, v6

    shl-long v8, v8, v21

    and-long/2addr v8, v6

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_7

    sub-int v8, v4, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    move v9, v14

    :goto_5
    if-ge v9, v8, :cond_6

    and-long v22, v6, v18

    cmp-long v10, v22, v16

    if-gez v10, :cond_5

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;

    iget-object v10, v10, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->a:Lkotlinx/coroutines/Job;

    invoke-interface {v10, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    shr-long/2addr v6, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    if-ne v8, v13, :cond_8

    :cond_7
    if-eq v4, v3, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroidx/collection/MutableLongObjectMap;->c()V

    return-void
.end method
