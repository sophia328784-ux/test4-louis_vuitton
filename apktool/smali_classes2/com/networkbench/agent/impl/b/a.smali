.class public Lcom/networkbench/agent/impl/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/networkbench/agent/impl/crash/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/networkbench/agent/impl/j/d;

.field private g:Ljava/lang/String;

.field private h:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

.field private i:Lcom/networkbench/agent/impl/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/a;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/b/a;->c:Lcom/networkbench/agent/impl/crash/h;

    iput-object p3, p0, Lcom/networkbench/agent/impl/b/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/networkbench/agent/impl/b/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/networkbench/agent/impl/b/a;->f:Lcom/networkbench/agent/impl/j/d;

    iput-object p6, p0, Lcom/networkbench/agent/impl/b/a;->g:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/a;->h:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    return-void

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "error param in anrSender"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a()V
    .locals 3

    const-string v0, "deleteStoreInfo--- userActionId : "

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a;->c:Lcom/networkbench/agent/impl/crash/h;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/a;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/crash/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a;->f:Lcom/networkbench/agent/impl/j/d;

    sget-object v2, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/b/a;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/b/a;->i:Lcom/networkbench/agent/impl/k/b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/a;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a;->i:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendForgeUserActionItemHttp(Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/a;->c:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/crash/h;->d()V

    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/k/b;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/networkbench/agent/impl/b/a;->i:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "harvestResponse  code  : "

    const-string v1, "harvestResponse : "

    const-string v2, "send type: "

    :try_start_0
    sget-object v3, Lcom/networkbench/agent/impl/harvest/a/r;->f:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v4, Lcom/networkbench/agent/impl/j/d;->e:Lcom/networkbench/agent/impl/j/d;

    iget-object v5, p0, Lcom/networkbench/agent/impl/b/a;->f:Lcom/networkbench/agent/impl/j/d;

    if-ne v4, v5, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/harvest/a/r;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", content: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/a;->h:Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;

    iget-object v4, p0, Lcom/networkbench/agent/impl/b/a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/networkbench/agent/impl/b/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->Q()Z

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->a()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/networkbench/agent/impl/NBSAppAgent;->disableTimeUnit(Ljava/util/concurrent/TimeUnit;J)V

    :cond_1
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "harvestResponse.isOK()"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/a;->a()V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v3, 0x1d0

    if-eq v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v3, 0x1cc

    if-eq v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v1

    iget v1, v1, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v3, 0x1ce

    if-ne v1, v3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/b/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method
