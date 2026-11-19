.class Lcom/lightup/sdk/device/features/process/LightingUpload$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/LightingUpload;->handleDeadline(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/LightingUpload;

.field final synthetic val$deadline:J

.field final synthetic val$self:Lcom/lightup/sdk/device/features/Feature;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/LightingUpload;JLcom/lightup/sdk/device/features/Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->this$0:Lcom/lightup/sdk/device/features/process/LightingUpload;

    iput-wide p2, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->val$deadline:J

    iput-object p4, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->val$self:Lcom/lightup/sdk/device/features/Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->val$deadline:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :catch_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->val$self:Lcom/lightup/sdk/device/features/Feature;

    invoke-virtual {v0}, Lcom/lightup/sdk/device/features/Feature;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->this$0:Lcom/lightup/sdk/device/features/process/LightingUpload;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->a(Lcom/lightup/sdk/device/features/process/LightingUpload;)Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;

    move-result-object v0

    sget-object v1, Lcom/lightup/sdk/device/enums/DataUploadError;->TimeOut:Lcom/lightup/sdk/device/enums/DataUploadError;

    invoke-interface {v0, v1}, Lcom/lightup/sdk/device/ble/scanner/listeners/DataUploadListener;->onError(Lcom/lightup/sdk/device/enums/DataUploadError;)V

    :cond_2
    iget-object v0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->this$0:Lcom/lightup/sdk/device/features/process/LightingUpload;

    invoke-static {v0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->access$000(Lcom/lightup/sdk/device/features/process/LightingUpload;)V

    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/LightingUpload$1;->this$0:Lcom/lightup/sdk/device/features/process/LightingUpload;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/LightingUpload;->access$100(Lcom/lightup/sdk/device/features/process/LightingUpload;)V

    return-void
.end method
