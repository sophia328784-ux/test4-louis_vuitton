.class public final Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;",
        "",
        "<init>",
        "()V",
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
.field public final a:Ljava/lang/Object;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->c:Ljava/time/Instant;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->d:Ljava/time/Instant;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/time/Instant;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/time/Instant;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    move v5, v4

    :cond_0
    xor-int/lit8 v1, v5, 0x1

    if-ne v1, v4, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
