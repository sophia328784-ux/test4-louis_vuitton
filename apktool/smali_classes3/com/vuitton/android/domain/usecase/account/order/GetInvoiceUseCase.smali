.class public final Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/OrderRepository;",
        "repository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/OrderRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->d:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->c:Ljava/lang/String;

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p3

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->d:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->g:I

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {p0, p3, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v2

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->d:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase$run$1;->g:I

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/vuitton/android/domain/repository/OrderRepository;->i(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0
.end method
