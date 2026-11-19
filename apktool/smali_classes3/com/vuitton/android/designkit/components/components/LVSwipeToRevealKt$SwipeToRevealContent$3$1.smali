.class final Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.designkit.components.components.LVSwipeToRevealKt$SwipeToRevealContent$3$1"
    f = "LVSwipeToReveal.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->b:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iput-boolean p2, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->e:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;

    iget-object v3, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->d:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->e:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->b:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-boolean v2, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->c:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->b:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object p1, p1, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/designkit/components/components/SwipeDragAnchors;

    sget-object v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->c:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$3$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
