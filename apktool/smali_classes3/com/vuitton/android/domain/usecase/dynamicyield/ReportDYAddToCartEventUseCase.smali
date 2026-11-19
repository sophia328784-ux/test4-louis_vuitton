.class public final Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;",
        "dynamicYieldRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V",
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    return-void
.end method


# virtual methods
.method public final a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;

    iget v2, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;->d:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p4

    check-cast v0, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItemKt;->a(Lcom/vuitton/foundation/model/domain/model/cart/CartItem;)Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    move v6, p1

    move-object v7, p2

    move v9, p3

    move-object/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;-><init>(FLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iput v4, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-interface {p0, v5, v1}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->e(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
