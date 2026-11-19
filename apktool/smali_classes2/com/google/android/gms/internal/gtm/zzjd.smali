.class final Lcom/google/android/gms/internal/gtm/zzjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzjb;


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/gtm/zzjh;
    .locals 5

    if-eqz p1, :cond_7

    array-length p0, p1

    if-eqz p0, :cond_6

    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "runtime"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzkb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzkb;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkb;->a:Ljava/util/ArrayList;

    const-string v3, "resource"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    check-cast p1, Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move p1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zziv;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzdh;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkd;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzkd;-><init>(Ljava/util/List;)V

    :goto_1
    if-eqz p0, :cond_4

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzjh;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v2, v0, v1, p0}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    return-object p1

    :cond_5
    :try_start_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Resource map not found"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Cannot parse a 0 length byte[]"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/gtm/zziu;

    const-string p1, "Cannot parse a null byte[]"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Ljava/lang/String;)V

    throw p0
.end method
