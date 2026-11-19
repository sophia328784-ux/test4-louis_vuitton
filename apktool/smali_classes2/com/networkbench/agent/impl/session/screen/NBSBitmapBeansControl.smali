.class public Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSBitmapBeansControl"

.field private static instance:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;


# instance fields
.field bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

.field isRecordEnabled:Z

.field private lastBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;",
            ">;"
        }
    .end annotation
.end field

.field point:Landroid/graphics/Point;

.field private sessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

.field sessionID:Ljava/lang/String;

.field sessionIdleTime:I

.field volatile sessionLastRecordTime:J

.field video_ID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->map:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->point:Landroid/graphics/Point;

    const/16 v0, 0x258

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionIdleTime:I

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->isRecordEnabled:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->initNBSBitmapBeansControl()V

    return-void
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->instance:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    if-nez v0, :cond_1

    const-class v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->instance:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;-><init>(Z)V

    sput-object v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->instance:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->instance:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    return-object v0
.end method

.method private initNBSBitmapBeansControl()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    if-nez v0, :cond_0

    const-string p0, "NBSBitmapBeansControl"

    const-string v0, "error get sessionConfig error"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->point:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->setPointXy(Landroid/graphics/Point;)V

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->video_ID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionLastRecordTime:J

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->point:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->video_ID:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->g()Lcom/networkbench/agent/impl/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/n;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->setSessionIdleTime(I)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->map:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isSessionNew()Z
    .locals 6

    iget v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionIdleTime:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionLastRecordTime:J

    sub-long/2addr v2, v4

    iget p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionIdleTime:I

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private setPointXy(Landroid/graphics/Point;)V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->map:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->saveData(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    return-object p0
.end method

.method public getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionConfig:Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getSessionIdRefresh()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSessionIdRefresh happened currentSessionId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSBitmapBeansControl"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->isSessionNew()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->startNextSession(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startNextSession newSessionId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionLastRecordTime:J

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public saveData(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "ReplayData"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->getSendData(Z)[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    array-length v0, v1

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    const/high16 v6, 0x100000

    mul-int/2addr v0, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->session_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->map:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-object v2, v3

    :catchall_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public setLastBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->lastBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    return-void
.end method

.method public setSessionIdleTime(I)V
    .locals 1

    if-nez p1, :cond_0

    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionIdleTime:I

    :cond_0
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionIdleTime:I

    return-void
.end method

.method public startNextSession(Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->lastBean:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->copyNBSBitmapBean()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;->bitMapPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v6

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;

    const-string v2, "NBSBitmapBeansControl_startNextSession"

    const-string v3, "NBSBitmapBeansControl"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl$1;-><init>(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;)V

    invoke-virtual {v6, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionLastRecordTime:J

    new-instance p0, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    iget-object v0, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->point:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    iget-object v4, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->video_ID:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    iget-object v0, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->map:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, v1, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->bitmapBeans:Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->addBitmapBean(Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;)V

    :cond_2
    return-void
.end method
