.class public final Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/CareServicesRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/CareServicesRepository;",
        "Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;",
        "careServicesApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
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
.field public final a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method

.method public static e(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->e:Ljava/lang/String;

    const-string v0, "care-services"

    invoke-static {p0, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    instance-of v1, p3, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->f:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;

    invoke-direct {v1, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p3, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p2, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->c:Ljava/lang/String;

    iget-object p1, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p2, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->c:Ljava/lang/String;

    iput v4, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->f:I

    iget-object p3, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p3, v7}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    invoke-static {p1}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;->CARESERVICES:Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->p(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->a(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v6

    iput-object v8, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v8, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->c:Ljava/lang/String;

    iput v3, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceById$1;->f:I

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;->getCareServiceById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p3, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v8}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    throw p1

    :cond_8
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_9

    :try_start_2
    check-cast p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceDetailMapperKt;->a(Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_9
    :goto_9
    return-object p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    instance-of v1, p2, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->e:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p2, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-object p1, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v4, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p2, v7}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    invoke-static {p1}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;->CARESERVICES:Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->p(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->a(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v6

    iput-object v8, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v3, v7, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$getCareServiceList$1;->e:I

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;->getCareServiceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p2, Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v8}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    throw p1

    :cond_8
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_a

    :try_start_2
    check-cast p0, Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;->d:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceListMapperKt;->a(Lcom/vuitton/android/data/dto/careservices/CareServicesDto;)Lcom/vuitton/foundation/model/domain/model/careservices/CareService;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :cond_9
    :goto_a
    move-object p0, p1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_a
    :goto_b
    return-object p0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    instance-of v1, p4, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->g:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;

    invoke-direct {v1, p0, p4}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p4, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object p3, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->d:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iget-object p2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->c:Ljava/lang/String;

    iget-object p1, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p4, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->c:Ljava/lang/String;

    iput-object p3, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->d:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iput v4, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->g:I

    iget-object p4, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p4, v8}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    invoke-static {p1}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;->CARESERVICES:Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->p(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->a(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceUpdateMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;)Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;

    move-result-object v7

    iput-object v9, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v9, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->c:Ljava/lang/String;

    iput-object v9, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->d:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iput v3, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$updateCareService$1;->g:I

    move-object v3, p0

    invoke-interface/range {v2 .. v8}, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;->updateCareService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p4, Lretrofit2/Response;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v9}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    throw p1

    :cond_8
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_a

    :try_start_2
    check-cast p0, Lretrofit2/Response;

    iget-object p0, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget p0, p0, Lokhttp3/Response;->e:I

    const/16 p1, 0xcc

    if-ne p0, p1, :cond_9

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_9

    :cond_9
    const-string p0, "Server should send a 204 after updating the care service on success"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_a
    :goto_9
    return-object p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->c:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    instance-of v1, p3, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->f:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;

    invoke-direct {v1, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p3, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object p2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object p1, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p2, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput v4, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->f:I

    iget-object p3, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p3, v8}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->a:Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;

    move p0, v3

    invoke-static {p1}, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Ljava/lang/String;

    move-result-object v3

    sget-object p3, Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;->CARESERVICES:Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;

    invoke-interface {v0, p3}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->p(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p3}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->a(Lcom/vuitton/foundation/model/domain/model/environment/MulesoftFeature;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p1}, Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;)Lcom/vuitton/android/data/dto/careservices/CareServiceDto;

    move-result-object v7

    iput-object v9, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v9, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->c:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput p0, v8, Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$createCareService$1;->f:I

    invoke-interface/range {v2 .. v8}, Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;->createCareService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/CareServiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    :goto_4
    check-cast p3, Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v9}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    throw p1

    :cond_8
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_d

    :try_start_2
    check-cast p0, Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;

    iget-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;->a:Ljava/lang/String;

    const-string p2, "201"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;->d:Ljava/lang/String;

    if-eqz p0, :cond_9

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v9, p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    :cond_9
    if-eqz v9, :cond_b

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_a

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    :goto_9
    move-object p0, p1

    goto :goto_a

    :cond_a
    const-string p0, "Server should not send an empty ID"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p0, "Server should not send an nullable ID"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string p0, "Server should not send an answer different from 201 for a success"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_d
    :goto_a
    return-object p0
.end method
