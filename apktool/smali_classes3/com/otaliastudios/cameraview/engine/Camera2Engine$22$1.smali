.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

.field public final synthetic b:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;Lcom/otaliastudios/cameraview/engine/meter/MeterAction;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;->b:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;->a:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;->b:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->j:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v4, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;->a:Lcom/otaliastudios/cameraview/engine/meter/MeterAction;

    iget-object v4, v4, Lcom/otaliastudios/cameraview/engine/meter/MeterAction;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "isSuccessful:"

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;

    iget-boolean v5, v5, Lcom/otaliastudios/cameraview/engine/meter/BaseMeter;->f:Z

    if-nez v5, :cond_0

    const-string v4, "returning false."

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move v8, v6

    goto :goto_0

    :cond_1
    const-string v4, "returning true."

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    iget-object v3, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->val$legacyPoint:Landroid/graphics/PointF;

    invoke-interface {v1, v2, v8, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->d(Lcom/otaliastudios/cameraview/gesture/Gesture;ZLandroid/graphics/PointF;)V

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    const-string v2, "reset metering"

    invoke-virtual {v1, v6, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->d(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-wide v4, v0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->O:J

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->e:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v6, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1$1;

    invoke-direct {v6, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1$1;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;)V

    const-string v2, "reset metering"

    invoke-virtual/range {v1 .. v6}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->g(Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;JLjava/lang/Runnable;)V

    :cond_2
    return-void
.end method
