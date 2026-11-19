.class final Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        "it",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;"
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
    c = "com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource$getAccountDetails$2$1"
    f = "AccountRemoteFacadeDataSource.kt"
    l = {
        0x2b,
        0x2c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->c:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->c:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->b:I

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->c:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput v6, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    check-cast v3, Ljava/lang/String;

    iget-object p1, v4, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->c:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    if-nez v3, :cond_5

    move-object v3, v2

    :cond_5
    iput v5, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;->b:I

    invoke-interface {p1, v3, p0}, Lcom/vuitton/android/data/api/bff/user/ProfileApi;->getProfile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;

    iget-object p0, p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;->h:Ljava/lang/String;

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, p0

    :goto_4
    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;->c:Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    invoke-static {p1, p0, v2}, Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;->c(Lcom/vuitton/android/data/dto/profile/ProfileDto;Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object p0

    return-object p0
.end method
