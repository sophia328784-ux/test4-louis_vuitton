.class public Lcom/otaliastudios/cameraview/PictureResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/PictureResult$Stub;
    }
.end annotation


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->a:Z

    iget-object p1, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->e:[B

    iput-object p1, p0, Lcom/otaliastudios/cameraview/PictureResult;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lfw;)V
    .locals 2

    sget-object v0, Lcom/otaliastudios/cameraview/CameraUtils;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/otaliastudios/cameraview/CameraUtils$1;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/PictureResult;->a:[B

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/otaliastudios/cameraview/CameraUtils$1;-><init>([BLjava/io/File;Landroid/os/Handler;Lcom/otaliastudios/cameraview/FileCallback;)V

    const-string p0, "FallbackCameraThread"

    invoke-static {p0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object p0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->c:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
