.class final Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;Lcom/vuitton/android/core/events/LVEventSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
    c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$1"
    f = "WebViewViewModel.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->g:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->g:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->d:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->g:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, v1

    move v1, v3

    :cond_2
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object p1, v3

    check-cast p1, Ljava/lang/String;

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;->i:Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->c:Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->d:Ljava/lang/Object;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->e:I

    iput v2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$1;->f:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;->a:Lcom/vuitton/android/domain/repository/DeviceIdRepository;

    invoke-interface {p1, p0}, Lcom/vuitton/android/domain/repository/DeviceIdRepository;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-interface {v5, v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
