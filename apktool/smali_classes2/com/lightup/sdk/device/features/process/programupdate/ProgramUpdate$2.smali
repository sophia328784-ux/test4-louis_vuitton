.class Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->handleUpdateError([B)Lcom/lightup/sdk/device/model/device/DeviceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;


# direct methods
.method public constructor <init>(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$2;->this$0:Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-object p0, p0, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate$2;->this$0:Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;

    invoke-static {p0}, Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;->b(Lcom/lightup/sdk/device/features/process/programupdate/ProgramUpdate;)V

    return-void
.end method
