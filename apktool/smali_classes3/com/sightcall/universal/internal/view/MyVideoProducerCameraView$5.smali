.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->r(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$5;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    move-result-object p0

    invoke-interface {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;->onCameraStart()V

    :cond_0
    return-void
.end method
