.class Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine$2;->this$0:Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/engine/CameraEngine;->z()V

    return-void
.end method
