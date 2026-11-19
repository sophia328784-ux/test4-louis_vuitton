.class public Lcom/networkbench/agent/impl/data/AnomalousData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/networkbench/com/google/gson/JsonArray;

.field private b:Lcom/networkbench/com/google/gson/JsonArray;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/networkbench/com/google/gson/JsonArray;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->h:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method


# virtual methods
.method public getAllStacktrace()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->type:Ljava/lang/String;

    const-string v1, "ANR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->a:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->b:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUuid()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->h:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public getStacktrace()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->a:Lcom/networkbench/com/google/gson/JsonArray;

    return-object p0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->f:J

    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setAllStacktrace(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->b:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->g:Ljava/lang/String;

    return-void
.end method

.method public setImageUuid(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->h:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method public setStacktrace(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->a:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method public setThreadId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->f:J

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->e:Ljava/lang/String;

    return-void
.end method

.method public setThrowable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "Crash"

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->type:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "ANR"

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->type:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/AnomalousData;->d:Ljava/lang/String;

    return-void
.end method
