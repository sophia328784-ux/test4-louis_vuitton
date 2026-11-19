.class public final Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/CertificateRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0010B9\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/CertificateRepository;",
        "Lcom/vuitton/android/data/api/bff/user/CertificateApi;",
        "certificateApi",
        "Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;",
        "certificateDetailUrlApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;",
        "twistTokenDataSource",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "cookieManagerProxy",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/CertificateApi;Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lkotlinx/serialization/json/Json;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

.field public final b:Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

.field public final c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final d:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

.field public final e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

.field public final f:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/CertificateApi;Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->f:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;-><init>(Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;

    iput v5, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_1
    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateBodyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;)Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;

    move-result-object p1

    iput-object v3, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;

    iput v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$transferCertificate$1;->e:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/data/api/bff/user/CertificateApi;->transferCertificate(Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_6
    return-object p2
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;-><init>(Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->c:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    move v2, p1

    move-object p1, v6

    move v6, v4

    move v4, v8

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->h:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v5

    :goto_2
    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    iget-object v7, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->c:I

    iput v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->e:I

    iput v3, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateDetailUrl$1;->h:I

    invoke-interface {v7, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;->getCertificateDetailUrl(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    check-cast p2, Lcom/vuitton/android/data/dto/common/PageUrlDto;

    iget-object p1, p2, Lcom/vuitton/android/data/dto/common/PageUrlDto;->a:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p2, p2, Lcom/vuitton/android/data/dto/common/PageUrlDto;->b:Ljava/util/List;

    if-eqz p2, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/common/CookieDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/CookieMapperKt;->a(Lcom/vuitton/android/data/dto/common/CookieDto;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_9

    move-object v1, v5

    :cond_9
    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/CookieMapperKt;->b(Lcom/vuitton/android/data/dto/common/CookieDto;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_a

    move-object v0, v5

    :cond_a
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {v2, v1, v0}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Certificate detail pageUrl should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_e

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_e
    throw p1
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;-><init>(Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_1
    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    iput-object v3, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$unlockCertificate$1;->e:I

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/api/bff/user/CertificateApi;->unlockCertificate(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_6
    return-object p2
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;-><init>(Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$getCertificateList$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/CertificateApi;->getCertificateList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/certificate/mapper/CertificateMapperKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_b

    :cond_5
    :try_start_2
    instance-of p1, v0, Lretrofit2/HttpException;

    if-eqz p1, :cond_e

    move-object p1, v0

    check-cast p1, Lretrofit2/HttpException;

    iget p1, p1, Lretrofit2/HttpException;->b:I

    move-object v1, v0

    check-cast v1, Lretrofit2/HttpException;

    iget-object v1, v1, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v4

    :goto_5
    iget-object p0, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->f:Lkotlinx/serialization/json/Json;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_8

    :try_start_3
    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v2, v1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_8
    :goto_6
    move-object p0, v4

    :goto_7
    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :goto_8
    :try_start_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_a

    :cond_9
    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    :goto_a
    check-cast v1, Lkotlin/Result;

    iget-object p0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, p0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_a

    move-object p0, v4

    :cond_a
    check-cast p0, Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto;->b:Lcom/vuitton/android/data/dto/certificate/CertificateErrorDataDto;

    if-eqz p0, :cond_b

    iget-object v4, p0, Lcom/vuitton/android/data/dto/certificate/CertificateErrorDataDto;->a:Ljava/lang/String;

    :cond_b
    const-string p0, "PAPI-C007"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x1a6

    if-ne p1, p0, :cond_c

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object p1, p0

    goto :goto_b

    :cond_c
    throw v0

    :cond_d
    throw p0

    :cond_e
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_b
    return-object p1

    :cond_f
    throw p1
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;-><init>(Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;

    iput v5, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_1
    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/user/CertificateApi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/data/dto/certificate/AddCertificateBodyDto;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;->c:Ljava/lang/String;

    invoke-direct {v2, v5, v6, p1}, Lcom/vuitton/android/data/dto/certificate/AddCertificateBodyDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->b:Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;

    iput v4, v0, Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$addCertificate$1;->e:I

    invoke-interface {p0, p2, v2, v0}, Lcom/vuitton/android/data/api/bff/user/CertificateApi;->addCertificate(Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/AddCertificateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_6
    return-object p2
.end method
