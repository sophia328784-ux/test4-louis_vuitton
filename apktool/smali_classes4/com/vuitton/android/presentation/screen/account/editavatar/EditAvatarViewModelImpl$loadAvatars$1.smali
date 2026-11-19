.class final Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;
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
    c = "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl$loadAvatars$1"
    f = "EditAvatarViewModelImpl.kt"
    l = {
        0x34,
        0x35,
        0x35,
        0x37,
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->h:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->h:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->h:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iget v6, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    check-cast v8, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v7

    move v7, v6

    move-object/from16 v6, p1

    goto/16 :goto_4

    :cond_2
    iget v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    check-cast v12, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Lkotlin/Result;

    iget-object v13, v13, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_3
    iget v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    check-cast v13, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v12

    move v12, v9

    move v9, v8

    move-object/from16 v8, p1

    goto :goto_1

    :cond_4
    iget v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iget v12, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    check-cast v13, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    check-cast v14, Lkotlin/Result;

    iget-object v14, v14, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    invoke-virtual {v4, v0}, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v13, v1

    move v4, v10

    move v9, v4

    move v12, v9

    :goto_0
    sget-object v15, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v15, v14, Lkotlin/Result$Failure;

    if-eqz v15, :cond_7

    move-object v14, v11

    :cond_7
    check-cast v14, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v15, v13, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    iget-object v8, v15, Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;->a:Lcom/vuitton/android/domain/repository/AvatarRepository;

    invoke-interface {v8}, Lcom/vuitton/android/domain/repository/AvatarRepository;->a()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v8

    if-ne v8, v3, :cond_8

    goto :goto_5

    :cond_8
    :goto_1
    check-cast v8, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iput v12, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    invoke-interface {v8, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_9

    goto :goto_5

    :cond_9
    move v8, v12

    move-object v12, v13

    move-object v13, v7

    move v7, v9

    move-object v9, v14

    :goto_2
    invoke-static {v13}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    if-eqz v9, :cond_a

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object v9, v11

    :goto_3
    invoke-static {v13, v9}, Lcom/vuitton/android/presentation/screen/account/editavatar/mappers/AvatarUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    move-result-object v9

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    invoke-virtual {v12, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_b

    goto :goto_5

    :cond_b
    move-object/from16 v16, v9

    move v9, v8

    move-object/from16 v8, v16

    :goto_4
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->b:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->c:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->d:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->f:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl$loadAvatars$1;->g:I

    invoke-interface {v6, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    :goto_5
    return-object v3

    :cond_c
    move-object v3, v0

    move-object v0, v8

    :goto_6
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-eqz v4, :cond_d

    move-object v3, v11

    :cond_d
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->r:Ljava/lang/String;

    goto :goto_7

    :cond_e
    move-object v3, v11

    :goto_7
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :goto_8
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    instance-of v0, v3, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_17

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_a
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_15

    move-object v3, v0

    check-cast v3, Lkotlin/Pair;

    iget-object v4, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;

    iget-object v3, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->a:Ljava/util/List;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-direct {v5, v6, v4, v3, v10}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Z)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->b:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->e:Z

    if-eqz v5, :cond_11

    goto :goto_c

    :cond_12
    move-object v4, v11

    :goto_c
    check-cast v4, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    if-eqz v4, :cond_13

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->a:Ljava/lang/String;

    :cond_13
    if-nez v11, :cond_14

    const-string v11, ""

    :cond_14
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;

    invoke-direct {v3, v11}, Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel$EditAvatarScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->d6(Lcom/vuitton/android/presentation/screen/account/editavatar/AvatarTrackingUiModel;)V

    :cond_15
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "EditAvatarViewModelImpl"

    const-string v4, "Failed to load avatars"

    invoke-interface {v1, v3, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Error;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Error;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_17
    throw v3
.end method
