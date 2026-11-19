.class public Lcom/networkbench/agent/impl/harvest/HarvestSoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/HarvestDataSend;


# instance fields
.field private final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public static sendData([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/j/e;->a([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sendDataInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/harvest/d/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/d/b;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->sendData([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/e;->c([B)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    if-nez p0, :cond_1

    const-string p0, "success"

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V

    const-string p0, "error"

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendDataInfo error"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public sendConnect(Lcom/networkbench/agent/impl/harvest/ConnectInformation;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 5

    const-string v0, "init mobile agent response code :"

    const-string v1, "init mobile agent  :"

    :try_start_0
    new-instance v2, Lcom/networkbench/agent/impl/harvest/d/b;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/harvest/d/b;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->asSocketJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "sign="

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, v3}, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->sendData([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/networkbench/agent/impl/j/e;->c([B)I

    move-result v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestSoc;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(I)V

    if-nez v1, :cond_0

    const-string p0, "success"

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/j/e;->d([B)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;-><init>()V

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->reconfigurePb(Lorg/json/JSONObject;)V

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    return-object v2

    :cond_0
    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V

    const-string p0, "error"

    invoke-virtual {v2, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "HarvestSoc sendConnect has  an error  : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setSocketInfo(Lcom/networkbench/agent/impl/harvest/d/c;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object p0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/m;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
