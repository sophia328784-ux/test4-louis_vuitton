.class final Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1$1$1"
    f = "ServicesViewModelImpl.kt"
    l = {
        0x105,
        0x10d,
        0x10e,
        0x117,
        0x11f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public c:Ljava/util/List;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->f:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->f:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->f:Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    check-cast v4, Ljava/util/List;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1;

    sget-object v4, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->b:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, v4, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v12}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v12

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    iput v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    invoke-virtual {v1, v12, v5, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v13, v10

    move-object v10, p1

    move-object p1, v13

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$1;

    invoke-direct {p1, v11, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    invoke-static {v2, v10, v11, p1, v9}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->OSA_CREATE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    iput-object v12, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    invoke-virtual {v1, p1, v5, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_8

    goto/16 :goto_4

    :cond_8
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BOOKING_MY_EXPERIENCES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    iput-object v12, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    iput v8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    invoke-virtual {v1, p1, v5, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_9

    goto :goto_4

    :cond_9
    move-object v8, v10

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v10, v8

    :cond_a
    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$2;

    invoke-direct {p1, v11, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    invoke-static {v2, v10, v11, p1, v9}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v10

    :cond_b
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PERSONAL_SELECTIONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    invoke-virtual {v1, p1, v5, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_c

    goto :goto_4

    :cond_c
    move-object v1, v4

    move-object v4, v8

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$3;

    invoke-direct {p1, v11, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;)V

    invoke-static {v2, v4, v11, p1, v9}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    check-cast v1, Ljava/util/Collection;

    iput-object v11, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->e:Ljava/lang/Object;

    iput-object v11, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->b:Lkotlinx/coroutines/CoroutineExceptionHandler;

    iput-object v11, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->c:Ljava/util/List;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1;->d:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/AwaitKt;->b(Ljava/util/Collection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_e

    :goto_4
    return-object v3

    :cond_e
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
