.class public Lcom/networkbench/agent/impl/harvest/ConnectInformation;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

.field private deviceId:Ljava/lang/String;

.field private deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

.field private final log:Lcom/networkbench/agent/impl/c/e;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->setApplicationInformation(Lcom/networkbench/agent/impl/harvest/ApplicationInformation;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->setDeviceInformation(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->userAgent:Ljava/lang/String;

    return-void
.end method

.method private initUserHeaderValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->notNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->notNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceId:Ljava/lang/String;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceId:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p0, "did"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public asSocketJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceId:Ljava/lang/String;

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "did"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->notNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->notNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "app"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public setApplicationInformation(Lcom/networkbench/agent/impl/harvest/ApplicationInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->applicationInformation:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInformation(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ConnectInformation;->deviceInformation:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    return-void
.end method
