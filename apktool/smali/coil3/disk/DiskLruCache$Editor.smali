.class public final Lcoil3/disk/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil3/disk/DiskLruCache$Editor;",
        "",
        "Lcoil3/disk/DiskLruCache$Entry;",
        "Lcoil3/disk/DiskLruCache;",
        "entry",
        "<init>",
        "(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V",
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
.field public final a:Lcoil3/disk/DiskLruCache$Entry;

.field public b:Z

.field public final c:[Z

.field public final synthetic d:Lcoil3/disk/DiskLruCache;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 0

    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget p1, p1, Lcoil3/disk/DiskLruCache;->e:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget-object v2, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0, p1}, Lcoil3/disk/DiskLruCache;->c(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Editor;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string p0, "editor is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final b(I)Lokio/Path;
    .locals 4

    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    move-object v0, p0

    check-cast v0, Lokio/Path;

    invoke-static {p1, v0}, Lcoil3/util/FileSystemsKt;->a(Lokio/FileSystem;Lokio/Path;)V

    check-cast p0, Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "editor is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method
