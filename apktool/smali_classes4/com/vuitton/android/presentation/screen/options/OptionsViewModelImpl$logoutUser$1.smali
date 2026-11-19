.class final Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;
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
    c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$logoutUser$1"
    f = "OptionsViewModelImpl.kt"
    l = {
        0xc5,
        0xca,
        0xd1,
        0xd4
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->f:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->f:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;-><init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->f:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v9, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->d:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    check-cast v12, Lkotlin/Result;

    iget-object v12, v12, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v17, v8

    move v8, v4

    move-object v4, v12

    move-object/from16 v12, v17

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v11, Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$LogOutEvent;->a:Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$LogOutEvent;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->e:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto/16 :goto_3

    :cond_6
    :goto_0
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v4, Lkotlin/Result$Failure;

    if-nez v8, :cond_b

    move-object v8, v4

    check-cast v8, Lkotlin/Unit;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->g:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-interface {v8}, Lcom/vuitton/android/presentation/push/NotificationsManager;->l()V

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->d:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->e:I

    invoke-virtual {v8, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_7

    goto/16 :goto_3

    :cond_7
    move-object v11, v4

    move v8, v5

    move-object v4, v12

    move-object v12, v1

    :goto_1
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v13, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->C:Ljava/lang/String;

    const-string v14, "Unable to reset Dynamic Yield ID"

    invoke-interface {v4, v13, v14, v10}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;->a:Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    invoke-interface {v4, v10}, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;->b(Ljava/lang/String;)V

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_9
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v4, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v13, Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$LogoutSuccess;->a:Lcom/vuitton/android/presentation/screen/options/OptionsSideEffect$Navigation$LogoutSuccess;

    invoke-virtual {v4, v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->d:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->e:I

    sget-object v7, Lcom/vuitton/android/core/events/AppEvent$LogOutEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogOutEvent;

    invoke-virtual {v4, v7, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_a

    goto :goto_3

    :cond_a
    move-object v4, v11

    :cond_b
    :goto_2
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_d

    :cond_c
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140a5a

    invoke-direct {v12, v1, v10, v9, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v14, Lcom/vuitton/android/presentation/notification/NotificationDuration;->LONG:Lcom/vuitton/android/presentation/notification/NotificationDuration;

    const/4 v15, 0x0

    const/16 v16, 0x3a

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->c:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->d:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$logoutUser$1;->e:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    :goto_3
    return-object v3

    :cond_d
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
