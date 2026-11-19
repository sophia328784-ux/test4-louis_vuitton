.class public Lcom/networkbench/agent/impl/data/c;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/data/AnomalousData;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getStacktrace()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c;->b(Lcom/networkbench/com/google/gson/JsonArray;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/data/c;->a(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getImageUuid()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c;->c(Lcom/networkbench/com/google/gson/JsonArray;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getBuildId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->getAllStacktrace()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/c;->a(Lcom/networkbench/com/google/gson/JsonArray;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    const-string v0, "threadId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 1

    .line 11
    const-string v0, "allStackTrace"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 10
    const-string v0, "uuid"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 1

    const-string v0, "stackTrace"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 6
    const-string v0, "threadName"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 1

    .line 6
    const-string v0, "imageUuid"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "buildId"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
