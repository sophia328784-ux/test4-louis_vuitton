.class public Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;
.super Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;
.source "SourceFile"


# instance fields
.field public f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field public g:Landroid/hardware/Camera;

.field public h:Lcom/otaliastudios/cameraview/size/AspectRatio;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/engine/Camera1Engine;Landroid/hardware/Camera;Lcom/otaliastudios/cameraview/size/AspectRatio;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->g:Landroid/hardware/Camera;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->h:Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->i:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->f:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->g:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->h:Lcom/otaliastudios/cameraview/size/AspectRatio;

    const/4 v0, 0x0

    iput v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->i:I

    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;->g:Landroid/hardware/Camera;

    new-instance v1, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder$1;-><init>(Lcom/otaliastudios/cameraview/picture/Snapshot1PictureRecorder;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method
