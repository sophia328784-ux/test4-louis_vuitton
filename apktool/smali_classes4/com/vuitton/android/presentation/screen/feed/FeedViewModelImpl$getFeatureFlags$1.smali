.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$getFeatureFlags$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x139,
        0x13f,
        0x140,
        0x141,
        0x142,
        0x143
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public final synthetic p:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->p:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->p:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->n:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->m:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iget v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iget v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iget v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v24, v2

    move v2, v4

    move-object v4, v1

    move-object/from16 v1, p1

    :goto_0
    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v21, v7

    move/from16 v18, v8

    move/from16 v17, v11

    move v6, v12

    move-object v5, v15

    goto/16 :goto_b

    :pswitch_1
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->m:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iget v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iget-boolean v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iget v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iget v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v4, v5

    move v5, v2

    move v2, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_9

    :pswitch_2
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iget v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iget v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iget v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v3, v2

    move-object/from16 v2, p1

    goto/16 :goto_8

    :pswitch_3
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iget v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iget v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iget v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    goto/16 :goto_7

    :pswitch_4
    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iget v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iget v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iget v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v8

    move-object/from16 v8, p1

    goto/16 :goto_6

    :pswitch_5
    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iget v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v9, v5

    move-object v10, v6

    move-object v11, v7

    move-object v12, v8

    move-object/from16 v8, p1

    goto :goto_3

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->p:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    move v6, v4

    :goto_1
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->INBOX:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v9}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v9

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    invoke-virtual {v8, v9, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_0

    :goto_2
    move-object v4, v1

    goto/16 :goto_a

    :cond_0
    move-object v11, v2

    move v2, v4

    move-object v12, v5

    move v9, v6

    move-object v10, v7

    :goto_3
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->F:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->b:Z

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    invoke-virtual {v6}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_4

    :cond_1
    move v6, v4

    goto :goto_5

    :cond_2
    :goto_4
    move v6, v3

    :goto_5
    iget-object v8, v11, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CLIENT_QR_CODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v13}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v13

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iput v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    const/4 v14, 0x2

    iput v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    invoke-virtual {v8, v13, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v2

    move v2, v5

    move v5, v4

    :goto_6
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iput v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    const/4 v3, 0x3

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    invoke-virtual {v14, v15, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move v5, v8

    move v8, v6

    move v6, v2

    :goto_7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v13, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->LINE_SIGN_IN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iput v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    move/from16 p1, v2

    const/4 v2, 0x4

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    invoke-virtual {v3, v15, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_2

    :cond_5
    move/from16 v3, p1

    :goto_8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v15, v13, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FEED_REVAMP_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array/range {v16 .. v16}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iput v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->m:Z

    move/from16 p1, v2

    const/4 v2, 0x5

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    const/4 v2, 0x0

    invoke-virtual {v15, v4, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    goto/16 :goto_2

    :cond_6
    move v2, v10

    move-object v15, v14

    move v10, v8

    move-object v14, v13

    move v8, v6

    move-object v13, v12

    move v6, v3

    move v12, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move/from16 v5, p1

    :goto_9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v18, v1

    filled-new-array/range {v16 .. v16}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->d:Ljava/lang/Object;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->e:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->f:I

    iput-boolean v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->i:Z

    iput v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->g:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->h:I

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->j:Z

    iput-boolean v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->k:Z

    iput-boolean v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->l:Z

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->m:Z

    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->n:Z

    const/4 v2, 0x6

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;->o:I

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v18

    if-ne v1, v4, :cond_7

    :goto_a
    return-object v4

    :cond_7
    move/from16 v24, v3

    goto/16 :goto_0

    :goto_b
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    new-instance v16, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    if-eqz v9, :cond_8

    const/16 v19, 0x1

    goto :goto_c

    :cond_8
    move/from16 v19, v2

    :goto_c
    if-eqz v10, :cond_9

    const/16 v20, 0x1

    goto :goto_d

    :cond_9
    move/from16 v20, v2

    :goto_d
    const/16 v26, 0x4

    const/16 v27, 0x0

    invoke-direct/range {v16 .. v27}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;-><init>(ZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    invoke-interface {v5, v13, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    move-object v1, v4

    const/4 v3, 0x1

    move v4, v2

    move-object v2, v14

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
