.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$1$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0xcb
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    if-eqz p1, :cond_3

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->g:Z

    const/4 p1, 0x3

    if-eqz p0, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$checkUserEligibilityForPass$1;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$checkUserEligibilityForPass$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {p0, v3, v3, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->B:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->k:Ljava/lang/String;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {p0, v3, v3, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initConsent$1;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initConsent$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {p0, v3, v3, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$1$1;->b:I

    sget-object v0, Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
