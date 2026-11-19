.class public Lcom/networkbench/agent/impl/data/type/h;
.super Lcom/networkbench/agent/impl/data/b/a;
.source "SourceFile"


# instance fields
.field protected final e:Ljava/lang/String;

.field protected f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/b/a;-><init>()V

    const-string v0, "AppStartDatas"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/h;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "appStarts"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->b:Ljava/lang/String;

    const-string v0, "starts"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->c:Ljava/lang/String;

    const-string v0, "appStart"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/b/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/networkbench/agent/impl/data/b/a;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/data/type/h$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/data/type/h$1;-><init>(Lcom/networkbench/agent/impl/data/type/h;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p0, "AppStartDatas"

    const-string v0, "is sending, skip to send launch data"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/b/a;->checkData()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/b/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
