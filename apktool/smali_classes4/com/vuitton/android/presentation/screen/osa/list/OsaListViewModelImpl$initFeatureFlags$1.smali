.class final Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;
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
    c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$initFeatureFlags$1"
    f = "OsaListViewModelImpl.kt"
    l = {
        0x83,
        0x84
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->b:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_REASONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->b:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->c:I

    invoke-virtual {v1, p1, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_MODIFY:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$initFeatureFlags$1;->c:I

    invoke-virtual {v1, v0, v4, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_2
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
