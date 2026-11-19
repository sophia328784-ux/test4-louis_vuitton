.class Lcom/otaliastudios/cameraview/engine/CameraEngine$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/otaliastudios/cameraview/CameraOptions;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/otaliastudios/cameraview/CameraOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    move-object v1, v0

    check-cast v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->o(Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->t()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    check-cast p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->H:Lcom/otaliastudios/cameraview/controls/Facing;

    const-string v1, "onStartEngine:"

    const-string v2, "No camera available for facing"

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/CameraException;-><init>(I)V

    throw p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$5;->call()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
