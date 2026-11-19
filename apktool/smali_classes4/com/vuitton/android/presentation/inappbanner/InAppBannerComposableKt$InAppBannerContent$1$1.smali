.class final Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerContent$1$1"
    f = "InAppBannerComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SwipeToDismissBoxState;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->c:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;-><init>(Landroidx/compose/material3/SwipeToDismissBoxState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->b:Landroidx/compose/material3/SwipeToDismissBoxState;

    iget-object p1, p1, Landroidx/compose/material3/SwipeToDismissBoxState;->a:Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    iget-object v0, p1, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/SwipeToDismissBoxValue;

    sget-object v1, Landroidx/compose/material3/SwipeToDismissBoxValue;->StartToEnd:Landroidx/compose/material3/SwipeToDismissBoxValue;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/SwipeToDismissBoxValue;

    sget-object v0, Landroidx/compose/material3/SwipeToDismissBoxValue;->Settled:Landroidx/compose/material3/SwipeToDismissBoxValue;

    if-ne p1, v0, :cond_1

    sget-object p1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerContent$1$1;->d:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {p0, p1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
