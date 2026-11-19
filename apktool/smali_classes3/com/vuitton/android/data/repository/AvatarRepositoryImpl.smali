.class public final Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AvatarRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AvatarRepository;",
        "Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;",
        "avatarRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;",
        "avatarLocalDataSource",
        "Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;",
        "savedUserAvatarLocalDataSource",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatchers",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/avatar/AvatarRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/avatar/SavedUserAvatarLocalDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getAvatars$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getAvatars$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getAvatars$3;

    const-string v8, "getAvatars-xLWZpok()Lkotlin/Result;"

    const/4 v9, 0x4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    const-class v6, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    const-string v7, "getAvatars"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$2;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$saveAvatarForUser$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSelectedAvatar$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$getSavedAvatars$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$2;-><init>(Lcom/vuitton/android/data/repository/AvatarRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AvatarRepositoryImpl$removeAvatarForUser$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method
