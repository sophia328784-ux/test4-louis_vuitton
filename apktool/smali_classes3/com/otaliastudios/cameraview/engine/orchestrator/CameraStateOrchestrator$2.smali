.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

.field final synthetic val$fromState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field final synthetic val$isTearDown:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$stateChange:Ljava/util/concurrent/Callable;

.field final synthetic val$toState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/lang/String;Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;Ljava/util/concurrent/Callable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$fromState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$toState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p5, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$stateChange:Ljava/util/concurrent/Callable;

    iput-boolean p6, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$isTearDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v1, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$fromState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->e:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->this$0:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget-object v4, v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iget-object v6, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$fromState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v7, "to:"

    iget-object v8, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$toState:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v3, "- State mismatch, aborting. current:"

    const-string v5, "from:"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/tasks/Tasks;->d()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator;->a:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;->a()Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->val$stateChange:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    new-instance v2, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2$1;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2$1;-><init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->h(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$2;->call()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
