.class public final Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "catalogRepository",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;",
        "getSotTokenForTwistUserOrNullUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p3, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget p2, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->e:I

    iget p1, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->d:I

    iget-object v1, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->c:Ljava/lang/String;

    iget-object v3, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    move v7, p2

    move p2, p1

    move-object p1, v1

    move-object v1, v3

    move v3, v7

    goto :goto_2

    :cond_3
    move p3, p2

    move p2, p1

    move-object p1, v1

    move-object v1, v3

    move v3, p3

    move-object p3, v4

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p3, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p1, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->c:Ljava/lang/String;

    iput p2, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->d:I

    iput p2, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->e:I

    iput v3, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    invoke-virtual {v1, v6}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v1

    move-object v1, p3

    move-object p3, v3

    move v3, p2

    :goto_2
    check-cast p3, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v5, p0, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iput-object v4, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object v4, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->c:Ljava/lang/String;

    iput p2, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->d:I

    iput v2, v6, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    move-object v2, p1

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/vuitton/android/domain/repository/CatalogRepository;->f(Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_3
    return-object v0

    :cond_6
    return-object p0
.end method
