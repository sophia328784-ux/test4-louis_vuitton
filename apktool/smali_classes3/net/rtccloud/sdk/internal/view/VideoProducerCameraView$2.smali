.class Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;->postRequestLayout()V
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

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$2;->this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$2;->this$0:Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
