.class public abstract Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "FileDownloader"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/lit8 v3, v0, -0x1

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "SkuAndLookDownloadExecutor#"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v4, v3

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    return-void
.end method
