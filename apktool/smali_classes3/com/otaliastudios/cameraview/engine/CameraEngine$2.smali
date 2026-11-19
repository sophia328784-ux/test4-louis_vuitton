.class Lcom/otaliastudios/cameraview/engine/CameraEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraEngine;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/otaliastudios/cameraview/CameraException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "EXCEPTION:"

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    check-cast v0, Lcom/otaliastudios/cameraview/CameraException;

    iget v1, v0, Lcom/otaliastudios/cameraview/CameraException;->b:I

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v2, "Got CameraException. Since it is unrecoverable, executing destroy(false)."

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v3, v3}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->p(IZ)V

    :goto_0
    sget-object v1, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v2, "Got CameraException. Dispatching to callback."

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->d:Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;

    invoke-interface {p0, v0}, Lcom/otaliastudios/cameraview/engine/CameraEngine$Callback;->i(Lcom/otaliastudios/cameraview/CameraException;)V

    return-void

    :cond_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/CameraEngine;->f:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v1, "Unexpected error! Executing destroy(true)."

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraEngine;

    invoke-virtual {v1, v3, v2}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->p(IZ)V

    const-string v1, "Unexpected error! Throwing."

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraEngine$2;->val$throwable:Ljava/lang/Throwable;

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method
