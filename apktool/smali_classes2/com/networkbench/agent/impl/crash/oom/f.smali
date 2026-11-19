.class public Lcom/networkbench/agent/impl/crash/oom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "OOMSenderRunnable"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

.field private f:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/oom/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/networkbench/agent/impl/crash/oom/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/networkbench/agent/impl/crash/oom/f;->f:Ljava/io/File;

    new-instance p1, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/f;->e:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    return-void

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "error param in anrSender"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/oom/f;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".json"

    const-string v3, ".content"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/f;->f:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "OOMSenderRunnable"

    const-string v1, "harvestResponse  code  : "

    const-string v2, "harvestResponse.isOK(), delete file result is:"

    const-string v3, "send oom content:"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/oom/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/networkbench/agent/impl/util/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/crash/oom/f;->e:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/oom/f;->b:Ljava/lang/String;

    sget-object v5, Lcom/networkbench/agent/impl/harvest/a/r;->f:Lcom/networkbench/agent/impl/harvest/a/r;

    iget-object v6, p0, Lcom/networkbench/agent/impl/crash/oom/f;->c:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/util/r;->Q()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v4

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/networkbench/agent/impl/harvest/Harvester;->doDisabledTimeout(J)V

    :cond_0
    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/f;->a()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/harvest/Harvester;->processError(Lcom/networkbench/agent/impl/harvest/d/c;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v4, 0x1d0

    if-eq v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v4, 0x1cc

    if-eq v2, v4, :cond_2

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v2

    iget v2, v2, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v4, 0x1ce

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/f;->a()Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delete file result is:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
