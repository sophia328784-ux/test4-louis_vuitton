.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$registerToProductBIS$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x287,
        0x28a,
        0x293
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public d:Ljava/lang/Throwable;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public final synthetic h:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->g:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->g:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->e:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->h:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v8, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->d:Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->g:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->e:I

    invoke-virtual {v4, v11, v0}, Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v4, Lkotlin/Result$Failure;

    if-nez v7, :cond_5

    move-object v7, v4

    check-cast v7, Lkotlin/Unit;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v11, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140eb4

    invoke-direct {v11, v7, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/16 v15, 0x3c

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v7

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->e:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v10, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$SubscribeBackInStockError;

    invoke-direct {v10, v7}, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$SubscribeBackInStockError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v10, 0x7f140eb2

    invoke-direct {v12, v10, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x3c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v8

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->d:Ljava/lang/Throwable;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;->e:I

    invoke-interface {v2, v8, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    :goto_2
    return-object v3

    :cond_6
    move-object v0, v1

    move-object v1, v7

    :goto_3
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/error/batch/NoBatchInstallationIdFoundException;

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1, v9}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Impossible to subscribe at back in stock, check installation id. "

    invoke-static {v3, v1, v0, v2, v9}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    invoke-interface {v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
