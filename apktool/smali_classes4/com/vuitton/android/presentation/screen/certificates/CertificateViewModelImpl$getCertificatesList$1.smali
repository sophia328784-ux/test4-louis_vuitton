.class final Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$getCertificatesList$1"
    f = "CertificateViewModelImpl.kt"
    l = {
        0x5e,
        0x65,
        0x67
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

.field public c:Lkotlinx/coroutines/Deferred;

.field public d:Lkotlinx/coroutines/Deferred;

.field public e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public f:Ljava/lang/Object;

.field public g:Ljava/util/List;

.field public h:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

.field public i:I

.field public j:I

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

.field public final synthetic n:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->m:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->m:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->m:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->l:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->n:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    iget v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->i:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->h:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->g:Ljava/util/List;

    check-cast v9, Ljava/util/List;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->f:Ljava/lang/Object;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->d:Lkotlinx/coroutines/Deferred;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->c:Lkotlinx/coroutines/Deferred;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v3

    move-object/from16 v18, v5

    move-object/from16 v17, v9

    move-object v3, v14

    const/4 v14, 0x2

    move-object/from16 v5, p1

    :goto_0
    move-object v9, v13

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->j:I

    iget v5, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->i:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->f:Ljava/lang/Object;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->d:Lkotlinx/coroutines/Deferred;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->c:Lkotlinx/coroutines/Deferred;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v5

    move v5, v3

    move v3, v6

    move-object/from16 v15, p1

    move-object v6, v13

    move-object v13, v9

    move-object v9, v12

    move-object v12, v8

    move-object v8, v14

    const/4 v14, 0x2

    goto :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->l:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->k:I

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_1
    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    :try_start_2
    new-instance v8, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1$certificateList$1;

    invoke-direct {v8, v1, v11}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1$certificateList$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v11, v8, v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1;

    invoke-direct {v9, v1, v11}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1$retrieveUsername$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v11, v9, v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    move-object v9, v2

    move v12, v6

    :goto_2
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->l:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->c:Lkotlinx/coroutines/Deferred;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->f:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->g:Ljava/util/List;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->h:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->i:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->j:I

    const/4 v14, 0x2

    iput v14, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->k:I

    invoke-interface {v8, v0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v23, v9

    move-object v9, v3

    move v3, v12

    move-object v12, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v8

    move-object v8, v5

    move v5, v6

    move-object/from16 v6, v23

    :goto_3
    check-cast v15, Ljava/util/List;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->l:Ljava/lang/Object;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->c:Lkotlinx/coroutines/Deferred;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->f:Ljava/lang/Object;

    move-object v11, v15

    check-cast v11, Ljava/util/List;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->g:Ljava/util/List;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->h:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->i:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->j:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$getCertificatesList$1;->k:I

    invoke-interface {v9, v0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    :goto_4
    return-object v4

    :cond_6
    move-object/from16 v18, v8

    move-object/from16 v17, v15

    move-object v15, v6

    move v6, v3

    move-object v3, v9

    goto/16 :goto_0

    :goto_5
    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    new-instance v16, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    invoke-direct/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v16

    invoke-interface {v9, v12, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_7
    move v12, v6

    move-object v5, v8

    move-object v8, v15

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_2

    :goto_6
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$OpenMyCertificatesError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Error$OpenMyCertificatesError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v10, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Error;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Error;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
