.class public Lnet/rtccloud/sdk/FrameCache;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lnet/rtccloud/sdk/Frame;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private lastKey:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CACHE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private declared-synchronized dump()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire(III)Lnet/rtccloud/sdk/Frame;
    .locals 2

    monitor-enter p0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/FrameCache;->lastKey:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/Frame;

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lnet/rtccloud/sdk/Frame;->create(Ljava/lang/Integer;II)Lnet/rtccloud/sdk/Frame;

    move-result-object p2

    sget-object p3, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p1, v0, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, p3, :cond_3

    :cond_2
    invoke-virtual {v0, p2, p3}, Lnet/rtccloud/sdk/Frame;->resizeBitmap(II)V

    sget-object p1, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " resized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public entryRemoved(ZLjava/lang/Integer;Lnet/rtccloud/sdk/Frame;Lnet/rtccloud/sdk/Frame;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s replaced by %s"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s removed"

    invoke-virtual {p0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p0, p3, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lnet/rtccloud/sdk/Frame;

    check-cast p4, Lnet/rtccloud/sdk/Frame;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/FrameCache;->entryRemoved(ZLjava/lang/Integer;Lnet/rtccloud/sdk/Frame;Lnet/rtccloud/sdk/Frame;)V

    return-void
.end method

.method public lastFrame()Lnet/rtccloud/sdk/Frame;
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/FrameCache;->lastKey:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Frame;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized teardown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/rtccloud/sdk/FrameCache;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "teardown()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/rtccloud/sdk/FrameCache;->lastKey:Ljava/lang/Integer;

    invoke-direct {p0}, Lnet/rtccloud/sdk/FrameCache;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
