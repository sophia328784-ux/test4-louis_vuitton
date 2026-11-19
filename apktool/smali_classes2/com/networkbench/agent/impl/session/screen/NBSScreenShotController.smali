.class public Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSScreenShotController"

.field protected static final controllersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;",
            "Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected lastShotTime:J

.field private shotThresold:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->controllersMap:Ljava/util/Map;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->SCREEN_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    new-instance v2, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->GESTURE_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    new-instance v2, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->shotThresold:I

    :cond_0
    return-void
.end method

.method public static getShotController(Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;)Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->controllersMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;

    return-object p0
.end method


# virtual methods
.method public doShot(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
    .locals 5

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    const/4 v1, 0x0

    const-string v2, "NBSScreenShotController"

    if-nez v0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->isReplayCanCollecion()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "replay can not collection"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->isOverShotThresold(J)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "current shot time is small than thresold : 300ms , skip shot screen"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->lastShotTime:J

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->realShot(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " doShot error  isRecord_enabled : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isOverShotThresold(J)Z
    .locals 4

    iget v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->shotThresold:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->lastShotTime:J

    sub-long/2addr p1, v2

    int-to-long v2, v0

    cmp-long p0, p1, v2

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public realShot(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;
    .locals 1

    const-string p0, "NBSScreenShotController"

    const-string v0, "do shot begin"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmap(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    move-result-object p0

    return-object p0
.end method
