.class public Lcom/networkbench/agent/impl/session/Event;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

.field name:Ljava/lang/String;

.field nbsSeriesData:Lcom/networkbench/agent/impl/k/b;

.field session_id:Ljava/lang/String;

.field timestamp:J

.field type:I

.field video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->video_id:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/session/Event;->createEventData(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->video_id:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    .line 34
    :try_start_0
    iput-object p4, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/session/Event;->createEventData(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private addSeriesData(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/k/b;)V
    .locals 1

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v0, p2, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "view_id"

    invoke-virtual {p1, v0, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v0, p2, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "action_id"

    invoke-virtual {p1, v0, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v0, p2, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "view_name"

    invoke-virtual {p1, v0, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v0, p2, Lcom/networkbench/agent/impl/k/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v0, "view_features"

    invoke-virtual {p1, v0, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p2, p2, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "action_features"

    invoke-virtual {p1, p2, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method private createEventData(Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getBitmapBeans()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeans;->getVideoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Event;->video_id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/Event;->timestamp:J

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->name:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/session/Event;->type:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->p()Lcom/networkbench/agent/impl/k/b;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->nbsSeriesData:Lcom/networkbench/agent/impl/k/b;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    new-instance p1, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    new-instance p2, Lcom/networkbench/agent/impl/session/Event$1;

    invoke-direct {p2, p0}, Lcom/networkbench/agent/impl/session/Event$1;-><init>(Lcom/networkbench/agent/impl/session/Event;)V

    invoke-virtual {p2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonObject;

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget p2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_METADATA_LENGTH:I

    if-le p1, p2, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Event;->metaDataOverFlowJsonValue()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    :cond_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sget p2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_METADATA_LENGTH:I

    if-le p1, p2, :cond_2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Event;->metaDataOverFlowJsonValue()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    :cond_2
    return-void
.end method

.method private metaDataOverFlowJsonValue()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v1, "metaData\u7684\u5927\u5c0f\u5927\u4e8e\u6700\u5927\u9650\u5236128K"

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    :try_start_0
    const-string v1, "session_id"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "video_id"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/session/Event;->video_id:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "timestamp"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/session/Event;->timestamp:J

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "name"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/session/Event;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "type"

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/session/Event;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "attributes"

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Event;->nbsSeriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/session/Event;->addSeriesData(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/k/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public checkData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Event;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setSession_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{session_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Event;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', video_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Event;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/Event;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/Event;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Event;->attributesJson:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
