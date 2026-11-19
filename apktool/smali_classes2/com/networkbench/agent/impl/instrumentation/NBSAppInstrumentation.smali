.class public Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSAppInstrumentation"

.field public static activityTrace:Lcom/networkbench/agent/impl/data/type/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/data/type/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppInstrumentation"

    const-string v2, "error init params"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityCreateBeginIns(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NBSAppInstrumentation"

    const-string v0, "activityCreateBeginIns invoke in parent"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->getActivityName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    const-string v1, "#onCreate"

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->c:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, p0, v1, v2}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->setCurrentActivityName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppInstrumentation  activityCreateBeginIns() has an error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static activityCreateEndIns()V
    .locals 3

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBSAppInstrumentation"

    const-string v1, "activityCreateEndIns invoke in parent"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSAppInstrumentation  activityCreateEndIns() has an error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static activityRestartBeginIns(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NBSAppInstrumentation"

    const-string v0, "activityRestartBeginIns invoke in parent"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->getActivityName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    const-string v1, "#onRestart"

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->f:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, p0, v1, v2}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppInstrumentation  activityRestartBeginIns() has an error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static activityRestartEndIns()V
    .locals 3

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBSAppInstrumentation"

    const-string v1, "activityRestartEndIns invoke in parent"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSAppInstrumentation  activityRestartEndIns() has an error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static activityResumeBeginIns(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "NBSAppInstrumentation"

    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "activityResumeBeginIns invoke in parent"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->getActivityName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->configDecorview(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->setCurrentActivityName(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->e:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v1, "NBSAppInstrumentation activityResumeBeginIns() error"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static activityResumeEndIns()V
    .locals 3

    const-string v0, "NBSAppInstrumentation"

    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "activityResumeEndIns invoke in parent"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "activityResumeEndIns"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/q;->a()Lcom/networkbench/agent/impl/data/type/p;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/f$a;->a:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordTimer;->storeBitmapDelay(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v2, "NBSAppInstrumentation activityResumeEndIns() error"

    invoke-static {v0, v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static activityStartBeginIns(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NBSAppInstrumentation"

    const-string v0, "activityStartBeginIns invoke in parent"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->getActivityName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->d:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/agent/impl/data/type/q;->b(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->setCurrentActivityName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppInstrumentation  activityStartBeginIns() has an error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static activityStartEndIns()V
    .locals 3

    const-string v0, "NBSAppInstrumentation"

    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->isInvokedTwice(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "activityStartEndIns invoke in parent"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/q;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    const-string v2, "NBSAppInstrumentation activityStartEndIns() error"

    invoke-static {v0, v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static activityStop(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static applicationCreateBeginIns()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/b;->c()V

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->registerListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NBSAppInstrumentation"

    const-string v2, "applicationCreateBeginIns has an error"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static applicationCreateEndIns()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ah()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "NBSAppInstrumentation"

    const-string v2, "init oom module in applicationCreateEndIns"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->INSTANCE:Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->initOOMModule()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a:Z

    if-nez v1, :cond_3

    const-string v1, "applicationCreateEndIns application start to registerActivityLifecycleCallbacks"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSAppInstrumentation  applicationCreateEndIns() has an error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static attachBaseContextBeginIns(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/type/b;->a(Landroid/content/Context;)V

    sget-object p0, Lcom/networkbench/agent/impl/util/a;->a:Lcom/networkbench/agent/impl/util/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSAppInstrumentation  attachBaseContextBeginIns() has an error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static attachBaseContextEndIns()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSAppInstrumentation  attachBaseContextEndIns() has an error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static configDecorview(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/i/f;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static getActivityName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isInvokedTwice(I)Z
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ag;->b(I)Z

    move-result p0

    return p0
.end method

.method private static registerListener()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    check-cast v1, Lcom/networkbench/agent/impl/data/type/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Lcom/networkbench/agent/impl/data/type/l;)V

    return-void
.end method

.method public static setCustomPageName(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityTrace:Lcom/networkbench/agent/impl/data/type/q;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCustomPageName  has an  error!!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->i(Ljava/lang/String;)V

    return-void
.end method
