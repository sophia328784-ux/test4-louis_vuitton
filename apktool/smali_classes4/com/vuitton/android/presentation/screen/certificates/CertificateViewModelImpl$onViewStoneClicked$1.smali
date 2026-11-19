.class final Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;
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
    c = "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl$onViewStoneClicked$1"
    f = "CertificateViewModelImpl.kt"
    l = {
        0x98,
        0x9a,
        0xa1
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->f:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->f:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->d:Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->c:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v2, Lkotlin/Result$Failure;

    if-nez v4, :cond_5

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->f:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    iget-object v10, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->d:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->e:Ljava/lang/String;

    iget-object v13, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    iget-object v14, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    iget-object v15, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->h:Ljava/lang/String;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->i:Ljava/lang/String;

    iget-object v6, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->j:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->k:Ljava/lang/Double;

    move-object/from16 v16, v3

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->l:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->m:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    invoke-static {v9, v10, v11, v12, v13}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v8

    new-instance v8, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    const/16 v23, 0x0

    move-object/from16 v20, v3

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    invoke-direct/range {v8 .. v23}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->b:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->c:I

    invoke-virtual {v4, v8, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140967

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v9, v4, v6, v5, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl$onViewStoneClicked$1;->c:I

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    sget v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->q:I

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;->Bc(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
