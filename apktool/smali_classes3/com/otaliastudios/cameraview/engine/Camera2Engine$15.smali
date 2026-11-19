.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$notify:Z

.field final synthetic val$old:F

.field final synthetic val$points:[Landroid/graphics/PointF;

.field final synthetic val$zoom:F


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;FZF[Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$old:F

    iput-boolean p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$notify:Z

    iput p4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$zoom:F

    iput-object p5, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$points:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$old:F

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->r0(Landroid/hardware/camera2/CaptureRequest$Builder;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->o0()V

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$notify:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$zoom:F

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$15;->val$points:[Landroid/graphics/PointF;

    invoke-interface {v0, v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->m(F[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
