.class final Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;
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
    c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$onConfirmationPageReached$1"
    f = "WebViewViewModel.kt"
    l = {
        0xa2,
        0xa4
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->b:I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->w:Z

    if-nez p1, :cond_3

    iput-boolean v4, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->w:Z

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->k:Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->j:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_THANK_YOU_PAGE_REDIRECT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iput v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->b:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->s:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent$NavigateToThankYou;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$onConfirmationPageReached$1;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    if-nez p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->MAIN:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    :cond_5
    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent$NavigateToThankYou;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;)V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
