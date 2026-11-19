.class final Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;
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
    c = "com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl$initialize$1"
    f = "BookingExperienceViewModelImpl.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->d:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->d:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->d:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->a:Ljava/lang/String;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    if-ne v7, v9, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->i:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v11, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadForm;->a:Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadForm;

    invoke-interface {v7, v10, v11}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v7

    const-string v10, "experienceId"

    invoke-virtual {v7, v5, v10}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;->c:I

    invoke-virtual {v10, v5, v4, v3, v0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2

    return-object v6

    :cond_2
    move-object v6, v0

    move-object v0, v7

    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v6, Lkotlin/Result$Failure;

    if-nez v7, :cond_8

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->e:Ljava/util/List;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->c:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->q:Ljava/util/List;

    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->a:Ljava/lang/String;

    iget-object v13, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->d:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->a:Ljava/lang/String;

    move-object/from16 v22, v8

    iget-object v8, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->b:Ljava/lang/String;

    iget-object v9, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->c:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->d:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->e:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormHeader;->g:Ljava/lang/String;

    move-object/from16 v20, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->e:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v7, Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;->f:Lcom/vuitton/foundation/model/domain/model/booking/BookingType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt$WhenMappings;->c:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v7, v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_5

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->EXPERIENCE:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    :goto_2
    move-object/from16 v16, v3

    goto :goto_3

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_5
    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->APPOINTMENT:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    goto :goto_2

    :goto_3
    new-instance v11, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceHeaderUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;)V

    invoke-static {v11, v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v13

    invoke-virtual {v1, v10}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->zc(Ljava/util/List;)Z

    move-result v14

    if-eqz v4, :cond_6

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    move-object v15, v4

    goto :goto_4

    :cond_6
    move-object/from16 v15, v22

    :goto_4
    if-eqz v23, :cond_7

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    move-object/from16 v16, v23

    goto :goto_5

    :cond_7
    move-object/from16 v16, v22

    :goto_5
    new-instance v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x30

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;

    invoke-direct {v3, v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    :cond_8
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->g:Lcom/vuitton/foundation/logger/Logger;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a:Ljava/lang/String;

    const-string v5, "Failed to load booking experience"

    invoke-interface {v1, v4, v5, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadFormError;

    invoke-direct {v1, v3}, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadFormError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Error;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
