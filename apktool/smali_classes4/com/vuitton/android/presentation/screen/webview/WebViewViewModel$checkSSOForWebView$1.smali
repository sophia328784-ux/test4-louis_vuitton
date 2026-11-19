.class final Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;
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
    c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$checkSSOForWebView$1"
    f = "WebViewViewModel.kt"
    l = {
        0x8e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->e:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->e:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->f:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->e:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->a:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->f:Ljava/lang/String;

    if-eqz p1, :cond_3

    :try_start_2
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->b:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->b:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->c:Ljava/lang/String;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$checkSSOForWebView$1;->d:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;->a(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    move-object p0, v2

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->u:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;

    invoke-direct {p1, v1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$LoadCart;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/channels/ChannelResult;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/ChannelResult;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->u:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    throw p1
.end method
