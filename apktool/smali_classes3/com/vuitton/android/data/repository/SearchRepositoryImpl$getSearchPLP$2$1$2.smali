.class final Lcom/vuitton/android/data/repository/SearchRepositoryImpl$getSearchPLP$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/repository/SearchRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/SearchRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SearchRepositoryImpl$getSearchPLP$2$1$2;->b:Lcom/vuitton/android/data/repository/SearchRepositoryImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SearchRepositoryImpl$getSearchPLP$2$1$2;->b:Lcom/vuitton/android/data/repository/SearchRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SearchRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lkotlin/Result$Failure;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;

    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v0
.end method
