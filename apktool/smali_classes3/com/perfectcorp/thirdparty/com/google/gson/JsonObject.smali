.class public final Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;
.super Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->q()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void
.end method

.method public final q()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-object p0
.end method
