.class public abstract Landroidx/compose/foundation/gestures/DragGestureNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/foundation/GestureConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008!\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B7\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/DragGestureNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/foundation/GestureConnection;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "",
        "canDrag",
        "enabled",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientationLock",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V",
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
.field public A:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

.field public B:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

.field public C:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

.field public D:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

.field public E:Landroidx/compose/foundation/gestures/DragDetectionState;

.field public F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public G:J

.field public H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

.field public I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

.field public J:J

.field public r:Landroidx/compose/foundation/gestures/Orientation;

.field public s:Lkotlin/jvm/functions/Function1;

.field public t:Z

.field public u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public v:Landroidx/compose/ui/node/DelegatableNode;

.field public w:Lkotlinx/coroutines/channels/BufferedChannel;

.field public x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p2, Landroidx/compose/ui/geometry/Offset;->d:J

    iput-wide p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    return-void
.end method

.method public static final k2(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_3

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v5, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->d:I

    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_4
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    sget-object v0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->u2(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final l2(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->c:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_4

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->f:I

    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {p2}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_6

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->c:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->f:I

    invoke-interface {v2, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p1

    move-object p1, p2

    :goto_3
    move-object p2, p1

    move-object p1, v0

    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-wide p1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->a:J

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->t2(J)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final m2(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_4

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_3

    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->b:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->e:I

    invoke-interface {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode;->u2(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static r2(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V
    .locals 7

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    sget-object p4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p4, 0x0

    :cond_0
    iget-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    if-nez p6, :cond_1

    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->C:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    move-object p6, v0

    :cond_1
    iput-object p1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput-wide p2, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    if-nez p1, :cond_2

    new-instance v0, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    goto :goto_0

    :cond_2
    iput-object v1, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    iput-wide p4, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    iput-object p6, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    return-void
.end method


# virtual methods
.method public final A2()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Lkotlinx/coroutines/channels/BufferedChannel;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final B2(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lkotlin/jvm/functions/Function1;

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n2()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    :cond_0
    move p5, v1

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n2()V

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p4, :cond_3

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_3
    move v1, p5

    :goto_0
    if-eqz v1, :cond_7

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    sget-object p2, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a:Landroidx/compose/foundation/gestures/DragGestureNode;

    iget-boolean p2, p1, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureNode;->s2(Landroidx/compose/foundation/gestures/DragEvent;)V

    :cond_6
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->g:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/OffsetSmoother;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    iget-object p0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    iput p1, p0, Landroidx/collection/LongList;->b:I

    :cond_7
    return-void
.end method

.method public final I(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->b:I

    iget-object v1, v1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/List;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v4, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    if-eqz v4, :cond_38

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-nez v4, :cond_1

    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    invoke-direct {v4, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;-><init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    :cond_1
    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz v5, :cond_38

    iget-object v0, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a:Landroidx/compose/foundation/gestures/DragGestureNode;

    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v4, :cond_3

    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    const/4 v6, 0x3

    invoke-direct {v4, v12, v11, v6, v12}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;-><init>(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    :cond_2
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    :cond_3
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    if-eqz v4, :cond_37

    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_c

    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_12

    :cond_4
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    if-ge v11, v6, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-static {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-object v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    sget-object v7, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-ne v1, v15, :cond_8

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->z2()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_1

    :cond_7
    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_1

    :cond_8
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    :goto_1
    iput-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v1, :cond_9

    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v0, v1, :cond_9

    iput-boolean v15, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iput-boolean v15, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    :cond_9
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v1, :cond_38

    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v0, v1, :cond_a

    iget-wide v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    const-wide/16 v9, 0x0

    const/16 v11, 0xc

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    return-void

    :cond_a
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    if-eqz v0, :cond_38

    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    move-object v7, v6

    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-virtual {v5, v6, v0, v13, v14}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    iget-wide v0, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iget-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    if-nez v2, :cond_b

    new-instance v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    invoke-direct {v2, v13, v14, v15, v12}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    :cond_b
    iput-wide v0, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    return-void

    :cond_c
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    if-eqz v6, :cond_22

    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v6, :cond_d

    goto/16 :goto_12

    :cond_d
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v11

    :goto_2
    if-ge v7, v6, :cond_f

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-wide v9, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iget-wide v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_3

    :cond_e
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_2

    :cond_f
    const/4 v8, 0x0

    :goto_3
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v8, :cond_13

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_11

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v9, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-eqz v9, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_11
    const/4 v8, 0x0

    :goto_5
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v8, :cond_12

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    return-void

    :cond_12
    iget-wide v6, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iput-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    :cond_13
    move-object v7, v8

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const-string v11, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v2, v6, :cond_1e

    iget-boolean v6, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v6, :cond_1b

    invoke-static {v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v6

    if-eqz v6, :cond_17

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_15

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v8, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-eqz v8, :cond_14

    goto :goto_7

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    const/4 v6, 0x0

    :goto_7
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v6, :cond_16

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    goto/16 :goto_8

    :cond_16
    iget-wide v0, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    goto/16 :goto_8

    :cond_17
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/input/pointer/PointerType;->c:I

    invoke-static {v1, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v1

    iget-object v6, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->i:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v6, :cond_1a

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-static {v7, v0, v8, v15}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v1, v15}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v9

    const-wide v0, 0x7fffffff7fffffffL

    and-long/2addr v0, v9

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v16

    if-eqz v0, :cond_19

    iput-boolean v15, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-virtual {v5, v7, v0, v9, v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    iget-wide v0, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    if-nez v3, :cond_18

    new-instance v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    const/4 v6, 0x0

    invoke-direct {v3, v13, v14, v15, v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    :cond_18
    iput-wide v0, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->f:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    goto :goto_8

    :cond_19
    iput-boolean v15, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    goto :goto_8

    :cond_1a
    const-string v0, "Touch slop detector not initialized."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz v0, :cond_1d

    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    iget-object v1, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->i:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v1, :cond_1c

    invoke-virtual {v5, v0, v8, v9, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_8

    :cond_1c
    invoke-static {v11}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {v12}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1e
    :goto_8
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v0, :cond_38

    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    if-eqz v0, :cond_38

    iget-boolean v0, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz v0, :cond_21

    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz v0, :cond_20

    iget-wide v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->i:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_1f

    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    return-void

    :cond_1f
    invoke-static {v11}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static {v12}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    return-void

    :cond_22
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    if-eqz v6, :cond_2a

    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-eq v2, v6, :cond_23

    goto/16 :goto_12

    :cond_23
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_25

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz v7, :cond_24

    const/4 v15, 0x0

    goto :goto_a

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_25
    :goto_a
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v2, :cond_29

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v6, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-eqz v6, :cond_28

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_c

    :cond_26
    if-eqz v15, :cond_38

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v1

    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v7, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-static {v6, v0, v7}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v9

    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-eqz v6, :cond_27

    iget-wide v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->b:J

    const/16 v11, 0x8

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->c(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    return-void

    :cond_27
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_28
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_29
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    return-void

    :cond_2a
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    if-eqz v6, :cond_36

    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-eq v2, v6, :cond_2b

    goto/16 :goto_12

    :cond_2b
    iget-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v2, :cond_2d

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-wide v10, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    invoke-static {v10, v11, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_2c

    move-object v6, v9

    goto :goto_e

    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_2d
    const/4 v6, 0x0

    :goto_e
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v6, :cond_2e

    goto/16 :goto_12

    :cond_2e
    invoke-static {v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v2, :cond_30

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    iget-boolean v9, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    if-eqz v9, :cond_2f

    goto :goto_10

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_30
    const/4 v8, 0x0

    :goto_10
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    if-nez v8, :cond_32

    iget-boolean v1, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-nez v1, :cond_31

    invoke-static {v6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v16

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    iget-wide v7, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->l:J

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v17, v6

    move-wide/from16 v21, v7

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    move-result v1

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v2

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(J)J

    move-result-wide v1

    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    const/4 v7, 0x0

    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    iput v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v8, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-static {v7, v8}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v6, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    iput-wide v13, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->c:J

    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->c(J)J

    move-result-wide v1

    invoke-direct {v3, v1, v2, v15, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->s2(Landroidx/compose/foundation/gestures/DragEvent;)V

    goto :goto_11

    :cond_31
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->s2(Landroidx/compose/foundation/gestures/DragEvent;)V

    :goto_11
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    return-void

    :cond_32
    iget-wide v0, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->a:J

    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->a:J

    return-void

    :cond_33
    iget-boolean v1, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    if-eqz v1, :cond_34

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->s2(Landroidx/compose/foundation/gestures/DragEvent;)V

    return-void

    :cond_34
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-static {v6, v1, v2, v15}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_35

    goto :goto_12

    :cond_35
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    invoke-virtual {v5, v6, v2, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    iput-boolean v15, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    return-void

    :cond_36
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_37
    const-string v0, "currentDragState should not be null"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :cond_38
    :goto_12
    return-void
.end method

.method public final a1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 0

    invoke-static {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->c(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a2()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->n2()V

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->i2(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method public f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Z

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v4, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    if-eqz v4, :cond_38

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    if-nez v4, :cond_1

    new-instance v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7, v6}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;-><init>(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    :cond_1
    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    :cond_2
    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    if-eqz v4, :cond_37

    instance-of v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_a

    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_12

    :cond_3
    invoke-static {v1, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_12

    :cond_4
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    sget-object v7, Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-ne v5, v3, :cond_6

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->z2()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_0

    :cond_5
    sget-object v5, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    goto :goto_0

    :cond_6
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    :goto_0
    iput-object v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_7

    sget-object v7, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v5, v7, :cond_7

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    :cond_7
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_38

    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    if-ne v5, v2, :cond_8

    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->r2(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    return-void

    :cond_8
    iget-boolean v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    if-eqz v2, :cond_38

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v1, v8, v9}, Landroidx/compose/foundation/gestures/DragGestureNode;->y2(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    invoke-virtual {v0, v8, v9, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->x2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    if-nez v4, :cond_9

    new-instance v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    invoke-direct {v4, v8, v9, v3, v6}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    :cond_9
    iput-wide v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    iput-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    return-void

    :cond_a
    instance-of v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    if-eqz v7, :cond_22

    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v7, :cond_b

    goto/16 :goto_12

    :cond_b
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_d

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_d
    const/4 v12, 0x0

    :goto_2
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v12, :cond_11

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_f

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v11, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_f
    const/4 v10, 0x0

    :goto_4
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v12, :cond_10

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    return-void

    :cond_10
    iget-wide v5, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    :cond_11
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const-string v6, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const-string v10, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v2, v5, :cond_1e

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_13

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v8, :cond_12

    goto :goto_6

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_13
    const/4 v7, 0x0

    :goto_6
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_14

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    goto/16 :goto_8

    :cond_14
    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    goto/16 :goto_8

    :cond_15
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    iget v5, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    invoke-static {v1, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v1

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v5, :cond_1a

    invoke-static {v12, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v13

    invoke-virtual {v5, v13, v14, v1, v3}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v13

    const-wide v15, 0x7fffffff7fffffffL

    and-long/2addr v15, v13

    const-wide v17, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, v15, v17

    if-eqz v1, :cond_19

    invoke-virtual {v0, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->n0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    invoke-static {v0}, Landroidx/compose/foundation/GestureNodeKt;->b(Landroidx/compose/ui/node/DelegatingNode;)Landroidx/compose/foundation/GestureConnection;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-interface {v5, v12}, Landroidx/compose/foundation/GestureConnection;->n0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-ne v5, v3, :cond_16

    move v5, v3

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    :goto_7
    if-nez v1, :cond_17

    if-eqz v5, :cond_17

    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    goto :goto_8

    :cond_17
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v12, v13, v14}, Landroidx/compose/foundation/gestures/DragGestureNode;->y2(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    invoke-virtual {v0, v13, v14, v12}, Landroidx/compose/foundation/gestures/DragGestureNode;->x2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    iget-wide v13, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    if-nez v1, :cond_18

    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    const/4 v5, 0x0

    invoke-direct {v1, v8, v9, v3, v5}, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    :cond_18
    iput-wide v13, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    goto :goto_8

    :cond_19
    iput-boolean v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    goto :goto_8

    :cond_1a
    const-string v0, "Touch slop detector not initialized."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v1, :cond_1d

    iget-wide v7, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v3, :cond_1c

    invoke-virtual {v0, v1, v7, v8, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->q2(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    goto :goto_8

    :cond_1c
    invoke-static {v6}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {v10}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1e
    :goto_8
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v2, v1, :cond_38

    iget-boolean v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    if-eqz v1, :cond_38

    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v1, :cond_20

    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->b:J

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz v4, :cond_1f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/DragGestureNode;->q2(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V

    return-void

    :cond_1f
    invoke-static {v6}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static {v10}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->c:Z

    return-void

    :cond_22
    instance-of v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    if-eqz v5, :cond_2a

    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-eq v2, v5, :cond_23

    goto/16 :goto_12

    :cond_23
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_25

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_24

    const/4 v3, 0x0

    goto :goto_a

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_25
    :goto_a
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_29

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v6, :cond_28

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_c

    :cond_26
    if-eqz v3, :cond_38

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    iget-object v3, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v1

    move-wide v2, v1

    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v1, :cond_27

    move-wide v5, v2

    iget-wide v2, v4, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->b:J

    move-wide v4, v5

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureNode;->r2(Landroidx/compose/foundation/gestures/DragGestureNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    return-void

    :cond_27
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_29
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    return-void

    :cond_2a
    instance-of v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    if-eqz v5, :cond_36

    check-cast v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-eq v2, v5, :cond_2b

    goto/16 :goto_12

    :cond_2b
    iget-wide v5, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_2d

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object v5, v11

    goto :goto_e

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_2d
    const/4 v5, 0x0

    :goto_e
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v5, :cond_2e

    goto/16 :goto_12

    :cond_2e
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_30

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v7, :cond_2f

    goto :goto_10

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_30
    const/4 v6, 0x0

    :goto_10
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_32

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5, v8, v9}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v2

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    iget-object v4, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v7, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-static {v6, v7}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput v5, v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    iput-wide v8, v3, Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;->c:J

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->c(J)J

    move-result-wide v1

    invoke-direct {v4, v1, v2, v5, v6}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v5, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Z

    goto :goto_11

    :cond_31
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    return-void

    :cond_32
    iget-wide v0, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v0, v4, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->a:J

    return-void

    :cond_33
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_34
    invoke-static {v5, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_35

    goto :goto_12

    :cond_35
    const/4 v1, 0x0

    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5}, Landroidx/compose/foundation/gestures/DragGestureNode;->x2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    return-void

    :cond_36
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_37
    const-string v0, "currentDragState should not be null"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :cond_38
    :goto_12
    return-void
.end method

.method public final f1()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->p2()V

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Z

    return-void
.end method

.method public final n0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 8

    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-nez v0, :cond_2

    new-instance v2, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->r:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->g()F

    move-result v0

    invoke-static {p1, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->H:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v4

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Landroidx/compose/ui/geometry/Offset;->d:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    move-result-wide v2

    const/16 p1, 0x20

    shr-long v4, v2, p1

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float p1, v2

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p1, v0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    if-nez p0, :cond_3

    const/4 p0, -0x1

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/compose/foundation/gestures/TouchSlopDetector$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    if-eq p0, p1, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    goto :goto_2

    :cond_4
    cmpl-double p0, v2, v4

    if-lez p0, :cond_6

    goto :goto_1

    :cond_5
    cmpg-double p0, v2, v4

    if-gez p0, :cond_6

    :goto_1
    return p1

    :cond_6
    :goto_2
    return v1

    :cond_7
    const-string p0, "Touch slop detector not initialized."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v1
.end method

.method public final n2()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->u:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->x:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :cond_1
    return-void
.end method

.method public abstract o2(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final p2()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;-><init>(Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->b:Z

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    return-void
.end method

.method public final q2(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->D:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    move-object v0, v1

    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput-wide p2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->b:J

    invoke-static {p4}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->c(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->E:Landroidx/compose/foundation/gestures/DragDetectionState;

    return-void
.end method

.method public final s2(Landroidx/compose/foundation/gestures/DragEvent;)V
    .locals 1

    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->A2()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract t2(J)V
.end method

.method public abstract u2(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
.end method

.method public final v2()Lkotlinx/coroutines/channels/Channel;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Events channel not initialized."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final w1()V
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->I:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a()V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->a:Landroidx/compose/foundation/gestures/DragGestureNode;

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->a:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->s2(Landroidx/compose/foundation/gestures/DragEvent;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->g:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/OffsetSmoother;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    iget-object p0, p0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    iput v0, p0, Landroidx/collection/LongList;->b:I

    :cond_1
    return-void
.end method

.method public final w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final x2(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->g(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/geometry/Offset;->d:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    :cond_0
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, p1, p2, v0, v1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final y2(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->F:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->w2()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->a(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    iget-wide v4, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-static {v4, v5, p3, p4}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v2, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:J

    iget-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lkotlin/jvm/functions/Function1;

    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerType;

    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->y:Z

    const/4 p4, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Lkotlinx/coroutines/channels/BufferedChannel;

    if-nez p1, :cond_1

    const p1, 0x7fffffff

    const/4 v0, 0x6

    invoke-static {p1, v0, p4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->w:Lkotlinx/coroutines/channels/BufferedChannel;

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->A2()V

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->g(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->G:J

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->v2()Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    invoke-direct {p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public abstract z2()Z
.end method
