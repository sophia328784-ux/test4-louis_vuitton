.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6

    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;->a:Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;

    iget-object v0, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const/4 v1, 0x0

    const-string v2, "focus end"

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v2, "focus reset"

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    iget-object v0, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget-object v1, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v0, v1, p1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->d(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V

    iget-object p1, p2, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-wide v3, p1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->O:J

    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-lez p2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p2, v3, v0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v5, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;

    invoke-direct {v5, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;)V

    const-string v1, "focus reset"

    invoke-virtual/range {v0 .. v5}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->g(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
