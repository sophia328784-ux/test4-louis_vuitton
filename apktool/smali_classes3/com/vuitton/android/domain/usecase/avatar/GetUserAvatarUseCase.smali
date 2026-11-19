.class public final Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;",
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

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->a:Lcom/vuitton/android/domain/repository/AvatarRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->a:Lcom/vuitton/android/domain/repository/AvatarRepository;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget p0, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->d:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->c:I

    iget-object v5, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v8, v2

    move v2, p0

    move-object p0, v5

    move v5, v8

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/AvatarRepository;->a()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->d:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    move v5, v2

    :goto_3
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;

    return-object p0

    :cond_9
    iput-object p0, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase$run$1;->g:I

    invoke-interface {v3, p1, v0}, Lcom/vuitton/android/domain/repository/AvatarRepository;->c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    :try_start_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;->b:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p0

    goto :goto_6

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    return-object p1

    :cond_c
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method
