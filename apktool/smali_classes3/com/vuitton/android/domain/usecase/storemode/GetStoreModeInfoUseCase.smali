.class public final Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/StoreModeRepository;",
        "storeModeRepository",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/StoreModeRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/StoreModeRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p1, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p2, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    if-eq p1, v5, :cond_6

    if-ne p1, v4, :cond_5

    move-object p1, p2

    move-object p2, v6

    goto :goto_3

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v6

    :cond_6
    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;->b:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_1
    check-cast p3, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    invoke-interface {p3, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p3, p2, Lkotlin/Result$Failure;

    if-eqz p3, :cond_9

    move-object p2, v6

    :cond_9
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    :goto_3
    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object p0, p2

    :goto_5
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_c

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;

    if-eqz p0, :cond_b

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->s:Ljava/lang/String;

    :cond_b
    move-object v1, v6

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->d:Ljava/util/List;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->e:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_c
    return-object p1
.end method
