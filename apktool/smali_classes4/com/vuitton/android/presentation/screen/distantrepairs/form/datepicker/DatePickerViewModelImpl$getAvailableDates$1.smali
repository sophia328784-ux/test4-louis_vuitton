.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$getAvailableDates$1"
    f = "DatePickerViewModelImpl.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->f:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->f:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->e:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->c:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->e:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$DisplayRepairSlots;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$DisplayRepairSlots;

    invoke-interface {p1, v3, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->c:I

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->f:Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    invoke-virtual {v7, v6, v3, v4, p0}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, p1

    move-object p1, v3

    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1$invokeSuspend$lambda$1$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1$invokeSuspend$lambda$1$$inlined$sortedBy$1;-><init>()V

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Ljava/time/LocalDate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$getAvailableDates$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-virtual {v0, v6, v5, p0, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->Tb(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    iput-boolean v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->n:Z

    new-instance p1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$DisplayRepairSlotsError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$DisplayRepairSlotsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "DatePickerViewModelImpl"

    const-string v3, "Unable to retrieve dates list"

    invoke-interface {p1, v0, v3, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_8
    invoke-interface {v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
