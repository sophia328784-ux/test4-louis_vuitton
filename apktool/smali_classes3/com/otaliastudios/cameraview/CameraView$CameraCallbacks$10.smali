.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

.field final synthetic val$fingers:[Landroid/graphics/PointF;

.field final synthetic val$newValue:F


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;F[Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iput p2, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$newValue:F

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->val$fingers:[Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$10;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/CameraListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method
