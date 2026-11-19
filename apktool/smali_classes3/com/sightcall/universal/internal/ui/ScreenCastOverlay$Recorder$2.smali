.class Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)V
    .locals 1

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->b(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->a(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->c(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Lnet/rtccloud/sdk/Sink$Screenshare;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder$2;->this$0:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->c(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;)Lnet/rtccloud/sdk/Sink$Screenshare;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v4 .. v10}, Lnet/rtccloud/sdk/Sink$Screenshare;->push(Ljava/nio/ByteBuffer;IIIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Landroid/media/Image;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_5
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
