.class final Lcom/google/android/gms/internal/gtm/zzjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzjb;


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/gtm/zzjh;
    .locals 14

    const-string p0, "macros"

    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzjt;->b:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzjt;->a:Ljava/util/ArrayList;

    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/gtm/zzjt;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "instance_name"

    if-ge v7, v8, :cond_0

    :try_start_1
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "tags"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/gtm/zziv;->d(Lorg/json/JSONArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "predicates"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/gtm/zziv;->d(Lorg/json/JSONArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/gtm/zziv;->d(Lorg/json/JSONArray;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzjx;

    iget-object v8, v5, Lcom/google/android/gms/internal/gtm/zzjx;->a:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzkg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzkg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "rules"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move v0, v6

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v4, v7}, Lcom/google/android/gms/internal/gtm/zziv;->b(Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/gtm/zzka;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v11, Lcom/google/android/gms/internal/gtm/zzju;

    iget-object p0, v1, Lcom/google/android/gms/internal/gtm/zzjt;->c:Ljava/lang/String;

    invoke-direct {v11, v3, v2, p0, v6}, Lcom/google/android/gms/internal/gtm/zzju;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzje;->b:Lcom/google/android/gms/internal/gtm/zzjb;

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzjd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzjd;->a([B)Lcom/google/android/gms/internal/gtm/zzjh;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzjh;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzjg;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/gtm/zzjg;-><init>(Lcom/google/android/gms/internal/gtm/zzit;[BLcom/google/android/gms/internal/gtm/zzju;J)V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->e:Lcom/google/android/gms/internal/gtm/zzkd;

    invoke-direct {p1, v0, v6, v8, p0}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    return-object p1

    :cond_3
    :try_start_2
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Resource map not found"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "The resource data is invalid. The container cannot be extracted from the JSON data"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "The resource data is corrupted. The container cannot be extracted from the JSON data"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Cannot parse a 0 length byte[]"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Cannot parse a null byte[]"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0
.end method
