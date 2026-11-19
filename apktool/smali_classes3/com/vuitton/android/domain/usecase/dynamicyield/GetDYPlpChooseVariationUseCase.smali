.class public final Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;",
        "dynamicYieldRepository",
        "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;",
        "getDynamicYieldCampaignUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;->d:I

    const/4 v3, 0x1

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

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    invoke-virtual {p2}, Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;

    invoke-direct {v2, p1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;-><init>(Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase$run$1;->d:I

    invoke-interface {p0, p2, v2, v0}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->f(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No DY campaign available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
