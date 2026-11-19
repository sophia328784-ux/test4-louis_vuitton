.class Lnet/rtccloud/sdk/DataChannelModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/DataChannelModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rtccloud/sdk/DataChannelModule;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/DataChannelModule;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {v0}, Lnet/rtccloud/sdk/DataChannelModule;->d(Lnet/rtccloud/sdk/DataChannelModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {v0}, Lnet/rtccloud/sdk/DataChannelModule;->a(Lnet/rtccloud/sdk/DataChannelModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/rtccloud/sdk/a;

    invoke-direct {v1, p0}, Lnet/rtccloud/sdk/a;-><init>(Lnet/rtccloud/sdk/DataChannelModule$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/rtccloud/sdk/DataChannelModule;->f()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {v1}, Lnet/rtccloud/sdk/DataChannelModule;->b(Lnet/rtccloud/sdk/DataChannelModule;)Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v0

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    if-nez v0, :cond_1

    invoke-static {v1}, Lnet/rtccloud/sdk/DataChannelModule;->c(Lnet/rtccloud/sdk/DataChannelModule;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_1
    invoke-static {v1}, Lnet/rtccloud/sdk/DataChannelModule;->b(Lnet/rtccloud/sdk/DataChannelModule;)Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-static {}, Lnet/rtccloud/sdk/DataChannelModule;->f()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    iget-object v2, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {v2}, Lnet/rtccloud/sdk/DataChannelModule;->b(Lnet/rtccloud/sdk/DataChannelModule;)Lnet/rtccloud/sdk/Rtcc;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {p0}, Lnet/rtccloud/sdk/DataChannelModule;->c(Lnet/rtccloud/sdk/DataChannelModule;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void

    :cond_2
    invoke-static {}, Lnet/rtccloud/sdk/DataChannelModule;->f()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v1, v0, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    if-nez v0, :cond_3

    invoke-static {v1}, Lnet/rtccloud/sdk/DataChannelModule;->a(Lnet/rtccloud/sdk/DataChannelModule;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    invoke-static {v1}, Lnet/rtccloud/sdk/DataChannelModule;->e(Lnet/rtccloud/sdk/DataChannelModule;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule$1;->this$0:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/DataChannelModule;->sendInBand(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
