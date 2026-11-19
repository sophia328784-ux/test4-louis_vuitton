.class public Lcom/batch/android/o/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchEventAttributes;",
            ">;)",
            "Lcom/batch/android/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/BatchEventAttributes;

    .line 46
    invoke-static {v1}, Lcom/batch/android/o/c;->b(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/batch/android/o/c;->b(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getTags()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "tags"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/BatchEventAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/o/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/batch/android/o/f;->b:Lcom/batch/android/l1/a;

    invoke-virtual {v1}, Lcom/batch/android/l1/a;->b()C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/batch/android/o/c$a;->a:[I

    iget-object v4, v2, Lcom/batch/android/o/f;->b:Lcom/batch/android/l1/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v2, v2, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/batch/android/json/JSONArray;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v3, v2}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/batch/android/o/c;->a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    check-cast v2, Lcom/batch/android/BatchEventAttributes;

    invoke-static {v2}, Lcom/batch/android/o/c;->b(Lcom/batch/android/BatchEventAttributes;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lcom/batch/android/o/f;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method
