.class final Lcoil3/disk/RealDiskCache$RealSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/disk/DiskCache$Snapshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/RealDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealSnapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil3/disk/RealDiskCache$RealSnapshot;",
        "Lcoil3/disk/DiskCache$Snapshot;",
        "Lcoil3/disk/DiskLruCache$Snapshot;",
        "Lcoil3/disk/DiskLruCache;",
        "snapshot",
        "<init>",
        "(Lcoil3/disk/DiskLruCache$Snapshot;)V",
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
.field public final b:Lcoil3/disk/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache$Snapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->b:Lcoil3/disk/DiskLruCache$Snapshot;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->b:Lcoil3/disk/DiskLruCache$Snapshot;

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    return-void
.end method

.method public final e1()Lcoil3/disk/DiskCache$Editor;
    .locals 2

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->b:Lcoil3/disk/DiskLruCache$Snapshot;

    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->d:Lcoil3/disk/DiskLruCache;

    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->b:Lcoil3/disk/DiskLruCache$Entry;

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->d(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p0, :cond_0

    new-instance v0, Lcoil3/disk/RealDiskCache$RealEditor;

    invoke-direct {v0, p0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Lcoil3/disk/DiskLruCache$Editor;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final getData()Lokio/Path;
    .locals 1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->b:Lcoil3/disk/DiskLruCache$Snapshot;

    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->b:Lcoil3/disk/DiskLruCache$Entry;

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Path;

    return-object p0

    :cond_0
    const-string p0, "snapshot is closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetadata()Lokio/Path;
    .locals 1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->b:Lcoil3/disk/DiskLruCache$Snapshot;

    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->b:Lcoil3/disk/DiskLruCache$Entry;

    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Path;

    return-object p0

    :cond_0
    const-string p0, "snapshot is closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
