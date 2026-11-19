.class public final Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/InAppBannerRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/InAppBannerRepository;",
        "Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;",
        "inAppBannerMemCacheDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/InAppBannerRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    invoke-virtual {p0}, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a()V

    return-void
.end method
