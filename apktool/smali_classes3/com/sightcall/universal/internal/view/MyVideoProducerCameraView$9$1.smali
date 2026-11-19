.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;

    iget-object v0, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;->this$1:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;

    iget-object v0, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->b(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$9$1;->val$file:Ljava/io/File;

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;->onCameraSnapshot(Ljava/io/File;)V

    :cond_0
    return-void
.end method
