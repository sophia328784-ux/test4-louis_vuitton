.class Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    sget-object v0, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v1, "Taking picture with super.take()."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder$1;->a:Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;

    invoke-static {p0}, Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;->c(Lcom/otaliastudios/cameraview/picture/Snapshot2PictureRecorder;)V

    return-void
.end method
