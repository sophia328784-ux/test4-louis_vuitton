.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1$1;->this$2:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22$1;->b:Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$22;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    sget v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->k1:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine$23;-><init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    new-instance v1, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;

    invoke-direct {v1}, Lcom/otaliastudios/cameraview/engine/meter/MeterResetAction;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/otaliastudios/cameraview/engine/action/Actions;->a([Lcom/otaliastudios/cameraview/engine/action/BaseAction;)Lcom/otaliastudios/cameraview/engine/action/BaseAction;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->m(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;)V

    return-void
.end method
