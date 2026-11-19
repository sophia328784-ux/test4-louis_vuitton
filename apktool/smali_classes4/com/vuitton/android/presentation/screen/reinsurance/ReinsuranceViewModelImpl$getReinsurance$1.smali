.class final Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;
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
    c = "com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl$getReinsurance$1"
    f = "ReinsuranceViewModelImpl.kt"
    l = {
        0x2a,
        0x2c,
        0x36,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

.field public d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

.field public final synthetic h:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->g:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->h:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->h:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->i:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->g:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->g:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    check-cast v3, Ljava/util/List;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    check-cast v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->e:I

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move p1, v3

    move-object v3, v9

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loading;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loading;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto/16 :goto_9

    :cond_6
    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;

    iput v8, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto/16 :goto_9

    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->h:Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;

    iget-boolean v8, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->i:Z

    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_a

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->OTHERS:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    if-ne v11, v12, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1$invokeSuspend$lambda$0$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1$invokeSuspend$lambda$0$$inlined$sortedBy$1;-><init>()V

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    iget-object v3, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    invoke-static {v0, p1, v8}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Z)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    move-result-object p1

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v8

    goto :goto_4

    :goto_3
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v3

    :cond_a
    :goto_4
    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_d

    move-object v3, p1

    check-cast v3, Lkotlin/Pair;

    iget-object v8, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v3, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    new-instance v9, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loaded;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Loaded;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->e:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    invoke-interface {v1, v9, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_b

    goto/16 :goto_9

    :cond_b
    move-object v3, p1

    move p1, v4

    move-object v7, v8

    move-object v8, v0

    :goto_5
    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->b:Ljava/lang/Object;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->e:I

    iput v6, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    invoke-interface {v8, v7, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_c

    goto/16 :goto_9

    :cond_c
    :goto_6
    move-object p1, v3

    :cond_d
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_13

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->b:Ljava/lang/Object;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->c:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->d:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;->f:I

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    instance-of v0, v3, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NotFound;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;

    goto :goto_7

    :cond_e
    instance-of v0, v3, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;

    const-string v4, "ReinsuranceViewModelImpl"

    if-eqz v0, :cond_f

    move-object v0, v3

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;->b:Ljava/lang/String;

    const-string v5, "ReinsuranceStateServerError: "

    invoke-static {v5, v0, p1, v4, v3}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;

    goto :goto_7

    :cond_f
    instance-of v0, v3, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NetworkErrorException;

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ReinsuranceStateNetworkError: "

    invoke-static {v5, v0, p1, v4, v3}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;

    goto :goto_7

    :cond_10
    instance-of v0, v3, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;

    if-eqz v0, :cond_11

    move-object v0, v3

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;->b:Ljava/lang/String;

    const-string v5, "ReinsuranceStateUnknownError: "

    invoke-static {v5, v0, p1, v4, v3}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UnexpectedError: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Error;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_12

    goto :goto_8

    :cond_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_8
    if-ne p0, v2, :cond_13

    :goto_9
    return-object v2

    :cond_13
    :goto_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
