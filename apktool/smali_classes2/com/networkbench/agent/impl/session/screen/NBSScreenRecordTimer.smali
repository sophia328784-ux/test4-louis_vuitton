.class public Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSScreenRecordTimer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static storeBitmap(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    invoke-direct {v0, p0, p1, p2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;-><init>(JLcom/networkbench/agent/impl/g/a/h;)V

    invoke-virtual {v0, p3}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->setSessionID(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordingUtil;->getScreenRecordBitmap(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    return-object v0
.end method

.method public static storeBitmapDelay(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storeBitmapDelay   delayTime :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSScreenRecordTimer"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer$1;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer$1;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
