.class final Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;",
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
    c = "com.vuitton.android.data.repository.AvatarRepositoryImpl$getSelectedAvatar$2"
    f = "AvatarRepositoryImpl.kt"
    l = {
        0x43,
        0x43,
        0x46,
        0x56
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->i:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->i:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->j:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->d:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;

    iget-object v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iget v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iget v5, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->d:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iget-object v8, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iget v5, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iget v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iget-object v8, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iget v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iget v8, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iget-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v6

    move-object/from16 v6, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->i:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iget-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->j:Ljava/lang/String;

    :try_start_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object v10, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iput-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iput v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->h:I

    invoke-virtual {v10}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->a()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v6

    if-ne v6, v1, :cond_5

    goto/16 :goto_6

    :cond_5
    move v8, v2

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    :goto_0
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v11, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iput-object v10, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iput v8, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iput v5, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->h:I

    invoke-interface {v6, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v6, v10

    move-object v10, v5

    move v5, v8

    move-object v8, v6

    move v6, v9

    move-object v9, v11

    :goto_1
    invoke-static {v10}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iput-object v9, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->d:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iput v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iput v5, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iput v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->h:I

    invoke-virtual {v9, v0}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object/from16 v16, v10

    move-object v10, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    :goto_2
    invoke-static {v10}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    sget-object v10, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    check-cast v10, Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;->a:Ljava/lang/String;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_a
    move-object v11, v7

    :goto_4
    check-cast v11, Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;

    if-nez v11, :cond_b

    iget-object v0, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    goto :goto_8

    :cond_b
    iget-object v10, v6, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarSection;->b:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;->a:Ljava/lang/String;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/avatar/SavedUserAvatar;->b:Ljava/lang/String;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_5

    :cond_e
    move-object v13, v7

    :goto_5
    move-object v12, v13

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    if-eqz v12, :cond_c

    move-object v0, v12

    goto :goto_8

    :cond_f
    iput-object v7, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->b:Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->c:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->d:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iput v5, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->f:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->g:I

    iput v3, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;->h:I

    invoke-virtual {v9, v8, v0}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_10

    :goto_6
    return-object v1

    :cond_10
    move-object v1, v6

    :goto_7
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    :goto_8
    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_a
    check-cast v1, Lkotlin/Result;

    new-instance v0, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_12
    throw v0
.end method
