.class Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks$3;->this$1:Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraView$CameraCallbacks;->b:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
