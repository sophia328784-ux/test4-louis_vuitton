.class public final Lcom/vuitton/android/data/repository/AccountRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AccountRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001Bq\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AccountRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AccountRepository;",
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;",
        "accountRemoteTwistDataSource",
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;",
        "accountRemoteFacadeDataSource",
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;",
        "accountRemoteSalesforceDataSource",
        "Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;",
        "accountRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;",
        "addressRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;",
        "userConsentsLocalDataSource",
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
        "profileLocalDataSource",
        "Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;",
        "userWorldwideIdApi",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "webkitCookieManagerProxy",
        "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;",
        "connectedObjectLocalDataSource",
        "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;",
        "repairLocalDataSource",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lkotlinx/serialization/json/Json;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;

.field public final d:Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;

.field public final e:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

.field public final f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

.field public final g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

.field public final h:Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

.field public final i:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final j:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

.field public final k:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

.field public final l:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final m:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->e:Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->h:Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

    iput-object p9, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->i:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p10, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->j:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iput-object p11, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->k:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iput-object p12, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->l:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p13, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->m:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public static final p(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;->d:I

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

    new-instance p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;

    invoke-direct {p2, p1, p0, v3}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$1;->d:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final q(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndSaveConsents$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    :try_start_0
    check-cast p1, Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/profile/UserConsentsMapperKt;->b(Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;)Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_4
    :goto_2
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/ProfilePwdUpdate;->b:Ljava/lang/String;

    invoke-direct {v2, v5, p1}, Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updatePassword$1;->d:I

    invoke-virtual {p2, v2, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->h(Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lretrofit2/Response;

    iget-object p2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p2, p2, Lokhttp3/Response;->r:Z

    if-nez p2, :cond_6

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->m:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;->Companion:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto$Companion;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDetailsDto;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDetailsDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;

    if-eqz p0, :cond_4

    iget-object v4, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;->b:Ljava/lang/String;

    :cond_4
    invoke-static {v4}, Lcom/vuitton/android/data/dto/profile/PasswordErrorDtoMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/vuitton/android/data/dto/profile/PasswordErrorDtoMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    move-result-object p0

    :goto_2
    throw p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->l:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->b:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateContactId$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->e(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final c()Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1;
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->a:Landroidx/datastore/core/DataStore;

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$listenProfile$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V

    return-object v1
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountId$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$deleteAccount$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountStatus$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v4, v0, v4}, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;-><init>(Lcom/vuitton/foundation/model/domain/model/account/AccountStatusValue;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_4

    move-object p0, p1

    :cond_4
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/AccountStatus;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateChinaConsentBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateChinaConsentBody;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateChinaConsentBody;->b:Ljava/lang/String;

    invoke-direct {p2, v2, p1}, Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$addCNConsent$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->a(Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final i(Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;

    iget v4, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;->d:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;->b:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v0, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->b:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->c:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->e:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->f:Ljava/lang/String;

    iget-object v15, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->i:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->j:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;->k:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDtoMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_3
    move-object/from16 v18, v6

    new-instance v8, Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v18}, Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput v7, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$updateMainInformation$1;->d:I

    iget-object v0, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {v0, v8, v3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->g(Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_4

    return-object v4

    :cond_4
    return-object v0
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getContactId$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final k(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;

    iget v4, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->h:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->f:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->h:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->d:Ljava/lang/Object;

    iget-object v1, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-boolean v1, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->e:Z

    iget-object v5, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iget-object v7, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move v6, v1

    move-object v1, v7

    goto/16 :goto_4

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a()Lkotlin/Result;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v5, v2, Lkotlin/Result$Failure;

    if-eqz v5, :cond_4

    move-object v2, v9

    :cond_4
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    goto :goto_1

    :cond_5
    move-object v2, v9

    :goto_1
    invoke-virtual {v8, v1}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    if-eqz v10, :cond_6

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->a:Ljava/lang/Boolean;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    iget-object v14, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->c:Ljava/lang/Boolean;

    iget-object v15, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->d:Ljava/lang/Boolean;

    iget-object v6, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->e:Ljava/lang/Boolean;

    iget-object v9, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->f:Ljava/lang/Boolean;

    iget-object v7, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->g:Ljava/lang/Boolean;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->h:Ljava/lang/Boolean;

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    if-eqz v6, :cond_7

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;

    iget-object v13, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->a:Ljava/lang/Boolean;

    iget-object v14, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->b:Ljava/lang/Boolean;

    iget-object v15, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->c:Ljava/lang/Boolean;

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->d:Ljava/lang/Boolean;

    iget-object v9, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    iget-object v10, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->f:Ljava/lang/Boolean;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->g:Ljava/lang/Boolean;

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    invoke-direct {v5, v11, v12}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsentsPatch;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsentsPatch;)V

    iput-object v1, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iput-object v2, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    move/from16 v6, p2

    iput-boolean v6, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->e:Z

    const/4 v7, 0x1

    iput v7, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->h:I

    iget-object v7, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {v7, v5, v3}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->f(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsentsPatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v20, v5

    move-object v5, v2

    move-object/from16 v2, v20

    :goto_4
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v2, Lkotlin/Result$Failure;

    if-nez v7, :cond_b

    move-object v7, v2

    check-cast v7, Lkotlin/Unit;

    if-eqz v6, :cond_b

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    :goto_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :goto_6
    iput-object v7, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iput-object v5, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    iput-object v2, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->d:Ljava/lang/Object;

    iput-boolean v6, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->e:Z

    const/4 v6, 0x2

    iput v6, v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$patchUserConsents$1;->h:I

    iget-object v0, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-virtual {v0, v1, v3}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->e(Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_a

    :goto_7
    return-object v4

    :cond_a
    move-object v0, v2

    move-object v1, v5

    :goto_8
    move-object v2, v0

    move-object v5, v1

    :cond_b
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v8, v5}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V

    :cond_c
    return-object v2
.end method

.method public final l()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserConsents$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserConsents$2;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserConsents$3;

    const-string v8, "getUserConsentsFromSharedPref-xLWZpok()Lkotlin/Result;"

    const/4 v9, 0x4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    const-class v6, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    const-string v7, "getUserConsentsFromSharedPref"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final m(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->b:Z

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->l:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->f()V

    iput-boolean p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->b:Z

    iput v4, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$resetLoginDetails$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    invoke-virtual {p2, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->j:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iput-object v3, p2, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->k:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iget-object p2, p2, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->i:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {p1}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a()V

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "USER_CONSENT"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final n(ZZ)Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountDetails$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountDetails$2;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;ZLkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountDetails$3;

    invoke-direct {p1, p2, p0, v2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAccountDetails$3;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {v0, v1, p1}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final o(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;->a:Ljava/lang/String;

    :try_start_1
    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->h:Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getUserWorldwideId$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;->getUserWorldwideId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/account/user/WorldwideIdDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/android/data/dto/account/user/WorldwideIdDto;->a:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/WorldwideId;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/account/WorldwideId;-><init>(Ljava/lang/String;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_8

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_5
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p1

    :cond_9
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method
