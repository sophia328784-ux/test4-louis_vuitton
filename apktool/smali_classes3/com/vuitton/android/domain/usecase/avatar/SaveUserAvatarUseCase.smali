.class public final Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AvatarRepository;",
        "avatarRepository",
        "Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;",
        "getUserIdentifierUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AvatarRepository;Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/repository/AvatarRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AvatarRepository;Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;->a:Lcom/vuitton/android/domain/repository/AvatarRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget p1, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->e:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->d:I

    iget v5, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->c:I

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    move v2, p1

    move-object p1, v6

    move v6, v5

    move v5, v7

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->d:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->e:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->h:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v2

    move v6, v5

    :goto_1
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;->a:Lcom/vuitton/android/domain/repository/AvatarRepository;

    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->c:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->d:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->e:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase$run$1;->h:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/domain/repository/AvatarRepository;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "User must be logged in to save avatar"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method
