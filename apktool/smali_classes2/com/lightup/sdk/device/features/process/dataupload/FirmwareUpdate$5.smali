.class Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->linkBackUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$5;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate$5;->this$0:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;->f(Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdate;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateListener;->onLinkBackUp()V

    return-void
.end method
