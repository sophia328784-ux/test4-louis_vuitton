.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadError()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onUploadFailure()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->OCR_ERROR:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public onUploadSuccess()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->OCR_SUCCESS:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$10;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->c(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method
