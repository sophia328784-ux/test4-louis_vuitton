.class public Lcom/networkbench/agent/impl/crash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Lcom/networkbench/com/google/gson/JsonObject;

.field private c:Lcom/networkbench/agent/impl/crash/h;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/a;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/a;->c:Lcom/networkbench/agent/impl/crash/h;

    iput-object p3, p0, Lcom/networkbench/agent/impl/crash/a;->d:Ljava/lang/String;

    iput p4, p0, Lcom/networkbench/agent/impl/crash/a;->e:I

    iput-object p5, p0, Lcom/networkbench/agent/impl/crash/a;->f:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "error in param in error runnable"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "crash report status code:"

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a;->a:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/networkbench/agent/impl/crash/a;->e:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v3

    const-string v4, "token="

    invoke-static {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->sendDataInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/crash/a;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/d/c;->i()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/d/c;->i()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    :try_start_1
    const-string v0, "start to delete store crash"

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/a;->c:Lcom/networkbench/agent/impl/crash/h;

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/crash/h;->b(Ljava/lang/String;)V

    const-string v0, "report crash success ,crash has been delete"

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/crash/a;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvester()Lcom/networkbench/agent/impl/harvest/Harvester;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->sendForgeUserActionItemPb(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/networkbench/agent/impl/crash/a;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "delete Crash occor an Exception,delete all store Crash"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/a;->c:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/crash/h;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/crash/a;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "crash report thread occur Exception"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
