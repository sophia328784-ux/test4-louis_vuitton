.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;
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
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getExclusivePLP$2$1"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->d:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->e:I

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->f:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->g:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->d:Ljava/lang/String;

    iget v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->e:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->b:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->e:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->h:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput v5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v2, p0}, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;->getPlpExclusive(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;

    iget-object v0, v4, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->o:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;->g:Z

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/data/dto/plp/mapper/ProductListLegacyToV2MapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;Lkotlin/jvm/functions/Function1;Z)Lcom/vuitton/foundation/model/domain/model/plp/ProductList;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/plp/ProductList;I)Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    move-result-object p0

    return-object p0
.end method
