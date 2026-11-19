.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0x13a,
        0x142,
        0x146
    }
    m = "getProduct-FV2jlBI"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/vuitton/android/data/dto/pdp/ProductDto;

.field public d:Ljava/util/List;

.field public e:Z

.field public f:Z

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->i:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->i:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->b(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
