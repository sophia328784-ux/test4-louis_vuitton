.class public Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSGestureDetector"


# instance fields
.field frameID:Ljava/lang/String;

.field gesture:Lcom/networkbench/agent/impl/g/a/h;

.field public scale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/networkbench/agent/impl/g/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->frameID:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->gesture:Lcom/networkbench/agent/impl/g/a/h;

    return-void
.end method

.method private getPathArray(Ljava/util/ArrayList;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSActionPath;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;

    new-instance v2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    iget-wide v5, v1, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->time:J

    invoke-virtual {v4, v5, v6}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "time"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, v1, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->x:F

    iget v5, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->scale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "x"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, v1, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->y:F

    iget v4, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->scale:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "y"

    invoke-virtual {v2, v1, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->gesture:Lcom/networkbench/agent/impl/g/a/h;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->frameID:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "frameId"

    invoke-virtual {v1, v3, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->gesture:Lcom/networkbench/agent/impl/g/a/h;

    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->reTranslationScreenData(Lcom/networkbench/agent/impl/g/a/h;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->getPathArray(Ljava/util/ArrayList;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    const-string v4, "path"

    invoke-virtual {v1, v4, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->gesture:Lcom/networkbench/agent/impl/g/a/h;

    iget-object v2, v2, Lcom/networkbench/agent/impl/g/a/d;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v5, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v6, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->frameID:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->gesture:Lcom/networkbench/agent/impl/g/a/h;

    iget-object v5, v5, Lcom/networkbench/agent/impl/g/a/d;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/g/a/h;

    invoke-virtual {p0, v5}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->reTranslationScreenData(Lcom/networkbench/agent/impl/g/a/h;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/session/screen/NBSScreenActionData;->getPathArray(Ljava/util/ArrayList;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public reTranslationScreenData(Lcom/networkbench/agent/impl/g/a/h;)Ljava/util/ArrayList;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/h;->e()Ljava/util/LinkedList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;

    new-instance v2, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;

    invoke-direct {v2, v1}, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;-><init>(Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
