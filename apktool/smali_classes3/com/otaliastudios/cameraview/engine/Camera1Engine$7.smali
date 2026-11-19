.class Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

.field final synthetic val$old:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera1Engine;Z)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iput-boolean p2, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->val$old:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->this$0:Lcom/otaliastudios/cameraview/engine/Camera1Engine;

    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/engine/Camera1Engine$7;->val$old:Z

    sget v1, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->Z:I

    invoke-virtual {v0, p0}, Lcom/otaliastudios/cameraview/engine/Camera1Engine;->o0(Z)Z

    return-void
.end method
