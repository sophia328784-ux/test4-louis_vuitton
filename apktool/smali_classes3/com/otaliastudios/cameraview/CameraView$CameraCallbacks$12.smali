.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$frame:Lcom/otaliastudios/cameraview/frame/Frame;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/frame/Frame;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->val$frame:Lcom/otaliastudios/cameraview/frame/Frame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->val$frame:Lcom/otaliastudios/cameraview/frame/Frame;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/frame/Frame;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "to processors."

    const-string v3, "dispatchFrame: executing. Passing"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/frame/FrameProcessor;

    :try_start_0
    invoke-interface {v1}, Lcom/otaliastudios/cameraview/frame/FrameProcessor;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v2, v2, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->a:Lcom/otaliastudios/cameraview/CameraLogger;

    const-string v3, "Frame processor crashed:"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$12;->val$frame:Lcom/otaliastudios/cameraview/frame/Frame;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->b()V

    return-void
.end method
