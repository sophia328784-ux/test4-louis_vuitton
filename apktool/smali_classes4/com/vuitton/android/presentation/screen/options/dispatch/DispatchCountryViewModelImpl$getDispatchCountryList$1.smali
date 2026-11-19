.class final Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;
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
    c = "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$getDispatchCountryList$1"
    f = "DispatchCountryViewModelImpl.kt"
    l = {
        0x5f,
        0x61
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->e:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->e:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;-><init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->e:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->d:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->b:Ljava/lang/Object;

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

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->d:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->c:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;->d:I

    invoke-interface {v3, v6, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    :goto_1
    return-object v2

    :cond_4
    move-object p0, p1

    move-object v2, v0

    :goto_2
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_5
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-nez p0, :cond_9

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->o:Z

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;->d:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v7, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    new-instance v6, Lkotlin/Pair;

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->o:Z

    if-eqz v7, :cond_7

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;->d:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->o:Z

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
