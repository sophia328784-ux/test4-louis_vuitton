.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "loginState",
        "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$observeLoginState$1$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x152,
        0x153
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b0:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    invoke-interface {p1, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b0:Lkotlinx/coroutines/Job;

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->b:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->b:I

    const/4 p1, 0x0

    invoke-virtual {v6, p1, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Fc(ZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_1
    return-object v1

    :cond_7
    :goto_2
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->e:Z

    if-eqz p1, :cond_8

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkEligibilityForPass$1;

    invoke-direct {v1, v6, v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkEligibilityForPass$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v5, v5, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1$1;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_OUT:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne p1, v1, :cond_b

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne v0, p1, :cond_b

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_3

    :cond_9
    move-object p1, v5

    :goto_3
    if-eqz p1, :cond_a

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    :cond_a
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;)V

    :cond_b
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
