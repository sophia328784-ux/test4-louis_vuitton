.class final Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;
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
    c = "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$updateLocale$1"
    f = "DispatchCountryViewModelImpl.kt"
    l = {
        0x80,
        0x81,
        0x82,
        0x83
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;-><init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->e:Z

    invoke-virtual {p1, v1, v5, p0}, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_0
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/search/History;

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/search/History;-><init>(Ljava/util/List;)V

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;->a(Lcom/vuitton/foundation/model/domain/model/search/History;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;->b:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    return-object v0

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
