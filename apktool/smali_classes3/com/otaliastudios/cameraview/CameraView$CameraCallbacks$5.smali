.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/cameraview/PictureResult;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {v0, v1}, Lcom/otaliastudios/cameraview/PictureResult;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$5;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/CameraListener;

    invoke-virtual {v1, v0}, Lcom/otaliastudios/cameraview/CameraListener;->a(Lcom/otaliastudios/cameraview/PictureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method
