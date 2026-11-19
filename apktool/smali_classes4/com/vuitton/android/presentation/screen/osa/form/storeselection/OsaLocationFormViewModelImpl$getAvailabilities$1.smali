.class final Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getAvailabilities$1"
    f = "OsaLocationFormViewModelImpl.kt"
    l = {
        0x1b9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->e:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->e:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->c:I

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$DisplayAppointmentSlots;->a:Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$DisplayAppointmentSlots;

    invoke-interface {p1, v4, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;

    sget-object v9, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;->APPOINTMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/AvailabilitiesCallerMapperKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;)Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    move-result-object v9

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->c:I

    invoke-virtual {v4, v9, v8, v10, p0}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    return-object v3

    :cond_3
    move-object v3, p1

    move-object p1, v4

    :cond_4
    :goto_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_0
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1$invokeSuspend$lambda$1$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1$invokeSuspend$lambda$1$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_6
    :goto_4
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;-><init>(Z)V

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getAvailabilities$1;->e:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz p0, :cond_8

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;

    invoke-direct {v4, v0, p0, v2, v7}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v7, v7, v4, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_5

    :cond_8
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$DisplayAppointmentSlotsError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$DisplayAppointmentSlotsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-static {v0, v7}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Ljava/lang/String;)V

    const-string p1, "OsaLocationFormViewModelImpl"

    const-string v0, "Unable to retrieve the available dates"

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    invoke-interface {v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
