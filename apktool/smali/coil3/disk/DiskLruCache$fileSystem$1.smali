.class public final Lcoil3/disk/DiskLruCache$fileSystem$1;
.super Lokio/ForwardingFileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil3/disk/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V
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
        "coil3/disk/DiskLruCache$fileSystem$1",
        "Lokio/ForwardingFileSystem;",
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


# virtual methods
.method public final q(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    invoke-virtual {p1}, Lokio/Path;->c()Lokio/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lokio/FileSystem;->e(Lokio/Path;)V

    :cond_0
    iget-object p0, p0, Lokio/ForwardingFileSystem;->d:Lokio/FileSystem;

    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->q(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method
