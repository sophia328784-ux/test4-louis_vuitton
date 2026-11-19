.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$listener:Lcom/google/android/gms/tasks/OnCompleteListener;

.field final synthetic val$task:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;->val$listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;->val$task:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;->val$listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$4;->val$task:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
