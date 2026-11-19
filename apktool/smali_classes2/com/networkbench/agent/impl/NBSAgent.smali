.class public final Lcom/networkbench/agent/impl/NBSAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VERSION:Ljava/lang/String; = "2.17.7"

.field private static sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->j()V

    return-void
.end method

.method public static getActiveNetworkCarrier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "00000"

    return-object v0
.end method

.method public static getAndClearErrorData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->e()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/harvest/DeviceData;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/DeviceData;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpDataVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.1"

    return-object v0
.end method

.method public static getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    return-object v0
.end method

.method public static getResponseBodyLimit()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    if-nez v0, :cond_0

    const/16 v0, 0x400

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->h()I

    move-result v0

    return v0
.end method

.method public static getSocketDataVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.3"

    return-object v0
.end method

.method public static getStackTraceLimit()I
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    if-nez v0, :cond_0

    const/16 v0, 0x400

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g()I

    move-result v0

    return v0
.end method

.method public static getSystemInfo()Lcom/networkbench/agent/impl/harvest/SystemInfo;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->n()Lcom/networkbench/agent/impl/harvest/SystemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskDataVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.17.7"

    return-object v0
.end method

.method public static isDisabled()Z
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k()Z

    move-result v0

    return v0
.end method

.method public static mergeErrorData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private pokeCanary()V
    .locals 0

    return-void
.end method

.method public static setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V
    .locals 0

    sput-object p0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    return-void
.end method

.method public static start()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a()V

    return-void
.end method

.method public static stop()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/NBSAgent;->sImpl:Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i()V

    return-void
.end method
