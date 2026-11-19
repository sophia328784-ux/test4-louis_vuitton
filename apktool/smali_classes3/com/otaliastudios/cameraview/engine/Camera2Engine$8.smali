.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/otaliastudios/cameraview/PictureResult$Stub;

.field public final synthetic b:Lcom/otaliastudios/cameraview/engine/Camera2Engine;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->b:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->a:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->b:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-boolean v0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->y:Z

    iget-object p0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->a:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-virtual {v1, p0}, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->g0(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/otaliastudios/cameraview/engine/CameraBaseEngine;->y:Z

    return-void
.end method
