.class public final Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;->a:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase;->a:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/account/GetUserIdentifierUseCase$run$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_9

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    if-eqz p1, :cond_6

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;

    if-eqz p1, :cond_7

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move-object p0, v3

    goto :goto_4

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_9
    :goto_4
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_a

    return-object v3

    :cond_a
    return-object p0
.end method
