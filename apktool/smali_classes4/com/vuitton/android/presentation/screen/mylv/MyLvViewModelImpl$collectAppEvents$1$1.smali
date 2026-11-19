.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/core/events/AppEvent;",
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
        "it",
        "Lcom/vuitton/android/core/events/AppEvent;"
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$collectAppEvents$1$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x111
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

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/core/events/AppEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/core/events/AppEvent;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->b:I

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

    instance-of p1, v0, Lcom/vuitton/android/core/events/AppEvent$RefreshUserAvatar;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->d:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    if-eqz p1, :cond_2

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;

    invoke-direct {p1, v3, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveUserAvatar$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    const/4 v0, 0x3

    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_2
    instance-of p1, v0, Lcom/vuitton/android/core/events/AppEvent$LogOutEvent;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Pa()V

    goto :goto_0

    :cond_3
    instance-of p1, v0, Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;

    if-nez p1, :cond_4

    instance-of p1, v0, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    if-eqz p1, :cond_6

    :cond_4
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->m:Z

    if-eqz p1, :cond_5

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$collectAppEvents$1$1;->b:I

    invoke-static {v2, v4, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_5
    invoke-virtual {v2, v4}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Gc(Z)V

    :cond_6
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
