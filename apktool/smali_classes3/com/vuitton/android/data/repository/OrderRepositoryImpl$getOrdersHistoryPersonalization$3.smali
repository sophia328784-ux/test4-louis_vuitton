.class final Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.OrderRepositoryImpl$getOrdersHistoryPersonalization$3"
    f = "OrderRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;->b:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;->b:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;->b:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    if-eqz p0, :cond_0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
