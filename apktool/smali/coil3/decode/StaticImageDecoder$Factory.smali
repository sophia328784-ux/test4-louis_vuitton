.class public final Lcoil3/decode/StaticImageDecoder$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/decode/Decoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/decode/StaticImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/decode/StaticImageDecoder$Factory;",
        "Lcoil3/decode/Decoder$Factory;",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "parallelismLock",
        "<init>",
        "(Lkotlinx/coroutines/sync/Semaphore;)V",
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
.field public final a:Lkotlinx/coroutines/sync/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/sync/Semaphore;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/Semaphore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlinx/coroutines/sync/SemaphoreKt;->a(I)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;)V

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;)Lcoil3/decode/Decoder;
    .locals 6

    invoke-static {p2}, Lcoil3/request/ImageRequests_androidKt;->b(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iget-object v1, p2, Lcoil3/request/Options;->a:Landroid/content/Context;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    invoke-interface {v0}, Lcoil3/decode/ImageSource;->getFileSystem()Lokio/FileSystem;

    move-result-object v2

    sget-object v4, Lokio/FileSystem;->b:Lokio/JvmSystemFileSystem;

    if-ne v2, v4, :cond_1

    invoke-interface {v0}, Lcoil3/decode/ImageSource;->E1()Lokio/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokio/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcoil3/decode/ImageSource;->getMetadata()Lcoil3/decode/ImageSource$Metadata;

    move-result-object v0

    instance-of v2, v0, Lcoil3/decode/AssetMetadata;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    check-cast v0, Lcoil3/decode/AssetMetadata;

    iget-object v0, v0, Lcoil3/decode/AssetMetadata;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcoil3/decode/ContentMetadata;

    if-eqz v2, :cond_3

    :try_start_0
    check-cast v0, Lcoil3/decode/ContentMetadata;

    iget-object v0, v0, Lcoil3/decode/ContentMetadata;->a:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v4, v5, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v1, Ln2;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Ln2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcoil3/decode/ResourceMetadata;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcoil3/decode/ResourceMetadata;

    iget-object v4, v2, Lcoil3/decode/ResourceMetadata;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v2, Lcoil3/decode/ResourceMetadata;->b:I

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcoil3/decode/ByteBufferMetadata;

    if-eqz v1, :cond_5

    check-cast v0, Lcoil3/decode/ByteBufferMetadata;

    iget-object v0, v0, Lcoil3/decode/ByteBufferMetadata;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    goto :goto_0

    :catch_0
    :cond_5
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_7

    :cond_6
    return-object v3

    :cond_7
    new-instance v1, Lcoil3/decode/StaticImageDecoder;

    iget-object p1, p1, Lcoil3/fetch/SourceFetchResult;->a:Lcoil3/decode/ImageSource;

    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder$Factory;->a:Lkotlinx/coroutines/sync/Semaphore;

    invoke-direct {v1, v0, p1, p2, p0}, Lcoil3/decode/StaticImageDecoder;-><init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Lcoil3/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V

    return-object v1
.end method
