.class final Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.data.repository.LastViewedProductRepositoryImpl$setProductList$2"
    f = "LastViewedProductRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->c:Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->c:Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;-><init>(Ljava/util/List;Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl$setProductList$2;->c:Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/data/repository/LastViewedProductData;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->c:Ljava/time/LocalDateTime;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->d:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/data/repository/LastViewedProductData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/LastViewedProductListData;

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/LastViewedProductListData;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;->a:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;->c:Lkotlinx/serialization/json/Json;

    sget-object v3, Lcom/vuitton/android/data/repository/LastViewedProductListData;->Companion:Lcom/vuitton/android/data/repository/LastViewedProductListData$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/repository/LastViewedProductListData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v2, v3, v0}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LAST_VIEWED_PRODUCT"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_3
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/data/repository/LastViewedProductRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    throw p1
.end method
