.class final Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1$1;
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


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1$1;->b:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1$1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1$1;->c:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1$1;->b:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
