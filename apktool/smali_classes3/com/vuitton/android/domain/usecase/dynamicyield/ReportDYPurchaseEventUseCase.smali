.class public final Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;",
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

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    return-void
.end method


# virtual methods
.method public final a(FLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;

    iget v2, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    iget v8, v6, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    sget-object v9, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    move-object v9, v5

    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v10, v6, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    int-to-double v12, v9

    div-double/2addr v10, v12

    double-to-float v6, v10

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    new-instance v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    invoke-direct {v9, v7, v8, v6, v5}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;-><init>(Ljava/lang/String;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-direct {v0, p1, v6, v7, v3}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;-><init>(FLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput v4, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->e(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_6

    return-object v2

    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
