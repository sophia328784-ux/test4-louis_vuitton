.class Lcom/linkplay/core/clingx/LPSearchControlPoint$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPSearchControlPoint;->startForcegroundTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPSearchControlPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$1;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->isAppOnForeground()Z

    move-result v0

    sput-boolean v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->forceGround:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$1;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->openMultiLock()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint$1;->this$0:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->b(Lcom/linkplay/core/clingx/LPSearchControlPoint;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdac0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->backgroundSleep:Z

    :cond_1
    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->closeMultiLock()V

    return-void
.end method
