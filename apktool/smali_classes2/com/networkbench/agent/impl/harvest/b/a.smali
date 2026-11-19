.class public Lcom/networkbench/agent/impl/harvest/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "customError"

.field public static b:Ljava/lang/String; = "crash"

.field public static c:Ljava/lang/String; = "customAction"

.field public static d:Ljava/lang/String; = "isIntDcSucceed"

.field protected static e:Lcom/networkbench/agent/impl/harvest/b/a; = null

.field private static final g:Ljava/lang/String; = "NBSInitState"


# instance fields
.field protected f:Lcom/networkbench/agent/impl/util/k;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/harvest/b/a;

    new-instance v1, Lcom/networkbench/agent/impl/util/aa;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/util/aa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/harvest/b/a;-><init>(Lcom/networkbench/agent/impl/util/k;)V

    sput-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->e:Lcom/networkbench/agent/impl/harvest/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/util/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/b/a;->h:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/b/a;->f:Lcom/networkbench/agent/impl/util/k;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/harvest/b/a;
    .locals 1

    .line 25
    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->e:Lcom/networkbench/agent/impl/harvest/b/a;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBS_Init_State_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;IZ)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/b/a;->f:Lcom/networkbench/agent/impl/util/k;

    if-eqz p3, :cond_0

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/util/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/util/k;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "NBSInitState"

    :try_start_0
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/b/a;->h:Z

    if-nez v1, :cond_0

    const-string p0, "SDK\u5df2\u7ecfinit\u6210\u529f\u4e86, \u4e0d\u518d\u4fee\u6539\u5d29\u6e83\u6587\u4ef6"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string p1, "error putValueInSp"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/b/a;->f:Lcom/networkbench/agent/impl/util/k;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/util/k;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/b/a;->f:Lcom/networkbench/agent/impl/util/k;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/networkbench/agent/impl/util/k;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/b/a;->f:Lcom/networkbench/agent/impl/util/k;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/util/k;->a(Z)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/b/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->b(Ljava/lang/String;IZ)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->oldFeatures:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getFeature()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/b/a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
