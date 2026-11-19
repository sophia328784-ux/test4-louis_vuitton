.class abstract Lcom/networkbench/agent/impl/n/d;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field protected b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

.field protected g:Lcom/networkbench/agent/impl/harvest/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/d;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/n/d;->f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    if-nez v1, :cond_1

    .line 150
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/n/d;->f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/n/d;->f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    if-nez v1, :cond_2

    .line 152
    sget-object p0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "flushInternal harvest connection is null and stop!"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v0

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/networkbench/agent/impl/n/d;->e:I

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/d;->f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    .line 154
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getApplicationToken()Ljava/lang/String;

    move-result-object p0

    const-string v3, "token="

    .line 155
    invoke-virtual {v1, p1, v2, p0, v3}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->sendDataPb(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/d/c;->i()I

    move-result p0

    .line 157
    sget-object p1, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send user base data response status code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_4

    .line 158
    const-string p0, "socket error code is 1000, send failed!"

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v0

    .line 159
    :cond_4
    const-string p0, "send success NBSUserBase~~~"

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V
    .locals 2

    .line 146
    sget-object v0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "stop : //////// "

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/networkbench/agent/impl/n/d;->f:Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    .line 148
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->a()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/n/d$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/n/d$1;-><init>(Lcom/networkbench/agent/impl/n/d;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "harvestResponse :"

    iget-object v1, p0, Lcom/networkbench/agent/impl/n/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/n/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/n/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/n/d;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {v5, p1, v6}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v6, 0x1cc

    if-eq v0, v6, :cond_4

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v0

    iget v0, v0, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v5, 0x1ce

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/n/d;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v5, Lcom/networkbench/agent/impl/harvest/a/r;->h:Lcom/networkbench/agent/impl/harvest/a/r;

    if-ne v0, v5, :cond_3

    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->USERACTION_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PROFILE_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1, v3, v4}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/n/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :cond_5
    return v2
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->isConnect()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "sdk \u521d\u59cb\u5316\u8fd8\u6ca1\u6709\u5b8c\u6210,\u6682\u65f6\u4e0d\u4e0a\u4f20userAction\u6570\u636e..."

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "harvestData  send onEvent data : ....."

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    const-string v0, "useraction  harvestData gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "the user action data is empty!"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->g()V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "harvestData  send onEvent data : .....1111"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "harvestData  send onEvent data : return !!"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "harvestData  send onEvent data : .....2222 !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "the user action data is empty!"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->g()V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result v0

    const-string v1, "flushInternal failed"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/n/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->reset()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/n/d;->a(Lcom/networkbench/com/google/gson/JsonObject;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "flushInternal success and reset!"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->reset()V

    return-void
.end method

.method public abstract reset()V
.end method
