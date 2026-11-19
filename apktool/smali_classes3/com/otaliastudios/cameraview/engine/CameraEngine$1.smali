.class Lcom/otaliastudios/cameraview/engine/CameraEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/engine/orchestrator/CameraOrchestrator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->a:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    return-void
.end method


# virtual methods
.method public final a()Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->a:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->b:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    return-object p0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$1;->a:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->n(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;Z)V

    return-void
.end method
