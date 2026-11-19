.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;
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
        0x157
    }
    m = "getProductMediaList"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/Collection;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->h:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    sget p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->p:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->h:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->r(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
