.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$old:Lcom/otaliastudios/cameraview/controls/Hdr;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/controls/Hdr;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;->val$old:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;->val$old:Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->m0(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/otaliastudios/cameraview/controls/Hdr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$14;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->o0()V

    :cond_0
    return-void
.end method
