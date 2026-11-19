.class final Lcoil3/disk/RealDiskCache$RealEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/disk/DiskCache$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/RealDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealEditor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil3/disk/RealDiskCache$RealEditor;",
        "Lcoil3/disk/DiskCache$Editor;",
        "Lcoil3/disk/DiskLruCache$Editor;",
        "Lcoil3/disk/DiskLruCache;",
        "editor",
        "<init>",
        "(Lcoil3/disk/DiskLruCache$Editor;)V",
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
.field public final a:Lcoil3/disk/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    return-void
.end method


# virtual methods
.method public final a()Lcoil3/disk/DiskCache$Snapshot;
    .locals 3

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->e(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p0, :cond_0

    new-instance v0, Lcoil3/disk/RealDiskCache$RealSnapshot;

    invoke-direct {v0, p0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final abort()V
    .locals 1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V

    return-void
.end method

.method public final getData()Lokio/Path;
    .locals 1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->b(I)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getMetadata()Lokio/Path;
    .locals 1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->b(I)Lokio/Path;

    move-result-object p0

    return-object p0
.end method
