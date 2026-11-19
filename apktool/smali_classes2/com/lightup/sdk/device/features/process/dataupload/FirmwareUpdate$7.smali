.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->error(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

.field final synthetic val$firmwareUpdateError:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    iput-object p2, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;->val$firmwareUpdateError:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->f(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    move-result-object v0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$7;->val$firmwareUpdateError:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;

    invoke-virtual {v0, p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onError(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateError;)V

    return-void
.end method
