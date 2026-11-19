.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;
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
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getPLPLegacy$2$1"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0xad
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

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->d:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->e:I

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;

    iget-object v5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->g:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->h:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->d:Ljava/lang/String;

    iget v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->e:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->f:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->c:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, p0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move p1, v3

    iget-object v3, v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iput p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->b:I

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->d:Ljava/lang/String;

    iget v5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->e:I

    iget-object v6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->g:Ljava/lang/String;

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getProductListForSubCategoryLegacy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;

    new-instance p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1$1;

    invoke-direct {p0, v2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;)V

    iget-boolean v0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->h:Z

    invoke-static {p1, p0, v0}, Lcom/vuitton/android/data/dto/plp/mapper/ProductListLegacyToV2MapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;Lkotlin/jvm/functions/Function1;Z)Lcom/vuitton/foundation/model/domain/model/plp/ProductList;

    move-result-object p0

    iget p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;->e:I

    invoke-static {p0, p1}, Lcom/vuitton/foundation/model/domain/model/plp/mapper/PlpMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/plp/ProductList;I)Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    move-result-object p0

    return-object p0
.end method
