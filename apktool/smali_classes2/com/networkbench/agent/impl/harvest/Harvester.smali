.class public Lcom/networkbench/agent/impl/harvest/Harvester;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/NBSUploadDataInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/harvest/Harvester$State;
    }
.end annotation


# static fields
.field private static final FAILECOUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Harvester"

.field private static isSendLocalOOM:Z = false


# instance fields
.field protected a:Z

.field protected b:J

.field c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

.field private countTime:J

.field d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

.field private harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

.field private final harvestListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private isSendSaveDataIng:Z

.field private final isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final log:Lcom/networkbench/agent/impl/c/e;

.field private state:Lcom/networkbench/agent/impl/harvest/Harvester$State;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->UNINITIALIZED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    const-wide/16 v2, 0x3c

    iput-wide v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->b:J

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendSaveDataIng:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->countTime:J

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/harvest/Harvester;)Lcom/networkbench/agent/impl/c/e;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/harvest/Harvester;Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->extractedPlugin(Lcom/networkbench/agent/impl/data/c/a;)V

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 46
    sput-boolean p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendLocalOOM:Z

    return p0
.end method

.method private changeState(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "connect success"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/a;->c()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/g;->a()Lcom/networkbench/agent/impl/crash/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/g;->b()V

    invoke-static {}, Lcom/networkbench/agent/impl/b/m;->a()Lcom/networkbench/agent/impl/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/m;->b()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendPluginTask()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendLocalOOMJsonFiles()V

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisconnected()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->a:Z

    return-void
.end method

.method private checkCountTime(J)V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aJ()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p1, Lcom/networkbench/agent/impl/socket/r;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->countTime:J

    :cond_0
    return-void
.end method

.method private configureHarvester(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 3

    const-string v0, "configureHarvester NBSSessionConfig : "

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->reconfigure(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getNbsSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object p1

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getFeature()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/r;->d(I)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-static {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->setHarvestConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configureHarvester has error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private varargs convertHarvestableArrayToString([Lcom/networkbench/agent/impl/harvest/type/Harvestable;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/networkbench/agent/impl/harvest/type/Harvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private expireBlockAttachNetwork()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expireBlockAttachNetwork begin block size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Harvester"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/b/k;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/k;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private extracted([B)V
    .locals 9

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
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

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/File;)J

    move-result-wide v2

    array-length v0, p1

    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    const/high16 v6, 0x100000

    mul-int/2addr v0, v6

    int-to-long v7, v0

    cmp-long v0, v4, v7

    const/4 v4, 0x0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    mul-int/2addr v0, v6

    int-to-long v7, v0

    cmp-long v0, v2, v7

    if-lez v0, :cond_3

    :goto_0
    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/io/File;)J

    move-result-wide v2

    array-length v0, p1

    int-to-long v7, v0

    add-long/2addr v2, v7

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayCacheSize:I

    mul-int/2addr v0, v6

    int-to-long v7, v0

    cmp-long v0, v2, v7

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v2, Lcom/networkbench/agent/impl/harvest/Harvester$3;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/harvest/Harvester$3;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object v0, v0, v4

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    array-length v0, p1

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-gez v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    new-instance v5, Lcom/networkbench/agent/impl/harvest/Harvester$4;

    invoke-direct {v5, p0}, Lcom/networkbench/agent/impl/harvest/Harvester$4;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    aget-object v0, v0, v4

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendReplayData save error  oldSize :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendReplayData save error , space is full  !!!! , delete file :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_6
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReplayData save  path   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p0, 0x1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v4

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->b([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-object v1, v2

    :catchall_1
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v1, p0, v4

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->b([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :goto_2
    return-void
.end method

.method private extractedPlugin(Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/data/c/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->registerOnTaskConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "startSchele has an error : "

    invoke-interface {p0, v0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private fireOnHarvest()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestBefore()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestBefore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestComplete()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestConnected()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestDeviceIdError()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestDeviceIdError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestDisabled()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestDisconnected()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestError()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestFilter()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestFinalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestSendFailed()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestSendFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestStart()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private fireOnHarvestStop()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;->onHarvestStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private formatSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "04"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendLocalOOM:Z

    return v0
.end method

.method private getBatchDataString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getBatchDataCommonData()Lcom/networkbench/agent/impl/harvest/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/a/a/a;->formatInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-static {v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingBatchData(Lcom/networkbench/agent/impl/harvest/HarvestData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBatchDataString has error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private getBatchOldDataString()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getBatchDataCommonData()Lcom/networkbench/agent/impl/harvest/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/a/a/a;->formatInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getHistoryData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->getOldData(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private getHarvestListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getHistoryData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PLUGIN_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->ACTION_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4, v1, v3}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PAGE_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4, v1, v3}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->TRANSACTIONSPAN_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4, v1, v3}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->APPHOTSTART_DATA_STORE_PATH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4, v1, v3}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/32 v3, 0x19000

    invoke-static {v1, v3, v4}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->sendSaveCustomData(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHistoryData has error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private getOldData(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BATCH_DATA_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingOldBatchData(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOldData has error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private isInitMobileAgentInvoke()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getApplicationToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInitNetwork()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->W()Z

    const/4 p0, 0x0

    return p0
.end method

.method private isRespSuccess(Lcom/networkbench/agent/impl/harvest/d/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->processError(Lcom/networkbench/agent/impl/harvest/d/c;)V

    :cond_2
    :goto_0
    return v0
.end method

.method private isSessionCertRight(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "isSessionCertRight error"

    invoke-interface {p0, v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private offerAndFilterData()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->d()V

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/k;->a()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestFilter()V

    return-void
.end method

.method private processInitError(Lcom/networkbench/agent/impl/harvest/d/c;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initMobileAgent errorCode is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An unknown error occurred when sent data to the Collector. errorcode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p1

    iget p1, p1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "errorCode:472."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "errorCode:471."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "errorCode:470,Configuration has been overdue."

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "decrypt data failed 465"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "errorCode:463, Invalid device id(did)."

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "invalid data 462"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :pswitch_7
    sget-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    if-nez p1, :cond_2

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:460, Invalid key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:-1,init error so redirect. HarvestConnection.isRedirectSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    sget-boolean p1, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isRedirectSuccess:Z

    if-nez p1, :cond_4

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerOnTaskConfig()V
    .locals 1

    const-string p0, "registerOnTaskConfig  "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    sget-boolean p0, Lcom/networkbench/agent/impl/plugin/f/h;->g:Z

    if-eqz p0, :cond_0

    const-string p0, "registerOnTaskConfig  run"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/plugin/f/g;

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->e:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/g;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    :cond_0
    return-void
.end method

.method private responseDispose(Lcom/networkbench/agent/impl/harvest/d/c;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->processError(Lcom/networkbench/agent/impl/harvest/d/c;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v1, 0x1cc

    if-eq p0, v1, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v1, 0x1ce

    if-eq p0, v1, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v1, 0x1d0

    if-eq p0, v1, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestSendFailed()V

    return v0
.end method

.method private sendBatchOldData()V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getBatchOldDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchData(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x19000

    if-le v0, v2, :cond_0

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getBatchOldDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchData(Ljava/lang/String;)Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendBlockDatas()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendBlockDatas : \u5185\u5b58\u4e2d\u6ca1\u6709\u5361\u987f\u6570\u636e...\u505c\u6b62\u53d1\u9001.."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendBlockDatas  : skipping upload  EnableUpload = false"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendBlockDatas : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v2, v2, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v2, v2, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/b/k;

    invoke-static {}, Lcom/networkbench/agent/impl/b/m;->a()Lcom/networkbench/agent/impl/b/m;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/networkbench/agent/impl/b/m;->b(Lcom/networkbench/agent/impl/b/k;Z)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    iget-object v3, v3, Lcom/networkbench/agent/impl/harvest/HarvestData;->blockInfos:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendData()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ax()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestBefore()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvest()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestFinalize()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->b()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->d()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendSaveData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "Harvester"

    const-string v3, "Harvester sendData has an error"

    invoke-static {v2, v3, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :cond_0
    return-void
.end method

.method private sendLocalOOMJsonFiles()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendLocalOOMJsonFiles  : skipping upload  EnableUpload = false"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/Harvester$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/Harvester$1;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendPluginTask()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendPluginTask skipping upload EnableUpload is false"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/Harvester$2;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/Harvester$2;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendSaveData()V
    .locals 2

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendSaveDataIng:Z

    if-eqz v0, :cond_0

    const-string p0, "\u6b63\u5728\u4e0a\u4f20\u7f13\u5b58\u7684\u6570\u636e, \u6b64\u6b21\u4e0d\u4e0a\u4f20.... "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    if-nez v0, :cond_1

    const-string p0, "harvestConnection == null "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendSaveDataIng:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendSaveReplayData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendSaveDataIng:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendSaveDataIng:Z

    throw v1
.end method

.method private setSM4key()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/h/d;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs stateIn(Lcom/networkbench/agent/impl/harvest/Harvester$State;[Lcom/networkbench/agent/impl/harvest/Harvester$State;)Z
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    if-ne p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V
    .locals 4

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring multiple transition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$6;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    filled-new-array {v0, v1, v2}, [Lcom/networkbench/agent/impl/harvest/Harvester$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->stateIn(Lcom/networkbench/agent/impl/harvest/Harvester$State;[Lcom/networkbench/agent/impl/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_3
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_4
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->UNINITIALIZED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/networkbench/agent/impl/harvest/Harvester$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->stateIn(Lcom/networkbench/agent/impl/harvest/Harvester$State;[Lcom/networkbench/agent/impl/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_6
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->UNINITIALIZED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/networkbench/agent/impl/harvest/Harvester$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->stateIn(Lcom/networkbench/agent/impl/harvest/Harvester$State;[Lcom/networkbench/agent/impl/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_8
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    filled-new-array {v0, v1, p1, v2, v3}, [Lcom/networkbench/agent/impl/harvest/Harvester$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->stateIn(Lcom/networkbench/agent/impl/harvest/Harvester$State;[Lcom/networkbench/agent/impl/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->changeState(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    return-void

    :cond_9
    invoke-static {}, Lr81;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/ConnectInformation;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setConnectInformation(Lcom/networkbench/agent/impl/harvest/ConnectInformation;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->useSsl(Z)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISCONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V

    return-void
.end method

.method public addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "Can\'t add null harvest listener"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isInitMobileAgentInvoke()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping connect call, saved state is available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestConnected()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Three consecutive failures in redirect, stopping polling..."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getRedirectHost()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Unable to connect to the Redirect."

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->k()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setCollectorHost(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->o()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setSoDisable(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/a/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/q;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/q;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v0, :cond_7

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/a/a/e;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sessionCertificate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v2

    iget-object v2, v2, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/harvest/a/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/h/b;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isSessionCertRight(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->setSM4key()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/util/r;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/security/cert/X509Certificate;)V

    sput-object v1, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/z;->a()Lcom/networkbench/agent/impl/util/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/util/z;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sm4 raw value:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/networkbench/agent/impl/harvest/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", secret value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;

    move-result-object v1

    const-string v2, "Harvester"

    if-eqz v1, :cond_4

    const-string v1, "sm2 encrypt log aes key"

    invoke-static {v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/plugin/c/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/networkbench/agent/impl/h/b;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->formatSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "logger is not init ,please check"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/networkbench/agent/impl/util/l;

    const-string v0, "certificate verify error"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/l;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/networkbench/agent/impl/util/l;

    const-string v0, "certificate download config is error"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/l;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Lcom/networkbench/agent/impl/util/m;

    const-string v0, "not find bcprov jar"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V

    return-void

    :cond_8
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public c()V
    .locals 10

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isInitMobileAgentInvoke()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping connect call, saved state is available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestConnected()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Three consecutive failures in initMobileAgent, stopping polling..."

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendConnect()Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "Unable to connect to the Collector."

    invoke-interface {v0, v2}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->q()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "NBSAgent isNeedDisabled disabled"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    return-void

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->processInitError(Lcom/networkbench/agent/impl/harvest/d/c;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDeviceIdError()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getEnabled()I

    move-result v3

    if-eq v3, v1, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAgent disabled"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/harvest/Harvester;->configureHarvester(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestConnected()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/r;->d(Z)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDeviceIdError()V

    return-void

    :cond_5
    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/harvest/Harvester;->configureHarvester(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->c(J)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " setLastConnectedTime : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/networkbench/agent/impl/util/r;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getCrashTrails()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/util/r;->f(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->initCrashActions()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestConnected()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v1, v2

    sput v1, Lcom/networkbench/agent/impl/util/r;->p:I

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isInitNetwork()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->installNetworkMonitor()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/util/r;->e(Z)V

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "--->init network in : initMobileAgent connect end..."

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ae()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->r()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->startSchele(Lcom/networkbench/agent/impl/data/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "extensionGetTaskDefs has error : "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/DeviceData;->oldUserId:Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V

    return-void
.end method

.method public d()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/ai;->a()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->refreshSendState(Z)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->offerAndFilterData()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->getBatchDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchOldData()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->refreshSendState(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/j/e;->a()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBlockDatas()V

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendReplayData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/f/h;->b()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/f/h;->b()V

    throw p0

    :catch_0
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/f/h;->b()V

    return-void
.end method

.method public doDisabledTimeout(J)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->stop()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    return-void
.end method

.method public expireHarvestData()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->countTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->checkCountTime(J)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireHttpErrors()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireHttpTransactions()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireOverLapData()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireBlockAttachNetwork()V

    return-void
.end method

.method public expireHttpErrors()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionAge()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/g;->b()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/data/f;->q()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v2, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->b()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->b()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/f;->b()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/data/g;->b(Lcom/networkbench/agent/impl/data/f;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public expireHttpTransactions()V
    .locals 11

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getActionAge()I

    move-result p0

    int-to-long v5, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->getActionDatas()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v9, v2, v4

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppPhase()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppPhase()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppPhase()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->remove(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public expireOverLapData()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expireOverLapData pageData size is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPageDatas()Lcom/networkbench/agent/impl/data/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/b/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Harvester"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/b/a;->reset()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPageDatas()Lcom/networkbench/agent/impl/data/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/b/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "NBSPageData addAll() has an error : "

    const-string v3, "TingyunSDK_page"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;

    instance-of v4, v1, Lcom/networkbench/agent/impl/data/d/h;

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v1

    check-cast v6, Lcom/networkbench/agent/impl/data/d/h;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/data/d/h;->m()J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x2710

    cmp-long v4, v4, v7

    if-ltz v4, :cond_0

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/data/d/h;->r()V

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/data/d/h;->q()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-virtual {v4, v1}, Lcom/networkbench/agent/impl/data/d/i;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expireOverLapData  successPageDatas : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/i;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getPageDatas()Lcom/networkbench/agent/impl/data/d/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/data/d/i;->a(Ljava/util/List;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/HarvestData;->successPageDatas:Lcom/networkbench/agent/impl/data/d/i;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/data/d/i;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "error overlaps:"

    invoke-interface {p0, v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->a:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireHarvestData()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$6;->a:[I

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->e()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendData()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestBefore()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->c()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->b()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->a()V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/networkbench/agent/impl/util/l; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "certificate is wrong, please check"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "please check if bcprov jar is implementation in build.gradle"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getIsSendState()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public immediatelyInitMobileAgent()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    return-void
.end method

.method public isConnect()Z
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisabled()Z
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnableUpload()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    move-result p0

    return p0
.end method

.method public processError(Lcom/networkbench/agent/impl/harvest/d/c;)V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const-string v1, ""

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An unknown error occurred when sent data to the Collector. errorcode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object p1

    iget p1, p1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "errorCode:472."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "errorCode:471."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "errorCode:470,Configuration has been overdue."

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "decrypt data failed 465"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "errorCode:464,"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "errorCode:463, Invalid device id(did)."

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "invalid data 462"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :pswitch_8
    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->REDIRECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/b;->h()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:460, Invalid key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestDisabled()V

    sget-object p1, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshSendState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/harvest/ActionDatas;->isSendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/crash/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->recoverData()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getHttpErrors()Lcom/networkbench/agent/impl/data/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/g;->d()V

    invoke-static {}, Lcom/networkbench/agent/impl/crash/a/a;->c()Lcom/networkbench/agent/impl/crash/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/a/a;->f()V

    :cond_0
    return-void
.end method

.method public removeHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveHttpData()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->expireOverLapData()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->offerAndFilterData()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->refreshSendState(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getBatchDataCommonData()Lcom/networkbench/agent/impl/harvest/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/a/a/a;->formatInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-static {v2}, Lcom/networkbench/agent/impl/harvest/HarvestDataProcessing;->processingBatchData(Lcom/networkbench/agent/impl/harvest/HarvestData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BATCH_DATA_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->refreshSendState(Z)V

    return-void

    :catchall_0
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->refreshSendState(Z)V

    return-void
.end method

.method public saveReplayData()V
    .locals 2

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_1

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->getSendData(Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->extracted([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendBatchData(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ap()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    if-nez v0, :cond_6

    const-string v0, "begin send sendBatchData"

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->state:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/Harvester$State;->CONNECTED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    if-eq v0, v4, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BATCH_DATA_PATH:Ljava/lang/String;

    invoke-static {p1, v2, v3, p0}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;JLjava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BATCH_DATA_PATH:Ljava/lang/String;

    invoke-static {p1, v2, v3, v0}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "skip sendBatchData, isEnableUpload  =  false"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendData(Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/harvest/d/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->responseDispose(Lcom/networkbench/agent/impl/harvest/d/c;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->BATCH_DATA_PATH:Ljava/lang/String;

    invoke-static {p1, v2, v3, p0}, Lcom/networkbench/agent/impl/m/b;->a(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->ae()Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    sget p1, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/d/c;->r()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->extractedPlugin(Lcom/networkbench/agent/impl/data/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "extensionGetTaskDefs has error : "

    invoke-interface {v0, v1, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "send sendBatchData success"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    const-string p0, "skip sendBatchData, sendBatchData is empty"

    invoke-interface {v2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return v1
.end method

.method public sendBatchDataNoCommonData(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getBatchDataCommonData()Lcom/networkbench/agent/impl/harvest/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/a/a/a;->formatInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchData(Ljava/lang/String;)Z

    return-void
.end method

.method public sendForgeUserActionItemHttp(Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V
    .locals 9

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUI_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/networkbench/agent/impl/crash/d;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/data/a/g;

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->b()Ljava/lang/String;

    move-result-object v7

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/data/a/g;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V

    sget-object p1, Lcom/networkbench/agent/impl/data/a/g$a;->b:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/networkbench/agent/impl/data/a/g;->a(I)V

    invoke-virtual {v3, v1, v2}, Lcom/networkbench/agent/impl/data/a/g;->b(J)V

    new-instance p1, Lcom/networkbench/agent/impl/data/a/i;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/data/a/i;-><init>()V

    invoke-virtual {p1, v3}, Lcom/networkbench/agent/impl/data/a/i;->a(Lcom/networkbench/agent/impl/data/a/g;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/b/a;->formatInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendBatchDataNoCommonData(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v6, p1

    move-object v8, p2

    new-instance v3, Lcom/networkbench/agent/impl/data/a/g;

    const-wide/16 v4, 0x0

    iget-object v7, v8, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/data/a/g;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V

    sget-object p1, Lcom/networkbench/agent/impl/data/a/g$a;->b:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/networkbench/agent/impl/data/a/g;->a(I)V

    invoke-virtual {v3, v1, v2}, Lcom/networkbench/agent/impl/data/a/g;->b(J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/networkbench/agent/impl/data/a/i;->a(Lcom/networkbench/agent/impl/data/a/g;)V

    return-void
.end method

.method public sendForgeUserActionItemPb(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUI_enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/data/a/g;

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/data/a/g;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V

    sget-object p1, Lcom/networkbench/agent/impl/data/a/g$a;->b:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/data/a/g;->a(I)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/data/a/g;->b(J)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/b/a;->reset()V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/data/a/i;->a(Lcom/networkbench/agent/impl/data/a/g;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendPbData(Lcom/networkbench/agent/impl/data/b/a;)V

    return-void
.end method

.method public sendPbData(Lcom/networkbench/agent/impl/data/b/a;)V
    .locals 5

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/b/a;->b()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendPbData, data  size:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/b/a;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/networkbench/agent/impl/harvest/type/Harvestable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->convertHarvestableArrayToString([Lcom/networkbench/agent/impl/harvest/type/Harvestable;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/j/d;->b:Lcom/networkbench/agent/impl/j/d;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/j/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getApplicationToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "token="

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendDataPb(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->responseDispose(Lcom/networkbench/agent/impl/harvest/d/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/b/a;->reset()V

    return-void
.end method

.method public sendReplayData()V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->getSendData(Z)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->extracted([B)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->extracted([B)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendReplayData  replayUploadType==0  , isWifiNetworkAvailable = false  ,  return!  "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendData([B)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/networkbench/agent/impl/harvest/Harvester$State;->DISABLED:Lcom/networkbench/agent/impl/harvest/Harvester$State;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/harvest/Harvester;->transition(Lcom/networkbench/agent/impl/harvest/Harvester$State;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->isRespSuccess(Lcom/networkbench/agent/impl/harvest/d/c;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->extracted([B)V

    :cond_3
    return-void
.end method

.method public sendSaveReplayData()V
    .locals 14

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_8

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionConfig()Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/session/screen/NBSSessionConfig;->replayUploadType:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sendSaveReplayData  replayUploadType==0  , isWifiNetworkAvailable = false  ,  return!  "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_2
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

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_7

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSaveReplayData  childFile path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSaveReplayData  childFile name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",  continue !"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/16 :goto_5

    :cond_4
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v7, 0x400

    :try_start_4
    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    invoke-virtual {v10, v7, v2, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :goto_2
    move-object v7, v8

    goto :goto_6

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_5
    :try_start_5
    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v8, v5, v2

    aput-object v10, v5, v6

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ak;->b([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v10, v7

    goto :goto_2

    :catch_1
    move-exception v10

    move-object v13, v10

    move-object v10, v7

    move-object v7, v13

    goto :goto_3

    :catch_2
    move-exception v9

    move-object v10, v7

    move-object v7, v9

    move-object v9, v10

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v10, v7

    goto :goto_6

    :catch_3
    move-exception v8

    move-object v9, v7

    move-object v10, v9

    move-object v7, v8

    move-object v8, v10

    :goto_3
    :try_start_6
    const-string v11, " sendSaveReplayData error : "

    invoke-static {v11, v7}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v8, v5, v2

    aput-object v10, v5, v6

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/ak;->b([Ljava/io/Closeable;)V

    :goto_4
    if-nez v9, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    invoke-virtual {v6, v5}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendData([B)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/harvest/Harvester;->isRespSuccess(Lcom/networkbench/agent/impl/harvest/d/c;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string p0, "sendReplayData  has an error ,  stop to  send data!!"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :goto_6
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v7, v0, v2

    aput-object v10, v0, v6

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b([Ljava/io/Closeable;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :cond_8
    :goto_7
    return-void
.end method

.method public setConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->configuration:Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    return-void
.end method

.method public setHarvestConnection(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestConnection:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    return-void
.end method

.method public setHarvestData(Lcom/networkbench/agent/impl/harvest/HarvestData;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester;->harvestData:Lcom/networkbench/agent/impl/harvest/HarvestData;

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestStart()V

    return-void
.end method

.method public startSchele(Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 2

    const-string v0, "extensionGetTaskDefs"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/f/h;->a()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/Harvester$5;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/harvest/Harvester$5;-><init>(Lcom/networkbench/agent/impl/harvest/Harvester;Lcom/networkbench/agent/impl/data/c/a;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->fireOnHarvestStop()V

    return-void
.end method
