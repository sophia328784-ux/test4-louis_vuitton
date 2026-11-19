.class final Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;
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
    c = "com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1"
    f = "PersonalSelectionsListViewModelImpl.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->d:Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->d:Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->d:Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenMyPersonalSections;->a:Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Action$OpenMyPersonalSections;

    invoke-interface {p1, v3, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl$getPersonalSelectionsList$1;->c:I

    invoke-virtual {v3, p0}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    new-instance v3, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;

    invoke-static {v8, v4}, Lcom/vuitton/android/presentation/screen/personalselections/list/mappers/PersonalSelectionsUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;Ljava/util/Locale;)Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;

    invoke-static {v7, v4}, Lcom/vuitton/android/presentation/screen/personalselections/list/mappers/PersonalSelectionsUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;Ljava/util/Locale;)Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;

    invoke-direct {v2, v6, v5}, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;)V

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "PersonalSelectionsListViewModelImpl"

    const-string v3, "Unable to get personal selections list"

    invoke-interface {v0, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$MyPersonalSectionsError;

    invoke-direct {v0, p1}, Lcom/vuitton/android/domain/monitoring/personalselections/PersonalSelectionsMonitoring$Error$MyPersonalSectionsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Error;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListViewState$Error;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
