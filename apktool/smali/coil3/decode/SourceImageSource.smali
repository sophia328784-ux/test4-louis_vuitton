.class public final Lcoil3/decode/SourceImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/decode/ImageSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil3/decode/SourceImageSource;",
        "Lcoil3/decode/ImageSource;",
        "Lokio/BufferedSource;",
        "source",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lcoil3/decode/ImageSource$Metadata;",
        "metadata",
        "<init>",
        "(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V",
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
.field public final b:Lokio/FileSystem;

.field public final c:Lcoil3/decode/ImageSource$Metadata;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public final f:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/decode/SourceImageSource;->b:Lokio/FileSystem;

    iput-object p3, p0, Lcoil3/decode/SourceImageSource;->c:Lcoil3/decode/ImageSource$Metadata;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/decode/SourceImageSource;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcoil3/decode/SourceImageSource;->f:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public final E1()Lokio/Path;
    .locals 2

    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcoil3/decode/SourceImageSource;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcoil3/decode/SourceImageSource;->e:Z

    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->f:Lokio/BufferedSource;

    if-eqz p0, :cond_0

    sget-object v1, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 0

    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->b:Lokio/FileSystem;

    return-object p0
.end method

.method public final getMetadata()Lcoil3/decode/ImageSource$Metadata;
    .locals 0

    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->c:Lcoil3/decode/ImageSource$Metadata;

    return-object p0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 2

    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/SourceImageSource;->e:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->f:Lokio/BufferedSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :try_start_1
    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
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
