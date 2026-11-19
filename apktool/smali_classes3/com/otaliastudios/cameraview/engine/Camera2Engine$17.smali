.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$oldPreviewFrameRate:F


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;F)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->val$oldPreviewFrameRate:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->val$oldPreviewFrameRate:F

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->n0(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$17;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->o0()V

    :cond_0
    return-void
.end method
