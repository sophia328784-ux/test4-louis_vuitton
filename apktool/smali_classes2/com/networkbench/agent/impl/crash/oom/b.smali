.class public Lcom/networkbench/agent/impl/crash/oom/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "OOMData"


# instance fields
.field private b:Lcom/networkbench/agent/impl/crash/oom/e;

.field private c:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/crash/oom/e;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/crash/oom/e;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/oom/b;->b:Lcom/networkbench/agent/impl/crash/oom/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/b;->b:Lcom/networkbench/agent/impl/crash/oom/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/oom/e;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method private b()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/b;->c:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->getLeakReferenceChain()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object p0
.end method

.method private c()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/b;->c:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->getBigObjectReference()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/JsonObject;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    .line 47
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 48
    const-string v1, "memory"

    invoke-virtual {v0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 49
    const-string p1, "refs"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/b;->b()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 50
    const-string p1, "bigobject"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/b;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "OOMData"

    :try_start_0
    const-string v1, "configOOMHprofReport begin"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    const-class v2, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    invoke-virtual {v1, p1, v2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/b;->c:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->setSearchReference()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/b;->c:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;->runningInfo:Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$RunningInfo;

    if-nez p0, :cond_0

    const-string p0, "runningInfo == null 222"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p1, "oomJsonParser init error"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/crash/oom/b;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/b;->a(Lcom/networkbench/com/google/gson/JsonObject;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method
