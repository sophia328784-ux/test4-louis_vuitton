.class final Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getStoreSlotModify$1"
    f = "OsaLocationFormViewModelImpl.kt"
    l = {
        0x2a8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->e:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->b:I

    const/16 v7, 0xa

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    if-ne v6, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;

    sget-object v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;->APPOINTMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/AvailabilitiesCallerMapperKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AvailabilitiesCallerUiModel;)Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;

    move-result-object v11

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput v8, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->b:I

    invoke-virtual {v6, v11, v10, v12, v1}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v6

    :goto_1
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v0, Lkotlin/Result$Failure;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-nez v6, :cond_f

    :try_start_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/RepairTimeSlotMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->d:Ljava/lang/String;

    iget-object v12, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->c:Ljava/util/List;

    iget-object v13, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->b:Ljava/util/List;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    if-eqz v14, :cond_5

    :try_start_1
    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v14, v9

    :goto_4
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v16, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    if-nez v11, :cond_6

    const-string v11, ""

    :cond_6
    move-object/from16 v17, v11

    const-string v11, "HH:mm"

    invoke-static {v11, v15}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v18

    const-string v11, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {v11, v15}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v19

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    const-string v14, "yyyy-MM-dd"

    invoke-static {v14, v15}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v20, v11

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v16

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-boolean v15, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    if-eqz v15, :cond_7

    :goto_5
    move-object/from16 v19, v13

    goto :goto_8

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v15

    move-object v8, v13

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v15, v8}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    check-cast v13, Ljava/lang/Iterable;

    instance-of v8, v13, Ljava/util/Collection;

    if-eqz v8, :cond_8

    move-object v8, v13

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v15, v11}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    new-instance v13, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$1;

    invoke-direct {v13}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$1;-><init>()V

    invoke-static {v8, v13}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v13

    goto :goto_5

    :goto_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v8, v13}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    check-cast v12, Ljava/lang/Iterable;

    instance-of v13, v12, Ljava/util/Collection;

    if-eqz v13, :cond_b

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_9

    :cond_b
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_a

    :cond_d
    :goto_9
    invoke-virtual {v8, v11}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :goto_a
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    new-instance v11, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$2;

    invoke-direct {v11}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1$invokeSuspend$lambda$0$1$$inlined$sortedBy$2;-><init>()V

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v20

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->d:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->e:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v11

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v17

    :cond_e
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    goto/16 :goto_3

    :goto_b
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :cond_f
    instance-of v6, v0, Lkotlin/Result$Failure;

    if-nez v6, :cond_25

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    :cond_10
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    invoke-interface {v3, v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/LocalDate;

    const/4 v7, 0x0

    if-eqz v4, :cond_16

    check-cast v6, Ljava/lang/Iterable;

    instance-of v8, v6, Ljava/util/Collection;

    if-eqz v8, :cond_11

    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_e

    :cond_11
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->q:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->c:Ljava/util/List;

    goto :goto_d

    :cond_13
    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->b:Ljava/util/List;

    :goto_d
    check-cast v8, Ljava/lang/Iterable;

    instance-of v11, v8, Ljava/util/Collection;

    if-eqz v11, :cond_14

    move-object v11, v8

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    goto :goto_c

    :cond_14
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12, v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v8, 0x1

    goto :goto_f

    :cond_16
    :goto_e
    move v8, v7

    :goto_f
    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$getStoreSlotModify$1;->e:Ljava/util/List;

    if-nez v8, :cond_19

    if-eqz v4, :cond_19

    check-cast v1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/time/LocalDate;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_18
    move-object v1, v7

    :cond_19
    invoke-interface {v6, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1a
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->d:Ljava/lang/String;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz v11, :cond_1c

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    goto :goto_11

    :cond_1c
    move-object v11, v9

    :goto_11
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_12

    :cond_1d
    move-object v6, v9

    :goto_12
    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    if-eqz v6, :cond_20

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->b:Ljava/util/List;

    if-eqz v4, :cond_20

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_13

    :cond_1f
    move-object v8, v9

    :goto_13
    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-nez v8, :cond_24

    :cond_20
    if-eqz v6, :cond_23

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;->c:Ljava/util/List;

    if-eqz v4, :cond_23

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_14

    :cond_22
    move-object v6, v9

    :goto_14
    move-object v8, v6

    check-cast v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    goto :goto_15

    :cond_23
    move-object v8, v9

    :cond_24
    :goto_15
    invoke-interface {v7, v1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$generateAppointmentListToModify$1;

    invoke-direct {v3, v2, v10, v9}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl$generateAppointmentListToModify$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v1, v9, v9, v3, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_25
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "OsaLocationFormViewModelImpl"

    const-string v2, "Unable to retrieve the store timeslot list"

    sget-object v3, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v3, v1, v2, v0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
