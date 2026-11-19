.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->progress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

.field final synthetic val$progress:D


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    iput-wide p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->f(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    move-result-object v0

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;

    iget-wide v2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->val$progress:D

    iget-object v4, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v4}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->d(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result v4

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$3;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->g(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)I

    move-result p0

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;-><init>(DII)V

    invoke-virtual {v0, v1}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onProgress(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener$Progress;)V

    return-void
.end method
