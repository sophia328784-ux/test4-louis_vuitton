.class final Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$onConfirmClicked$1"
    f = "SocialRegisterViewModelImpl.kt"
    l = {
        0x18d,
        0x191,
        0x19a,
        0x19b,
        0x1ad,
        0x1c7,
        0x1cc
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

.field public d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

.field public e:Ljava/util/Iterator;

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

.field public final synthetic j:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

.field public final synthetic k:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->i:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->j:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->j:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->i:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->k:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->j:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->i:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :pswitch_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->g:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->e:Ljava/util/Iterator;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    check-cast v13, Ljava/lang/Throwable;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v3, v9

    const/4 v12, 0x4

    move v9, v6

    goto/16 :goto_8

    :pswitch_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->g:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->e:Ljava/util/Iterator;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    check-cast v13, Ljava/lang/Throwable;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    check-cast v13, Lkotlin/Unit;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v3, v2

    move-object v6, v12

    move-object v2, v14

    goto/16 :goto_3

    :pswitch_5
    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v25, v12

    move-object v3, v13

    move-object v13, v14

    goto/16 :goto_2

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v25, v12

    :cond_0
    move-object v15, v2

    goto/16 :goto_1

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->r:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    sget-object v14, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v8, :cond_3

    if-eq v14, v7, :cond_2

    if-ne v14, v6, :cond_1

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->j:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->l:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->b:Ljava/lang/String;

    move-object/from16 v25, v12

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->f:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->e:Ljava/lang/String;

    move-object/from16 v24, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    move-object/from16 v20, v12

    move-object/from16 v22, v13

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v24}, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v25, v12

    invoke-static {}, Lv40;->g()V

    return-object v25

    :cond_2
    move-object/from16 v25, v12

    new-instance v26, Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->j:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->l:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->f:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->e:Ljava/lang/String;

    move-object/from16 v35, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v10

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    invoke-direct/range {v26 .. v35}, Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v26

    goto :goto_0

    :cond_3
    move-object/from16 v25, v12

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->j:Ljava/lang/String;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->l:Ljava/lang/String;

    iget-object v15, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->f:Ljava/lang/String;

    iget-object v10, v13, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->e:Ljava/lang/String;

    move-object/from16 v21, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object v13, v3

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v12

    :goto_0
    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->n:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    invoke-virtual {v2, v15, v3, v0}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    goto/16 :goto_9

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v15, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    move-object v2, v15

    check-cast v2, Lkotlin/Unit;

    invoke-virtual {v9}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v5, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;

    const-string v6, "_sign_up"

    invoke-static {v2, v6}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lkotlin/Pair;

    const-string v7, "af_registration_method"

    invoke-direct {v6, v7, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RegistrationCompleted;-><init>(Ljava/util/Map;)V

    const-string v2, "SocialRegisterViewModelImpl"

    invoke-interface {v3, v2, v5}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    const/4 v3, 0x0

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    const/4 v3, 0x2

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    invoke-virtual {v2, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v3, v9

    move-object v13, v11

    const/4 v2, 0x0

    :goto_2
    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;

    iget-object v6, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->m:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v7, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {v5, v6, v7, v3}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v3, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v3, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->u:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-object/from16 v6, v25

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    const/4 v7, 0x3

    iput v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    invoke-interface {v3, v5, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    goto/16 :goto_9

    :cond_5
    move v3, v2

    move-object v2, v15

    :goto_3
    iget-object v5, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    sget-object v3, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    invoke-virtual {v5, v3, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_6

    goto/16 :goto_9

    :cond_6
    :goto_4
    move-object v15, v2

    :cond_7
    invoke-static {v15}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->m:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {v3, v5, v6, v9}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v3, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$ActivateAccountError;

    invoke-direct {v3, v2}, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$ActivateAccountError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    if-eqz v3, :cond_e

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListExceptionUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v10, v2

    move-object v13, v11

    move-object v14, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel;

    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;

    if-eqz v6, :cond_9

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->e:Ljava/util/Iterator;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->g:I

    const/4 v5, 0x5

    iput v5, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    const v5, 0x7f1410ce

    invoke-static {v13, v5, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    goto/16 :goto_9

    :cond_8
    move v9, v2

    move v2, v3

    :goto_6
    move v3, v2

    move v2, v9

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/4 v12, 0x4

    goto :goto_5

    :cond_9
    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;->c:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1$WhenMappings;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const/4 v7, 0x2

    const/4 v9, 0x3

    if-eq v5, v8, :cond_b

    if-eq v5, v7, :cond_b

    const/4 v12, 0x4

    if-eq v5, v9, :cond_a

    if-eq v5, v12, :cond_a

    goto :goto_7

    :cond_a
    iget-object v5, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const/4 v12, 0x4

    iget-object v5, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->h:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->c(Ljava/lang/String;)V

    :goto_7
    iget-object v5, v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto :goto_5

    :cond_c
    const/4 v7, 0x2

    const/4 v9, 0x3

    const/4 v12, 0x4

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->e:Ljava/util/Iterator;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->g:I

    const/4 v5, 0x6

    iput v5, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    const v5, 0x7f140967

    invoke-static {v13, v5, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v36, v3

    move v3, v2

    move/from16 v2, v36

    :goto_8
    move/from16 v36, v3

    move v3, v2

    move/from16 v2, v36

    goto/16 :goto_5

    :cond_e
    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->b:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const/4 v3, 0x0

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->f:I

    const/4 v2, 0x7

    iput v2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$onConfirmClicked$1;->h:I

    const v5, 0x7f140967

    invoke-static {v11, v5, v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    :goto_9
    return-object v1

    :cond_f
    :goto_a
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
