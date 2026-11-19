.class final Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$processSocialAuth$1"
    f = "SocialLoginViewModelImpl.kt"
    l = {
        0x191,
        0x193,
        0x196,
        0x197,
        0x19e,
        0x1a1
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

.field public e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

.field public h:I

.field public i:I

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

.field public final synthetic k:Z

.field public final synthetic l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

.field public final synthetic m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final synthetic n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->j:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->k:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->j:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->k:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->j:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->m:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v11, 0x2

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    const/4 v13, 0x0

    packed-switch v6, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :pswitch_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :pswitch_1
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    check-cast v3, Lkotlin/Unit;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :pswitch_2
    iget v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    check-cast v6, Lkotlin/Unit;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    check-cast v14, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v7, v6

    move v6, v3

    move-object v3, v10

    goto/16 :goto_6

    :pswitch_3
    iget v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v10

    move-object v10, v7

    move-object v7, v6

    move-object v6, v13

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v16, v13

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v3

    move-object v7, v6

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v16, v13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->k:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;

    :goto_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1$WhenMappings;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v10, v10, v13

    const/4 v13, 0x1

    if-eq v10, v13, :cond_3

    if-eq v10, v11, :cond_2

    const/4 v14, 0x3

    if-ne v10, v14, :cond_1

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    const/16 v27, 0x1a0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v3

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-direct/range {v17 .. v28}, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object/from16 v3, v17

    goto :goto_3

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_2
    new-instance v29, Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    const/16 v39, 0x1a0

    const/16 v40, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v36, v3

    move-object/from16 v34, v7

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    invoke-direct/range {v29 .. v40}, Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v29

    goto :goto_3

    :cond_3
    new-instance v17, Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;

    iget-object v10, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    iget-object v14, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    const/16 v27, 0x1a0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v3

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-direct/range {v17 .. v28}, Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :goto_3
    :try_start_5
    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    invoke-virtual {v7, v3, v0}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v7, v3

    move-object v10, v6

    :goto_4
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v7, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    move-object v3, v7

    check-cast v3, Lkotlin/Unit;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    const/4 v6, 0x0

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    const/4 v6, 0x2

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_5

    goto/16 :goto_9

    :cond_5
    move-object v6, v1

    move-object v14, v8

    move-object v15, v9

    move-object v11, v10

    const/4 v3, 0x0

    move-object v10, v7

    move-object v7, v12

    :goto_5
    invoke-interface {v15}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;

    invoke-virtual {v6, v11, v13, v14, v7}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->v:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    move-object/from16 v14, v16

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    const/4 v14, 0x3

    iput v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    invoke-interface {v7, v13, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_6

    goto/16 :goto_9

    :cond_6
    move-object v14, v11

    goto/16 :goto_0

    :goto_6
    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    sget-object v10, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    const/4 v6, 0x4

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    invoke-virtual {v7, v10, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_7

    goto/16 :goto_9

    :cond_7
    move-object v6, v14

    :goto_7
    move-object v7, v3

    move-object v10, v6

    :cond_8
    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_d

    new-instance v6, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$LogInError;

    invoke-direct {v6, v3}, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$LogInError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;

    invoke-virtual {v1, v10, v6, v8, v12}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    instance-of v3, v3, Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;

    if-eqz v3, :cond_c

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    const/4 v6, 0x0

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    const/4 v3, 0x5

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->x:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->r:Z

    if-eqz v1, :cond_a

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->KAKAO:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-eq v1, v6, :cond_a

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V

    invoke-interface {v3, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_9

    goto :goto_8

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_8

    :cond_a
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V

    invoke-interface {v3, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_b

    goto :goto_8

    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_8
    if-ne v0, v5, :cond_d

    goto :goto_9

    :cond_c
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140967

    const/4 v6, 0x2

    const/4 v14, 0x0

    invoke-direct {v9, v1, v14, v6, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->c:Ljava/lang/Object;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    const/4 v6, 0x0

    iput v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->h:I

    const/4 v3, 0x6

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$processSocialAuth$1;->i:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v0, v5, :cond_d

    :goto_9
    return-object v5

    :cond_d
    :goto_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
