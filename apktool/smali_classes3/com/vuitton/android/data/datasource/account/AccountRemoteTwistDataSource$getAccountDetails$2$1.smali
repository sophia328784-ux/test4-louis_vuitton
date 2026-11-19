.class final Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;
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
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
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
    c = "com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource$getAccountDetails$2$1"
    f = "AccountRemoteTwistDataSource.kt"
    l = {
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/data/dto/profile/ProfileDto;

.field public d:Ljava/lang/String;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->g:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->g:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->c:Lcom/vuitton/android/data/dto/profile/ProfileDto;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1;

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->g:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-direct {p1, v2, v5}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v0, v5, p1, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iget-object p1, v2, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->c:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->f:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->e:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/data/api/bff/user/ProfileApi;->getProfile(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;

    iget-object v2, p1, Lcom/vuitton/android/data/dto/profile/ProfileDto;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    iput-object v5, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->f:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->c:Lcom/vuitton/android/data/dto/profile/ProfileDto;

    iput-object v2, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->d:Ljava/lang/String;

    iput v3, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$getAccountDetails$2$1;->e:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_1
    return-object v1

    :cond_5
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    :goto_2
    check-cast p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/data/dto/profile/ProfileMapperKt;->c(Lcom/vuitton/android/data/dto/profile/ProfileDto;Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object p0

    return-object p0
.end method
