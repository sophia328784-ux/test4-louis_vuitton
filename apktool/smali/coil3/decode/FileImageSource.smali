.class public final Lcoil3/decode/FileImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/decode/ImageSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil3/decode/FileImageSource;",
        "Lcoil3/decode/ImageSource;",
        "Lokio/Path;",
        "file",
        "Lokio/FileSystem;",
        "fileSystem",
        "",
        "diskCacheKey",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "closeable",
        "Lcoil3/decode/ImageSource$Metadata;",
        "metadata",
        "<init>",
        "(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/lang/AutoCloseable;Lcoil3/decode/ImageSource$Metadata;)V",
        "io.coil-kt.coil3:coil-core"
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
.field public final b:Lokio/Path;

.field public final c:Lokio/FileSystem;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/AutoCloseable;

.field public final f:Lcoil3/decode/ImageSource$Metadata;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/lang/AutoCloseable;Lcoil3/decode/ImageSource$Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/decode/FileImageSource;->b:Lokio/Path;

    iput-object p2, p0, Lcoil3/decode/FileImageSource;->c:Lokio/FileSystem;

    iput-object p3, p0, Lcoil3/decode/FileImageSource;->d:Ljava/lang/String;

    iput-object p4, p0, Lcoil3/decode/FileImageSource;->e:Ljava/lang/AutoCloseable;

    iput-object p5, p0, Lcoil3/decode/FileImageSource;->f:Lcoil3/decode/ImageSource$Metadata;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/decode/FileImageSource;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final E1()Lokio/Path;
    .locals 2

    iget-object v0, p0, Lcoil3/decode/FileImageSource;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/FileImageSource;->h:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcoil3/decode/FileImageSource;->b:Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcoil3/decode/FileImageSource;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcoil3/decode/FileImageSource;->h:Z

    iget-object v1, p0, Lcoil3/decode/FileImageSource;->i:Lokio/RealBufferedSource;

    if-eqz v1, :cond_0

    sget-object v2, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0

    :catch_1
    :cond_0
    :goto_0
    iget-object p0, p0, Lcoil3/decode/FileImageSource;->e:Ljava/lang/AutoCloseable;

    if-eqz p0, :cond_1

    sget-object v1, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0}, Ld21;->x(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 0

    iget-object p0, p0, Lcoil3/decode/FileImageSource;->c:Lokio/FileSystem;

    return-object p0
.end method

.method public final getMetadata()Lcoil3/decode/ImageSource$Metadata;
    .locals 0

    iget-object p0, p0, Lcoil3/decode/FileImageSource;->f:Lcoil3/decode/ImageSource$Metadata;

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 3

    iget-object v0, p0, Lcoil3/decode/FileImageSource;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/FileImageSource;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcoil3/decode/FileImageSource;->i:Lokio/RealBufferedSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil3/decode/FileImageSource;->c:Lokio/FileSystem;

    iget-object v2, p0, Lcoil3/decode/FileImageSource;->b:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->r(Lokio/Path;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcoil3/decode/FileImageSource;->i:Lokio/RealBufferedSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method
