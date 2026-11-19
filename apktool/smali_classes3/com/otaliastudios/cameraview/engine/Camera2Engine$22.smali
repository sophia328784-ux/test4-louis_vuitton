.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$legacyPoint:Landroid/graphics/PointF;

.field final synthetic val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;Lcom/otaliastudios/cameraview/metering/MeteringRegions;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$legacyPoint:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->h:Lcom/otaliastudios/cameraview/CameraOptions;

    iget-boolean v1, v1, Lcom/otaliastudios/cameraview/CameraOptions;->o:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->g(Lcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$regions:Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    sget v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->k1:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->t0(Lcom/otaliastudios/cameraview/metering/MeteringRegions;)Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2, v0}, Lcom/otaliastudios/cameraview/engine/action/Actions;->b(JLcom/otaliastudios/cameraview/engine/action/ActionWrapper;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->m(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    new-instance v2, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;Lcom/otaliastudios/cameraview/engine/meter/MeterAction;)V

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->e(Lcom/otaliastudios/cameraview/engine/action/ActionCallback;)V

    return-void
.end method
