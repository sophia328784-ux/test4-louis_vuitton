.class public Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/PreInitializationInterface;


# static fields
.field public static INSTANCE:Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper; = null

.field private static OOM_JAVA_LEAK_MODULE_CLASS_NAME:Ljava/lang/String; = "com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor"

.field private static OOM_MONITOR_BASE_MODULE_CLASS_NAME:Ljava/lang/String; = "com.networkbench.agent.impl.base.DefaultInitTask"

.field private static final TAG:Ljava/lang/String; = "OOMModuleWrapper"


# instance fields
.field private isInitOOMModule:Z

.field private isOOMModuleExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->INSTANCE:Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->OOM_MONITOR_BASE_MODULE_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->OOM_JAVA_LEAK_MODULE_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isOOMModuleExist:Z

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isInitOOMModule:Z

    return-void
.end method

.method private initJavaMonitorTask()V
    .locals 4

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isOOMModuleExist:Z

    const-string v0, "OOMModuleWrapper"

    if-nez p0, :cond_0

    const-string p0, "oom module is not exist, skip"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "init oom java monitor"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/crash/oom/c;->a:Lcom/networkbench/agent/impl/crash/oom/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/c;->init(Landroid/app/Application;)V

    sget-object p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->INSTANCE:Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;->startLoop(ZZJ)V

    return-void
.end method


# virtual methods
.method public checkUserAgreement()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public execute()V
    .locals 2

    const-string v0, "OOMModuleWrapper"

    const-string v1, "init oom module"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/base/DefaultInitTask;->INSTANCE:Lcom/networkbench/agent/impl/base/DefaultInitTask;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/base/DefaultInitTask;->init(Landroid/app/Application;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->initJavaMonitorTask()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isInitOOMModule:Z

    return-void
.end method

.method public initOOMModule()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isOOMModuleExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "OOMModuleWrapper"

    if-nez v0, :cond_0

    :try_start_1
    const-string p0, "oom module is not exist, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->isInitOOMModule:Z

    if-eqz v0, :cond_1

    const-string p0, "oom module is inited, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->checkUserAgreement()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/oom/OOMModuleWrapper;->execute()V

    return-void

    :cond_2
    const-string p0, "user agreement is not agreed, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
