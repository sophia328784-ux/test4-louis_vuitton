.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doOcr(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

.field final synthetic val$id:I

.field final synthetic val$session:Lcom/sightcall/universal/model/Session;

.field final synthetic val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/VideoModule$CameraSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$session:Lcom/sightcall/universal/model/Session;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iput p4, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    :try_start_0
    new-instance p2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;

    invoke-direct {p2, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$source:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->val$id:I

    invoke-static {v0, p1, v1, v2, p2}, Lcom/sightcall/universal/ocr/OcrClient;->upload(Lcom/sightcall/universal/model/Session;[BLnet/rtccloud/sdk/VideoModule$CameraSource;ILcom/sightcall/universal/ocr/OcrClient$UploadCallback;)Lretrofit2/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->m(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    return-void
.end method
