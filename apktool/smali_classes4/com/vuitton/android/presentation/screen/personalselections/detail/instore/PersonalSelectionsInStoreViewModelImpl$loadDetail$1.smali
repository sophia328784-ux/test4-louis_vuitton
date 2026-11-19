.class final Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;
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
    c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl$loadDetail$1"
    f = "PersonalSelectionsInStoreViewModelImpl.kt"
    l = {
        0xe2,
        0xe5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->e:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->e:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->e:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->n:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->o:Ljava/lang/String;

    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->c:Ljava/lang/Object;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_2
    move-object v13, v2

    move-object v12, v4

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->e:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverInStoreSelection;->a:Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenDiscoverInStoreSelection;

    invoke-interface {v2, v1, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    const-string v5, "personalSelectionsId"

    invoke-virtual {v2, v10, v5}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

    iput-object v2, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->d:I

    invoke-virtual {v5, v10, v9}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_2

    goto/16 :goto_4

    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v12, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    move-object v2, v12

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->f:Ljava/lang/String;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->c:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/mappers/PersonalSelectionsDetailUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;)Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    move-result-object v4

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->d:Ljava/lang/String;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v7, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    invoke-static {v1, v5, v6, v7}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->d(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    if-nez v1, :cond_4

    move-object v1, v5

    :cond_4
    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->b:Ljava/lang/String;

    if-nez v6, :cond_5

    :goto_1
    move-object v6, v1

    move-object v1, v4

    goto :goto_2

    :cond_5
    move-object v5, v6

    goto :goto_1

    :goto_2
    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->e:Ljava/lang/String;

    move-object v7, v5

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->f:Ljava/lang/String;

    move-object v8, v6

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->i:Ljava/util/List;

    iget-object v14, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->g:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    iget-object v3, v14, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v14, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;->b:Ljava/lang/String;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionStore;->c:Ljava/lang/String;

    invoke-direct {v7, v3, v0, v14}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelectionsDetail;->j:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object v2, v8

    new-instance v8, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    invoke-static {v3}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iput-object v13, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->c:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;->d:I

    move-object v3, v15

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_7

    :goto_4
    return-object v11

    :cond_7
    move-object v1, v12

    move-object v2, v13

    :goto_5
    move-object v12, v1

    move-object v13, v2

    :cond_8
    invoke-static {v12}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to retrieve personal selections detail for selectionId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersonalSelectionsInStoreViewModelImpl"

    invoke-interface {v2, v4, v3, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverInStoreSelectionError;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$DiscoverInStoreSelectionError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v13, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v13}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
