.class final Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;
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
    c = "com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$getExclusiveSales$1"
    f = "ExclusiveSalesViewModelImpl.kt"
    l = {
        0x46,
        0x48,
        0x51
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

.field public d:Ljava/lang/Throwable;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->f:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->f:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;-><init>(Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->f:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v8, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->d:Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->c:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->e:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;->a(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    :goto_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->e:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_1
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v4, Lkotlin/Result$Failure;

    if-nez v7, :cond_a

    move-object v7, v4

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_2
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesUserInfo;->a:Ljava/util/List;

    if-eqz v11, :cond_6

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesCategoryUiModel;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->a:Ljava/lang/String;

    iget-object v6, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->b:Ljava/lang/String;

    iget-object v5, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->c:Ljava/lang/String;

    iget-object v8, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->d:Ljava/lang/String;

    move-object/from16 v17, v5

    iget-object v5, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->e:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/exclusivesales/ExclusiveSalesCategoryLinks;->f:Ljava/lang/String;

    move-object/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto :goto_3

    :cond_6
    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    invoke-interface {v9, v10, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto :goto_2

    :cond_a
    :goto_4
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_d

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140967

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    const/16 v11, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->c:Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->d:Ljava/lang/Throwable;

    const/4 v7, 0x3

    iput v7, v0, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl$getExclusiveSales$1;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    :goto_5
    return-object v3

    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "ExclusiveSalesViewModelImpl"

    const-string v2, "Unable to get the exclusive sales"

    invoke-interface {v0, v1, v2, v5}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
