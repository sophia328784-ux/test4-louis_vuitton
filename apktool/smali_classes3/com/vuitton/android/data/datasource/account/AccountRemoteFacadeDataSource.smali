.class public final Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;",
        "",
        "Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;",
        "facadeApiEndpointFactory",
        "Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;",
        "accountFacadeApi",
        "Lcom/vuitton/android/data/api/bff/user/ProfileApi;",
        "profileApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/data/net/atg/ATGSessionManager;",
        "atgSessionManager",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/net/atg/ATGSessionManager;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;

.field public final b:Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;

.field public final c:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

.field public final d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final e:Lcom/vuitton/android/data/net/atg/ATGSessionManager;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/net/atg/ATGSessionManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->a:Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->b:Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->c:Lcom/vuitton/android/data/api/bff/user/ProfileApi;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->d:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p5, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->e:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->e:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    new-instance v2, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$2$1;

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$2$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$checkUserConnection$1;->d:I

    invoke-interface {p3, v2, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManager;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p3, Lkotlin/Result$Failure;

    invoke-direct {p3, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    check-cast p3, Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;

    iget-boolean p0, p3, Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_3

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->e:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    new-instance v2, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$2$1;-><init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource$getAccountDetails$1;->d:I

    invoke-interface {p1, v2, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManager;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method
