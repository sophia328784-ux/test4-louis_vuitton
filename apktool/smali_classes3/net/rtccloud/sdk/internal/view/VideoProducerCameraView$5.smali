.class Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->doPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;->this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;->this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->b(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$5;->this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->b(Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;)Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

    move-result-object p0

    invoke-interface {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;->onCameraPause()V

    :cond_0
    return-void
.end method
