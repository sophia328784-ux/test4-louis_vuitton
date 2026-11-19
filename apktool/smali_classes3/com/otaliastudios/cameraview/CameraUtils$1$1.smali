.class Lcom/otaliastudios/cameraview/CameraUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

.field final synthetic val$result:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/CameraUtils$1;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->val$result:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$callback:Lcom/otaliastudios/cameraview/FileCallback;

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/FileCallback;->j()V

    return-void
.end method
