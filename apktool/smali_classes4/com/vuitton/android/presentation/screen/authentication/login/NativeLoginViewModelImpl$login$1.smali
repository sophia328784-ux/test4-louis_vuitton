.class final Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$login$1"
    f = "NativeLoginViewModelImpl.kt"
    l = {
        0x94,
        0x95,
        0x96,
        0x97,
        0x9a,
        0xa3,
        0xaa
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->f:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->g:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->g:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->f:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->g:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :pswitch_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    check-cast v3, Lkotlin/Unit;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v18, v5

    move v5, v3

    move-object v3, v10

    move-object/from16 v10, v18

    goto/16 :goto_3

    :pswitch_3
    iget v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    iget v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->f:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    if-eqz v5, :cond_1

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->a:Ljava/lang/String;

    invoke-static {v3, v10, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->b:Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    new-instance v11, Lrq;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Lrq;-><init>(I)V

    invoke-interface {v3, v10, v5, v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase$Param;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-interface {v12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->EMAIL:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v3, v13, v14}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v12, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v10, v11}, Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase$Param;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;

    iput v14, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-virtual {v3, v5, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;->a(Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_0
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v3, Lkotlin/Result$Failure;

    if-nez v5, :cond_5

    move-object v5, v3

    check-cast v5, Lkotlin/Unit;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-virtual {v5, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_3

    goto/16 :goto_6

    :cond_3
    move-object v5, v1

    move-object v10, v3

    move v3, v8

    :goto_1
    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    const/4 v11, 0x3

    iput v11, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-static {v5, v0}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    :goto_2
    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->t:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    const/4 v13, 0x4

    iput v13, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-interface {v11, v12, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_0

    goto/16 :goto_6

    :goto_3
    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginSuccessEvent;

    invoke-virtual {v10, v11}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->P6(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel;)V

    sget-object v11, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Login;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Login;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    const-string v13, "NativeLoginViewModelImpl"

    invoke-interface {v12, v13, v11}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->i:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    const/4 v5, 0x5

    iput v5, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    sget-object v5, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    invoke-virtual {v10, v5, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    :goto_4
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel$OnLoginFailureEvent;

    invoke-virtual {v1, v10}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->P6(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginTrackingUiModel;)V

    new-instance v10, Lcom/vuitton/android/domain/monitoring/authentication/NativeLoginMonitoring$Error$LogInError;

    invoke-direct {v10, v5}, Lcom/vuitton/android/domain/monitoring/authentication/NativeLoginMonitoring$Error$LogInError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v6, v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v10, v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;

    if-eqz v10, :cond_9

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;

    instance-of v10, v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$InvalidPassword;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;->b:Ljava/lang/String;

    if-eqz v10, :cond_6

    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;

    invoke-direct {v10, v5}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$UnknownError;

    invoke-direct {v10, v5}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_5
    instance-of v5, v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    if-eqz v5, :cond_8

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginExceptionUiModel$InvalidPassword;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-direct {v13, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    const/4 v3, 0x6

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-interface {v11, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    goto :goto_6

    :cond_8
    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140967

    invoke-direct {v13, v1, v9, v7, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x3c

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->c:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->d:I

    const/4 v3, 0x7

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl$login$1;->e:I

    invoke-interface {v11, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    :goto_6
    return-object v4

    :cond_9
    :goto_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
