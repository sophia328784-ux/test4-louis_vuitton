.class public final Lcom/perfectcorp/perfectlib/SkinCareProduct;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;,
        Lcom/perfectcorp/perfectlib/SkinCareProduct$Inventory;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;Ljava/util/List;ZLcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    move-result-object p1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productName:Ljava/lang/String;

    sget v1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->imageUrl:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->upc:Ljava/lang/String;

    :goto_0
    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_0
    iget-object p3, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productId:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->c:Ljava/lang/String;

    iget-object p3, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->detailUrl:Ljava/lang/String;

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->d:Ljava/lang/String;

    iget-object p3, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->productType:Ljava/lang/String;

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->e:Ljava/lang/String;

    iget-object p3, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->brandName:Ljava/lang/String;

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->customInfo:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    if-nez p2, :cond_1

    const-string p2, ""

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;->upc:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->i:Ljava/lang/String;

    return-void
.end method

.method public static getInventory(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "ids can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "getInventoryCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    const-string v0, "[getInventory] start"

    const/4 v1, 0x3

    const-string v2, "SkinCareProduct"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;

    const/16 v0, 0x32

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lct0;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lct0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lct0;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lct0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lyw0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lyw0;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lzw0;

    invoke-direct {v1, p0, v3}, Lzw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lax0;

    invoke-direct {v0, p1, v3}, Lax0;-><init>(Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;I)V

    new-instance v1, Lax0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lax0;-><init>(Lcom/perfectcorp/perfectlib/SkinCareProduct$GetInventoryCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final getActionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getBrandName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareProduct;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final getSkuType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareProduct;->i:Ljava/lang/String;

    return-object p0
.end method
