.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field final synthetic val$point:Landroid/graphics/PointF;

.field final synthetic val$success:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;ZLcom/otaliastudios/cameraview/gesture/Gesture;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->val$success:Z

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->val$gesture:Lcom/otaliastudios/cameraview/gesture/Gesture;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->val$point:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->val$success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/CameraView;->b:Z

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    :cond_0
    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->r:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraView;->s:Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;->c()V

    :cond_2
    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$8;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/CameraListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method
