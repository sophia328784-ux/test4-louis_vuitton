.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->call()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2$1;->b:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2$1;->b:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$isTearDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$toState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object p1
.end method
