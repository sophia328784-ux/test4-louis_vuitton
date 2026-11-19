.class final Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->b:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->d:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object p2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->c:Landroid/content/Context;

    invoke-static {p1, v2, p2}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;->d:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->b:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->d:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->h:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->j()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
