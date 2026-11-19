.class Lcom/linkplay/core/group/LPMultiroomManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->checkoutJoinResult(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field running:Z

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

.field final synthetic val$source:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$startTime:J

.field final synthetic val$target:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;JLcom/linkplay/core/group/LPMultiroomListener;Lcom/linkplay/core/device/LPDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    iput-wide p3, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$startTime:J

    iput-object p5, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    iput-object p6, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$target:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->running:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v0}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$source:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1, v0}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->running:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-static {}, Lcom/linkplay/core/group/LPMultiroomManager;->i()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "LPMultiroomManager join group time out"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$5;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "time out"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/group/LPMultiroomManager$5$1;

    invoke-direct {v2, p0}, Lcom/linkplay/core/group/LPMultiroomManager$5$1;-><init>(Lcom/linkplay/core/group/LPMultiroomManager$5;)V

    invoke-virtual {v1, v0, v2}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
