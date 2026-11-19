.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final display:Landroid/view/Display;

.field private previousRotation:I

.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->previousRotation:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->previousRotation:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->q(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V

    :cond_1
    iput p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$1;->previousRotation:I

    return-void
.end method
