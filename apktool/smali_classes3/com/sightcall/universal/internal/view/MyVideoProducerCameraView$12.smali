.class Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->emptyPictureCallback()Landroid/hardware/Camera$PictureCallback;
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$12;->this$0:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 0

    return-void
.end method
