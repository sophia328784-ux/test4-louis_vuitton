.class public Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSNetworkCallbackManager"

.field public static instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;


# instance fields
.field private enableNetworkContentRecord:Z

.field private requestBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

.field private requestHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

.field private respBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

.field private respHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->enableNetworkContentRecord:Z

    return-void
.end method


# virtual methods
.method public headerToJsonObj(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public invokeRequestBodyCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;->processBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    return-object v0

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    return-object v0

    :cond_4
    return-object p2
.end method

.method public invokeRequestHeaderCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;->processHeaderMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->headerToJsonObj(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method public invokeRespBodyCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;->processBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    return-object v0

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    return-object v0

    :cond_4
    return-object p2
.end method

.method public invokeRespHeaderCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;->processHeaderMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->headerToJsonObj(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    return-object p0
.end method

.method public isEnableNetworkContentRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->enableNetworkContentRecord:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestBodyCallbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRequestHeaderCallbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRespBodyCallbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRespHeaderCallbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEnableNetworkContentRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->enableNetworkContentRecord:Z

    return-void
.end method

.method public setRequestBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    return-void
.end method

.method public setRequestHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->requestHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    return-void
.end method

.method public setRespBodyCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respBodyCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkBody;

    return-void
.end method

.method public setRespHeaderCallback(Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->respHeaderCallback:Lcom/networkbench/agent/impl/instrumentation/callback/INBSNetworkHeader;

    return-void
.end method
