.class public final Lcoil3/disk/DiskCache$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcoil3/disk/DiskCache$Builder;",
        "",
        "<init>",
        "()V",
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
.field public final a:Lokio/JvmSystemFileSystem;

.field public final b:D

.field public final c:J

.field public final d:J

.field public final e:Lkotlin/coroutines/EmptyCoroutineContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lokio/FileSystem;->b:Lokio/JvmSystemFileSystem;

    iput-object v0, p0, Lcoil3/disk/DiskCache$Builder;->a:Lokio/JvmSystemFileSystem;

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    iput-wide v0, p0, Lcoil3/disk/DiskCache$Builder;->b:D

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcoil3/disk/DiskCache$Builder;->c:J

    const-wide/32 v0, 0xfa00000

    iput-wide v0, p0, Lcoil3/disk/DiskCache$Builder;->d:J

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    iput-object v0, p0, Lcoil3/disk/DiskCache$Builder;->e:Lkotlin/coroutines/EmptyCoroutineContext;

    return-void
.end method
