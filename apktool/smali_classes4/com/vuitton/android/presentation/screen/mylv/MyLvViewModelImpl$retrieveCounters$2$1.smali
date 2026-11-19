.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$retrieveCounters$2$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x1d3,
        0x1d4,
        0x1dd,
        0x1e5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public c:Ljava/util/List;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->f:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->f:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->g:Z

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->f:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v11, :cond_2

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v3

    move-object/from16 v3, p1

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v2

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v2

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1;

    sget-object v13, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->b:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v6, v13, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$updateCountersJob$1;

    invoke-direct {v13, v12, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$updateCountersJob$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v4, v6, v12, v13, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v13

    new-instance v14, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$updateCountersJob$2;

    invoke-direct {v14, v12, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$updateCountersJob$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v4, v6, v12, v14, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v14

    new-array v15, v11, [Lkotlinx/coroutines/Job;

    aput-object v13, v15, v7

    aput-object v14, v15, v10

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v14, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->m:Z

    if-nez v14, :cond_5

    new-instance v14, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$1;

    iget-boolean v15, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->g:Z

    invoke-direct {v14, v1, v15, v12}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v4, v6, v12, v14, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v14, v14, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->d:Z

    if-eqz v14, :cond_7

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->m:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$2;

    invoke-direct {v2, v12, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v4, v6, v12, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->d:I

    invoke-virtual {v3, v2, v7, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_8

    goto/16 :goto_3

    :cond_8
    :goto_0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v10, v13

    check-cast v10, Ljava/util/List;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->d:I

    invoke-virtual {v3, v2, v7, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_9

    goto :goto_3

    :cond_9
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$3;

    invoke-direct {v2, v12, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v4, v6, v12, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v2, v13

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->d:I

    invoke-virtual {v3, v10, v7, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$4;

    invoke-direct {v3, v12, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v4, v6, v12, v3, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    check-cast v2, Ljava/util/Collection;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->e:Ljava/lang/Object;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->c:Ljava/util/List;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1;->d:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->b(Ljava/util/Collection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_d

    :goto_3
    return-object v5

    :cond_d
    :goto_4
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_e
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
