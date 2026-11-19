.class final Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
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
    c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$1"
    f = "ThankYouViewModelImpl.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;->b:I

    invoke-static {v3, p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;

    invoke-direct {p1, v3, v2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
