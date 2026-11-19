.class public final Lcoil3/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/NetworkFetcher$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u0014B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0006\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012BM\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcoil3/network/NetworkFetcher;",
        "Lcoil3/fetch/Fetcher;",
        "",
        "url",
        "Lcoil3/request/Options;",
        "options",
        "Lkotlin/Lazy;",
        "Lcoil3/network/NetworkClient;",
        "networkClient",
        "Lcoil3/disk/DiskCache;",
        "diskCache",
        "Lcoil3/network/CacheStrategy;",
        "cacheStrategy",
        "Lcoil3/network/ConnectivityChecker;",
        "connectivityChecker",
        "Lcoil3/network/ConcurrentRequestStrategy;",
        "concurrentRequestStrategy",
        "<init>",
        "(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V",
        "(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/network/ConnectivityChecker;)V",
        "Factory",
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcoil3/request/Options;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil3/network/ConnectivityChecker;)V
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    new-instance v6, Lkotlin/InitializedLazyImpl;

    invoke-direct {v6, p6}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    sget-object p6, Lcoil3/network/ConcurrentRequestStrategy;->a:Lcoil3/network/ConcurrentRequestStrategy;

    new-instance v7, Lkotlin/InitializedLazyImpl;

    invoke-direct {v7, p6}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcoil3/network/NetworkFetcher;-><init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcoil3/request/Options;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil3/network/NetworkClient;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil3/disk/DiskCache;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil3/network/CacheStrategy;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil3/network/ConnectivityChecker;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil3/network/ConcurrentRequestStrategy;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 25
    iput-object p3, p0, Lcoil3/network/NetworkFetcher;->c:Lkotlin/Lazy;

    .line 26
    iput-object p4, p0, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    .line 27
    iput-object p5, p0, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    .line 28
    iput-object p6, p0, Lcoil3/network/NetworkFetcher;->f:Lkotlin/Lazy;

    .line 29
    iput-object p7, p0, Lcoil3/network/NetworkFetcher;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final b(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    iget-object v6, v2, Lcoil3/network/NetworkFetcher;->c:Lkotlin/Lazy;

    iget-object v1, v2, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    iget-object v3, v2, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    instance-of v4, v0, Lcoil3/network/NetworkFetcher$doFetch$1;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    iget v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    const/high16 v7, -0x80000000

    and-int v8, v5, v7

    if-eqz v8, :cond_0

    sub-int/2addr v5, v7

    iput v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_0
    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    invoke-direct {v4, v2, v0}, Lcoil3/network/NetworkFetcher$doFetch$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->d:Ljava/lang/Object;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v10, :cond_2

    if-ne v4, v9, :cond_1

    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    :cond_3
    iget-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v5

    goto/16 :goto_f

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, v3, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/disk/DiskCache;

    if-eqz v0, :cond_6

    iget-object v12, v3, Lcoil3/request/Options;->e:Ljava/lang/String;

    if-nez v12, :cond_5

    move-object v12, v1

    :cond_5
    invoke-interface {v0, v12}, Lcoil3/disk/DiskCache;->b(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v11

    :goto_2
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :try_start_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v12, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v12, :cond_d

    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object v12

    iget-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v13, Lcoil3/disk/DiskCache$Snapshot;

    invoke-interface {v13}, Lcoil3/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokio/FileSystem;->n(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v12

    iget-object v12, v12, Lokio/FileMetadata;->d:Ljava/lang/Long;

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_8

    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Lcoil3/disk/DiskCache$Snapshot;

    invoke-virtual {v2, v3}, Lcoil3/network/NetworkFetcher;->h(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    move-result-object v2

    invoke-static {v1, v11}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    invoke-direct {v0, v2, v1, v3}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object v0

    :catch_2
    move-exception v0

    move-object v1, v4

    goto/16 :goto_f

    :cond_8
    :goto_3
    iget-object v12, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v12, Lcoil3/disk/DiskCache$Snapshot;

    invoke-virtual {v2, v12}, Lcoil3/network/NetworkFetcher;->i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;

    move-result-object v12

    iput-object v12, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v12, :cond_d

    iget-object v12, v2, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcoil3/network/CacheStrategy;

    iget-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v13, Lcoil3/network/NetworkResponse;

    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    iput-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    invoke-interface {v12, v13}, Lcoil3/network/CacheStrategy;->a(Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$ReadResult;

    move-result-object v5

    if-ne v5, v8, :cond_9

    goto/16 :goto_d

    :cond_9
    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    :goto_4
    check-cast v0, Lcoil3/network/CacheStrategy$ReadResult;

    iget-object v12, v0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    if-eqz v12, :cond_c

    iget v3, v12, Lcoil3/network/NetworkResponse;->a:I

    const/16 v5, 0xc8

    if-gt v5, v3, :cond_a

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_a

    goto :goto_5

    :cond_a
    const/16 v5, 0x130

    if-ne v3, v5, :cond_b

    :goto_5
    new-instance v3, Lcoil3/fetch/SourceFetchResult;

    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v5, Lcoil3/disk/DiskCache$Snapshot;

    invoke-virtual {v2, v5}, Lcoil3/network/NetworkFetcher;->h(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    move-result-object v2

    iget-object v0, v0, Lcoil3/network/CacheStrategy$ReadResult;->b:Lcoil3/network/NetworkResponse;

    iget-object v0, v0, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcoil3/decode/DataSource;->DISK:Lcoil3/decode/DataSource;

    invoke-direct {v3, v2, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    return-object v3

    :cond_b
    new-instance v0, Lcoil3/network/HttpException;

    invoke-direct {v0, v12}, Lcoil3/network/HttpException;-><init>(Lcoil3/network/NetworkResponse;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_6
    move-object v1, v4

    goto :goto_7

    :cond_d
    move-object v5, v0

    move-object v0, v11

    goto :goto_6

    :goto_7
    :try_start_4
    iget-object v3, v3, Lcoil3/request/Options;->i:Lcoil3/request/CachePolicy;

    invoke-virtual {v3}, Lcoil3/request/CachePolicy;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :cond_f
    :goto_8
    if-eqz v0, :cond_11

    iget-object v0, v0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkRequest;

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move-object v4, v0

    goto :goto_b

    :cond_11
    :goto_a
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    move-result-object v0

    goto :goto_9

    :goto_b
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcoil3/network/NetworkClient;

    new-instance v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    move-object v3, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v10, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    invoke-interface {v12, v4, v0, v7}, Lcoil3/network/NetworkClient;->a(Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_12

    goto :goto_d

    :cond_12
    :goto_c
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    if-nez v0, :cond_14

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/network/NetworkClient;

    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    move-result-object v3

    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$2;

    invoke-direct {v4, v2, v11}, Lcoil3/network/NetworkFetcher$doFetch$2;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v9, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->f:I

    invoke-interface {v0, v3, v4, v7}, Lcoil3/network/NetworkClient;->a(Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_13

    :goto_d
    return-object v8

    :cond_13
    :goto_e
    check-cast v0, Lcoil3/fetch/SourceFetchResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_14
    return-object v0

    :goto_f
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Lcoil3/disk/DiskCache$Snapshot;

    if-eqz v1, :cond_15

    :try_start_5
    invoke-static {v1}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_10

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    :cond_15
    :goto_10
    throw v0
.end method

.method public static final c(Lcoil3/network/NetworkFetcher;Lcoil3/network/NetworkResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcoil3/network/NetworkFetcher$toImageSource$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    iget v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    invoke-direct {v0, p0, p2}, Lcoil3/network/NetworkFetcher$toImageSource$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->b:Lokio/Buffer;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    iput-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->b:Lokio/Buffer;

    iput v4, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->e:I

    invoke-interface {p1, p2}, Lcoil3/network/NetworkResponseBody;->v1(Lokio/Buffer;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object p0

    new-instance p2, Lcoil3/decode/SourceImageSource;

    invoke-direct {p2, p1, p0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    return-object p2
.end method

.method public static final d(Lcoil3/network/NetworkFetcher;Lcoil3/disk/DiskCache$Snapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkRequest;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    instance-of v0, p5, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    iget v1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    invoke-direct {v0, p0, p5}, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p5, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->e:Lcoil3/disk/DiskCache$Editor;

    iget-object p1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->d:Lcoil3/network/NetworkResponse;

    iget-object p2, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->c:Lcoil3/network/NetworkResponse;

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p3

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p4, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->c:Lcoil3/network/NetworkResponse;

    iget-object p1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->b:Lcoil3/disk/DiskCache$Snapshot;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p5, p3, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    invoke-virtual {p5}, Lcoil3/request/CachePolicy;->b()Z

    move-result p5

    if-nez p5, :cond_4

    if-eqz p1, :cond_a

    :try_start_1
    invoke-static {p1}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v5

    :catch_2
    move-exception p0

    throw p0

    :cond_4
    iget-object p5, p0, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    invoke-interface {p5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcoil3/network/CacheStrategy;

    iput-object p1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->b:Lcoil3/disk/DiskCache$Snapshot;

    iput-object p4, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->c:Lcoil3/network/NetworkResponse;

    iput v4, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    invoke-interface {p5, p2, p4}, Lcoil3/network/CacheStrategy;->b(Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$WriteResult;

    move-result-object p5

    if-ne p5, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    check-cast p5, Lcoil3/network/CacheStrategy$WriteResult;

    iget-object p2, p5, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcoil3/disk/DiskCache$Snapshot;->e1()Lcoil3/disk/DiskCache$Editor;

    move-result-object p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil3/disk/DiskCache;

    if-eqz p1, :cond_9

    iget-object p3, p3, Lcoil3/request/Options;->e:Ljava/lang/String;

    if-nez p3, :cond_8

    iget-object p3, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    :cond_8
    invoke-interface {p1, p3}, Lcoil3/disk/DiskCache;->a(Ljava/lang/String;)Lcoil3/disk/DiskCache$Editor;

    move-result-object p1

    goto :goto_2

    :cond_9
    move-object p1, v5

    :goto_2
    if-nez p1, :cond_b

    :cond_a
    :goto_3
    return-object v5

    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object p3

    invoke-interface {p1}, Lcoil3/disk/DiskCache$Editor;->getMetadata()Lokio/Path;

    move-result-object p5

    const/4 v2, 0x0

    invoke-virtual {p3, p5, v2}, Lokio/FileSystem;->q(Lokio/Path;Z)Lokio/Sink;

    move-result-object p3

    invoke-static {p3}, Lokio/Okio;->b(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {p2, p3}, Lcoil3/network/CacheNetworkResponse;->b(Lcoil3/network/NetworkResponse;Lokio/RealBufferedSink;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p3}, Lokio/RealBufferedSink;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p3, v5

    goto :goto_5

    :catchall_0
    move-exception p3

    goto :goto_5

    :catchall_1
    move-exception p5

    :try_start_5
    invoke-virtual {p3}, Lokio/RealBufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p3

    :try_start_6
    invoke-static {p5, p3}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    move-object p3, p5

    :goto_5
    if-nez p3, :cond_e

    iget-object p3, p2, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object p0

    invoke-interface {p1}, Lcoil3/disk/DiskCache$Editor;->getData()Lokio/Path;

    move-result-object p5

    iput-object v5, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->b:Lcoil3/disk/DiskCache$Snapshot;

    iput-object p4, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->c:Lcoil3/network/NetworkResponse;

    iput-object p2, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->d:Lcoil3/network/NetworkResponse;

    iput-object p1, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->e:Lcoil3/disk/DiskCache$Editor;

    iput v3, v0, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->h:I

    invoke-interface {p3, p0, p5}, Lcoil3/network/NetworkResponseBody;->k1(Lokio/FileSystem;Lokio/Path;)Lkotlin/Unit;

    move-result-object p5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-ne p5, v1, :cond_c

    goto :goto_8

    :cond_c
    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    :goto_6
    :try_start_7
    check-cast p5, Lkotlin/Unit;

    goto :goto_7

    :catch_3
    move-exception p3

    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    goto :goto_9

    :cond_d
    move-object p0, p1

    move-object p1, p2

    move-object p2, p4

    :goto_7
    invoke-interface {p0}, Lcoil3/disk/DiskCache$Editor;->a()Lcoil3/disk/DiskCache$Snapshot;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    return-object v1

    :cond_e
    :try_start_8
    throw p3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    invoke-interface {p0}, Lcoil3/disk/DiskCache$Editor;->abort()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    iget-object p0, p2, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    if-eqz p0, :cond_f

    :try_start_a
    invoke-static {p0}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_5
    move-exception p0

    throw p0

    :catch_6
    :cond_f
    :goto_a
    iget-object p0, p1, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    if-eqz p0, :cond_10

    :try_start_b
    invoke-static {p0}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    :catch_7
    move-exception p0

    throw p0

    :catch_8
    :cond_10
    :goto_b
    throw p3
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "text/plain"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcoil3/util/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x3b

    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/network/ConcurrentRequestStrategy;

    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    iget-object v1, v1, Lcoil3/request/Options;->e:Ljava/lang/String;

    new-instance v2, Lcoil3/network/NetworkFetcher$fetch$2;

    const-string v7, "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcoil3/network/NetworkFetcher;

    const-string v6, "doFetch"

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, p1, v2}, Lcoil3/network/ConcurrentRequestStrategy;->a(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lokio/FileSystem;
    .locals 1

    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/disk/DiskCache;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcoil3/disk/DiskCache;->getFileSystem()Lokio/FileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    return-object p0
.end method

.method public final g()Lcoil3/network/NetworkRequest;
    .locals 9

    sget-object v0, Lcoil3/network/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    invoke-static {v1, v0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/network/NetworkHeaders;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcoil3/network/NetworkHeaders$Builder;

    invoke-direct {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    iget-object v0, v1, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->a()Z

    move-result v3

    iget-object v4, v1, Lcoil3/request/Options;->i:Lcoil3/request/CachePolicy;

    invoke-virtual {v4}, Lcoil3/request/CachePolicy;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcoil3/network/NetworkFetcher;->f:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil3/network/ConnectivityChecker;

    invoke-interface {v4}, Lcoil3/network/ConnectivityChecker;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    const-string v0, "only-if-cached, max-stale=2147483647"

    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcoil3/request/CachePolicy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "no-cache"

    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "no-cache, no-store"

    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    const-string v0, "no-cache, only-if-cached"

    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance v3, Lcoil3/network/NetworkRequest;

    sget-object v0, Lcoil3/network/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    invoke-static {v1, v0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    move-result-object v6

    sget-object v0, Lcoil3/network/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    invoke-static {v1, v0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcoil3/network/NetworkRequestBody;

    iget-object v8, v1, Lcoil3/request/Options;->j:Lcoil3/Extras;

    iget-object v4, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcoil3/network/NetworkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/network/NetworkRequestBody;Lcoil3/Extras;)V

    return-object v3
.end method

.method public final h(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;
    .locals 3

    invoke-interface {p1}, Lcoil3/disk/DiskCache$Snapshot;->getData()Lokio/Path;

    move-result-object v0

    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    iget-object v2, v2, Lcoil3/request/Options;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    :cond_0
    const/16 p0, 0x10

    invoke-static {v0, v1, v2, p1, p0}, Lcoil3/decode/ImageSourceKt;->a(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/DiskCache$Snapshot;I)Lcoil3/decode/FileImageSource;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    move-result-object p0

    invoke-interface {p1}, Lcoil3/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/FileSystem;->r(Lokio/Path;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcoil3/network/CacheNetworkResponse;->a(Lokio/RealBufferedSource;)Lcoil3/network/NetworkResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    move-object p0, p1

    move-object p1, v0

    :goto_1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method
