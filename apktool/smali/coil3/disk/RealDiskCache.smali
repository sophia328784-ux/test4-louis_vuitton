.class public final Lcoil3/disk/RealDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/disk/DiskCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/disk/RealDiskCache$Companion;,
        Lcoil3/disk/RealDiskCache$RealEditor;,
        Lcoil3/disk/RealDiskCache$RealSnapshot;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u000c\r\u000eB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcoil3/disk/RealDiskCache;",
        "Lcoil3/disk/DiskCache;",
        "",
        "maxSize",
        "Lokio/Path;",
        "directory",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lkotlin/coroutines/CoroutineContext;",
        "cleanupCoroutineContext",
        "<init>",
        "(JLokio/Path;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;)V",
        "RealSnapshot",
        "RealEditor",
        "Companion",
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
.field public final a:Lokio/FileSystem;

.field public final b:Lcoil3/disk/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/disk/RealDiskCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/disk/RealDiskCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLokio/Path;Lokio/FileSystem;Lkotlin/coroutines/CoroutineContext;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcoil3/disk/RealDiskCache;->a:Lokio/FileSystem;

    new-instance v0, Lcoil3/disk/DiskLruCache;

    const/4 v6, 0x3

    const/4 v7, 0x2

    move-wide v4, p1

    move-object v2, p3

    move-object v1, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v7}, Lcoil3/disk/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V

    iput-object v0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcoil3/disk/DiskCache$Editor;
    .locals 1

    sget-object v0, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/ByteString$Companion;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-virtual {p1, v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    invoke-virtual {p0, p1}, Lcoil3/disk/DiskLruCache;->d(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcoil3/disk/RealDiskCache$RealEditor;

    invoke-direct {p1, p0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Lcoil3/disk/DiskLruCache$Editor;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;
    .locals 1

    sget-object v0, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/ByteString$Companion;->c(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-virtual {p1, v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    invoke-virtual {p0, p1}, Lcoil3/disk/DiskLruCache;->e(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcoil3/disk/RealDiskCache$RealSnapshot;

    invoke-direct {p1, p0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 0

    iget-object p0, p0, Lcoil3/disk/RealDiskCache;->a:Lokio/FileSystem;

    return-object p0
.end method
