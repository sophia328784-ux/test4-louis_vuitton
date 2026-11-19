.class public final Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/repository/CareServicesRepository;",
        "careServicesRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/CareServicesRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/CareServicesRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/CareServicesRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->b:Lcom/vuitton/android/domain/repository/CareServicesRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p3

    iput v3, v0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->b:Lcom/vuitton/android/domain/repository/CareServicesRepository;

    invoke-interface {p0, p3, p1, p2, v0}, Lcom/vuitton/android/domain/repository/CareServicesRepository;->c(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
