.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doSnapshot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-static {v0, v1, p1, p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->s(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;[BLandroid/hardware/Camera;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->i(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->m(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    return-void
.end method
