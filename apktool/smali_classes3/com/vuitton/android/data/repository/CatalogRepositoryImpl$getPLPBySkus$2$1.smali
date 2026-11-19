.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;
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
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
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
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPLPBySkus$2$1"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->d:Ljava/util/List;

    iget-boolean v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->e:Z

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->d:Ljava/util/List;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_1
    move-object v4, p0

    goto :goto_3

    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-boolean v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;->e:Z

    invoke-static {v2, v3}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    const-string v0, "skus-products"

    invoke-direct {p0, v0, v1}, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :goto_3
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;IILjava/lang/Integer;)V

    return-object v0
.end method
