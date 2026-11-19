.class Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->c:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iput p2, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->b:I

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->c:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;

    iget v0, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->h:I

    iget p0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator$1;->b:I

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->f:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    iput-object p0, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraStateOrchestrator;->g:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    :cond_0
    return-void
.end method
