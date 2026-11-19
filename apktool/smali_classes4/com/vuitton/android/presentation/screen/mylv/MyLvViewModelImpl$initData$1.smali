.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;
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
    c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initData$1"
    f = "MyLvViewModelImpl.kt"
    l = {
        0x132,
        0x133,
        0x13b,
        0x141
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

.field public c:Ljava/lang/Throwable;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->g:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->e:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    check-cast v0, Lkotlin/Unit;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->d:I

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v11

    move v11, v0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-boolean v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->T:Z

    if-nez v0, :cond_6

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_6
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    iput-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    iput v9, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->d:I

    iput v8, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->e:I

    invoke-virtual {v0, v1}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    goto/16 :goto_4

    :cond_7
    move-object v12, v2

    move v11, v9

    :goto_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-interface {v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->d()Lkotlinx/coroutines/flow/Flow;

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    iput v11, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->d:I

    iput v7, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->e:I

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto/16 :goto_4

    :cond_8
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_b

    check-cast v0, Lkotlin/Unit;

    iput-boolean v8, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->T:Z

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_9
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v9}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->Gc(Z)V

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->j:Z

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->f:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/push/NotificationsManager;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;

    invoke-direct {v5, v10, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initInbox$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V

    invoke-static {v3, v10, v10, v5, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_a
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->m:Z

    if-eqz v0, :cond_d

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    iput v9, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->d:I

    iput v6, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->e:I

    invoke-static {v2, v8, v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_d

    goto :goto_4

    :cond_b
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v9, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->T:Z

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140967

    invoke-direct {v13, v3, v10, v7, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v3

    iput-object v10, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->f:Ljava/lang/Object;

    iput-object v2, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iput-object v11, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->c:Ljava/lang/Throwable;

    iput v9, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->d:I

    iput v5, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$initData$1;->e:I

    invoke-interface {v0, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    :goto_4
    return-object v4

    :cond_c
    move-object v1, v2

    move-object v0, v11

    :goto_5
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v3, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    const-string v4, "Unable to init tokens"

    invoke-interface {v1, v3, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
