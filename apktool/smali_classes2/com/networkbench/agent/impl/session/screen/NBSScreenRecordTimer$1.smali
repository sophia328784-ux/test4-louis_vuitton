.class Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmapDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->SCREEN_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->getShotController(Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;)Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->doShot(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSScreenRecordTimer  storeBitmapDelay has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
