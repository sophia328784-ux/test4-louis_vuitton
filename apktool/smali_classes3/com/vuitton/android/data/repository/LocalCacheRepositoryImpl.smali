.class public final Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/LocalCacheRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0018BY\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/LocalCacheRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;",
        "ordersLocalDataSource",
        "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;",
        "wishlistLocalDataSource",
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
        "profileLocalDataSource",
        "Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;",
        "userConsentsLocalDataSource",
        "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;",
        "connectedObjectLocalDataSource",
        "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;",
        "repairLocalDataSource",
        "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;",
        "userPreferencesRepository",
        "Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;",
        "avatarLocalDataSource",
        "Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;",
        "hotContentLocalDataSource",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V",
        "Companion",
        "data"
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

.field public final d:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

.field public final e:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

.field public final f:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

.field public final g:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

.field public final h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

.field public final i:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

.field public final j:Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->e:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    iput-object p9, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    iput-object p10, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->j:Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;-><init>(Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iput-object v4, p1, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iput-object v4, p1, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iput-object v4, p1, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-virtual {p1}, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;->a()Ljava/lang/Object;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->h:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->f()V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    iput-object v4, p1, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl$clearAllCache$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->e:Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "USER_CONSENT"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;

    iput-object v4, p1, Lcom/vuitton/android/data/datasource/avatar/AvatarLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/avatar/AvatarResponse;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/LocalCacheRepositoryImpl;->j:Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;

    iput-object v4, p0, Lcom/vuitton/android/data/datasource/hotcontent/HotContentLocalDataSource;->a:Ljava/util/List;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    throw p0
.end method
