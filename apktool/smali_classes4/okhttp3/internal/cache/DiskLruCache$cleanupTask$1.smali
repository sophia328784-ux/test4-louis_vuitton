.class public final Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->a:Lokhttp3/internal/cache/DiskLruCache;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 4

    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->a:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->p:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->u()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->s()V

    const/4 v3, 0x0

    iput v3, p0, Lokhttp3/internal/cache/DiskLruCache;->m:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->s:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->k:Lokio/RealBufferedSink;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lokhttp3/internal/_UtilCommonKt;->b(Ljava/io/Closeable;)V

    :cond_1
    invoke-static {}, Lokio/Okio;->a()Lokio/Sink;

    move-result-object v0

    new-instance v3, Lokio/RealBufferedSink;

    invoke-direct {v3, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->k:Lokio/RealBufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-wide v1

    :cond_3
    :goto_2
    monitor-exit p0

    return-wide v1

    :goto_3
    monitor-exit p0

    throw v0
.end method
