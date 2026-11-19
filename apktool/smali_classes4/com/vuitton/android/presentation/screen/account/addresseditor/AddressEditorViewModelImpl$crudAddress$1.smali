.class final Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;
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
    c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$crudAddress$1"
    f = "AddressEditorViewModelImpl.kt"
    l = {
        0x1d4,
        0x1d5,
        0x1d5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:I

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->h:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->i:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->h:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->i:Lkotlin/jvm/functions/Function1;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->x:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->f:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v6, :cond_0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->e:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->d:I

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v11

    move v11, v5

    move-object v5, v10

    move-object v10, v12

    move v12, v7

    move-object/from16 v7, p1

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v7

    move-object/from16 v7, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->h:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;

    invoke-interface {v5, v10, v11}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->p5()Lcom/vuitton/android/domain/monitoring/MonitorAction;

    move-result-object v10

    :cond_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v11, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->f:I

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->i:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v17, v10

    move-object v10, v5

    move-object/from16 v5, v17

    :goto_0
    check-cast v7, Lkotlin/Result;

    iget-object v7, v7, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v11, 0x0

    iput v11, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->d:I

    iput v11, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->e:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->f:I

    invoke-virtual {v7, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    goto :goto_2

    :cond_6
    move v12, v11

    :goto_1
    check-cast v7, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->d:I

    iput v11, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->e:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->f:I

    invoke-interface {v7, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_7

    :goto_2
    return-object v4

    :cond_7
    move-object v4, v5

    move-object v5, v10

    :goto_3
    move-object v10, v5

    move-object v5, v4

    goto :goto_4

    :cond_8
    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v11}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v6, Lkotlin/Result$Failure;

    if-nez v4, :cond_9

    move-object v4, v6

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const-string v4, "addressFormExitContext"

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->j:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->v:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressBookAfterEdition;->a:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressBookAfterEdition;

    invoke-interface {v4, v7}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_12

    new-instance v6, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddEditAddressError;

    invoke-direct {v6, v4}, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddEditAddressError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v7, "AddressEditorViewModelImpl"

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;->k:Ljava/lang/String;

    invoke-interface {v6, v7, v0, v4}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, v4, Lcom/vuitton/foundation/exception/NetworkException;

    const v6, 0x7f140f9c

    if-nez v0, :cond_a

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v12, v6, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->q:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v14, Lcom/vuitton/android/presentation/notification/NotificationDuration;->LONG:Lcom/vuitton/android/presentation/notification/NotificationDuration;

    const/4 v15, 0x0

    const/16 v16, 0x38

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_a
    move-object v0, v4

    check-cast v0, Lcom/vuitton/foundation/exception/NetworkException;

    instance-of v7, v0, Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    if-eqz v7, :cond_e

    check-cast v4, Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    iget-object v0, v4, Lcom/vuitton/foundation/exception/NetworkException$CustomException;->b:Ljava/lang/Object;

    instance-of v4, v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError;

    if-eqz v4, :cond_d

    instance-of v4, v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    check-cast v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;

    iget-object v6, v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$ErrorMessage;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    move-result-object v0

    :goto_5
    move-object v12, v0

    goto :goto_7

    :cond_b
    sget-object v4, Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;->a:Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper$ApiAddressError$NoErrorMessage;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v0, v6, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_c
    const-string v0, "Unknown error type"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_d
    const-string v0, "Failed requirement."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v9

    :cond_e
    instance-of v4, v0, Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;

    if-nez v4, :cond_11

    instance-of v4, v0, Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;

    if-nez v4, :cond_11

    instance-of v4, v0, Lcom/vuitton/foundation/exception/NetworkException$NotFound;

    if-nez v4, :cond_11

    instance-of v4, v0, Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;

    if-nez v4, :cond_11

    instance-of v4, v0, Lcom/vuitton/foundation/exception/NetworkException$Unknown;

    if-eqz v4, :cond_f

    goto :goto_6

    :cond_f
    instance-of v0, v0, Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140e9d

    invoke-direct {v0, v4, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-object v9

    :cond_11
    :goto_6
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f14071b

    invoke-direct {v0, v4, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :goto_7
    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->q:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object v14, Lcom/vuitton/android/presentation/notification/NotificationDuration;->LONG:Lcom/vuitton/android/presentation/notification/NotificationDuration;

    const/4 v15, 0x0

    const/16 v16, 0x38

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_8
    invoke-interface {v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    invoke-interface {v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_13
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
