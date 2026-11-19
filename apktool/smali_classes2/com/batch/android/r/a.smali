.class public Lcom/batch/android/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/json/JSONArray;Lcom/batch/android/json/JSONArray;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-le v2, v3, :cond_3

    return v1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v1

    :cond_4
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_9

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move v4, v1

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v3, Lcom/batch/android/json/JSONObject;

    if-eqz v6, :cond_5

    instance-of v6, v5, Lcom/batch/android/json/JSONObject;

    if-eqz v6, :cond_5

    move-object v6, v3

    check-cast v6, Lcom/batch/android/json/JSONObject;

    check-cast v5, Lcom/batch/android/json/JSONObject;

    invoke-static {v6, v5}, Lcom/batch/android/r/a;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    instance-of v6, v3, Lcom/batch/android/json/JSONArray;

    if-eqz v6, :cond_6

    instance-of v6, v5, Lcom/batch/android/json/JSONArray;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Lcom/batch/android/json/JSONArray;

    check-cast v5, Lcom/batch/android/json/JSONArray;

    invoke-static {v6, v5}, Lcom/batch/android/r/a;->a(Lcom/batch/android/json/JSONArray;Lcom/batch/android/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    :cond_8
    return v1

    :cond_9
    return v0
.end method

.method public static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    return v1

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    .line 132
    :cond_5
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 133
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/batch/android/json/JSONObject;

    if-eqz v4, :cond_6

    .line 134
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/batch/android/r/a;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)Z

    move-result v3

    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/batch/android/json/JSONArray;

    if-eqz v4, :cond_7

    .line 136
    invoke-virtual {p0, v3}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/batch/android/r/a;->a(Lcom/batch/android/json/JSONArray;Lcom/batch/android/json/JSONArray;)Z

    move-result v3
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    move v3, v1

    :goto_0
    if-nez v3, :cond_4

    :catch_0
    return v1

    :cond_8
    return v0
.end method
