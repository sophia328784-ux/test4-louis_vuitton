.class public final Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;",
        "bestFormDispatchIdUseCase",
        "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;",
        "formRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;->b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p1, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->d:I

    iget-object p3, p0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    invoke-virtual {p3, p1, p2, v0}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_6

    :try_start_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;->b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase$run$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    return-object p1
.end method
