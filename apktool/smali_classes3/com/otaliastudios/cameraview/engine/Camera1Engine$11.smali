.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$legacyPoint:Landroid/graphics/PointF;

.field final synthetic val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Lcom/otaliastudios/cameraview/metering/MeteringRegions;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-boolean v0, v0, Lcom/otaliastudios/cameraview/CameraOptions;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v2, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->D:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g:Lcom/otaliastudios/cameraview/preview/CameraPreview;

    new-instance v3, Lcom/otaliastudios/cameraview/size/Size;

    iget v4, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->d:I

    iget v1, v1, Lcom/otaliastudios/cameraview/preview/CameraPreview;->e:I

    invoke-direct {v3, v4, v1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-direct {v0, v2, v3}, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;-><init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;)V

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->c(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v4

    if-lez v3, :cond_1

    invoke-virtual {v1, v3, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->b(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_1
    if-lez v4, :cond_2

    invoke-virtual {v1, v4, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->b(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_2
    const-string v0, "auto"

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->g(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const/4 v1, 0x0

    const-string v2, "focus end"

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->b(Ljava/lang/String;JLjava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->X:Landroid/hardware/Camera;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine$11$2;-><init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine$11;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v1, "startAutoFocus:"

    const-string v2, "Error calling autoFocus"

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
