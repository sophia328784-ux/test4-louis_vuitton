.class public Lcom/networkbench/agent/impl/b/i;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:J

.field private b:Lcom/networkbench/agent/impl/harvest/ActionData;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/b/i;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/ActionData;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    iput-wide p2, p0, Lcom/networkbench/agent/impl/b/i;->c:J

    iput-wide p4, p0, Lcom/networkbench/agent/impl/b/i;->a:J

    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTotalTime()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/b/i;->c:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p0, Lcom/networkbench/agent/impl/b/i;->a:J

    iget-wide v5, p0, Lcom/networkbench/agent/impl/b/i;->c:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrlParams()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrlParams()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getRequestMethod()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getIP()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getIP()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_to_dns()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_to_connect()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_first_package()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTime_ssl_handshake()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getBytesSent()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getBytesReceived()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppData()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppDataNew()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/networkbench/agent/impl/b/i;->b:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAppDataNew()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-direct {v2, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/b/i;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ANR NBSANRNetWorkTrace has an error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object v1
.end method
