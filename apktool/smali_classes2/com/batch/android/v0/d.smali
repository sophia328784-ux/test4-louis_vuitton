.class public Lcom/batch/android/v0/d;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "DataCollection"


# instance fields
.field private final a:Lcom/batch/android/BatchDataCollectionConfig;

.field private b:Lcom/batch/android/BatchDataCollectionConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    new-instance v0, Lcom/batch/android/BatchDataCollectionConfig;

    invoke-direct {v0}, Lcom/batch/android/BatchDataCollectionConfig;-><init>()V

    iput-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/batch/android/BatchDataCollectionConfig;)V
    .locals 2

    .line 319
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 320
    :try_start_0
    const-string v0, "geoip"

    invoke-virtual {p2}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 321
    const-string v0, "deviceBrand"

    invoke-virtual {p2}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 322
    const-string v0, "deviceModel"

    invoke-virtual {p2}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 323
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const-string p2, "data.privacy.config"

    .line 324
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 325
    const-string p1, "DataCollection"

    const-string p2, "Persisting data collection config has failed"

    invoke-static {p1, p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/batch/android/BatchDataCollectionConfig;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DataCollection"

    if-nez v0, :cond_0

    const-string v0, "Context not available yet, caching config"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/batch/android/v0/d;->b:Lcom/batch/android/BatchDataCollectionConfig;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-static {p1, v2}, Lcom/batch/android/m1/a;->a(Lcom/batch/android/BatchDataCollectionConfig;Lcom/batch/android/BatchDataCollectionConfig;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "No change detected for data collection config."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/batch/android/v0/d;->b:Lcom/batch/android/BatchDataCollectionConfig;

    return-void

    :cond_1
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/batch/android/n/c0;->a(Landroid/content/Context;)Lcom/batch/android/h/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-virtual {v5}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "geoip_resolution"

    invoke-virtual {v1, v5, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-virtual {v5}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v5

    if-eq v4, v5, :cond_4

    sget-object v4, Lcom/batch/android/h/d;->h:Lcom/batch/android/h/d;

    iget-object v4, v4, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/batch/android/h/c;->a(Ljava/lang/String;)Lcom/batch/android/h/a;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/batch/android/h/a;->a(Z)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/batch/android/h/a;->a()Lcom/batch/android/h/d;

    move-result-object v4

    iget-object v4, v4, Lcom/batch/android/h/d;->c:Ljava/lang/String;

    sget-object v5, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/batch/android/h/a;->a()Lcom/batch/android/h/d;

    move-result-object v5

    iget-object v5, v5, Lcom/batch/android/h/d;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/batch/android/h/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-virtual {v5}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v5

    if-eq v4, v5, :cond_6

    sget-object v4, Lcom/batch/android/h/d;->j:Lcom/batch/android/h/d;

    iget-object v4, v4, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/batch/android/h/c;->a(Ljava/lang/String;)Lcom/batch/android/h/a;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/batch/android/h/a;->a(Z)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/batch/android/h/a;->a()Lcom/batch/android/h/d;

    move-result-object v2

    iget-object v2, v2, Lcom/batch/android/h/d;->c:Ljava/lang/String;

    sget-object v4, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/batch/android/h/a;->a()Lcom/batch/android/h/d;

    move-result-object v4

    iget-object v4, v4, Lcom/batch/android/h/d;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/batch/android/h/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lcom/batch/android/v0/d;->a(Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceBrandEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceBrandEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    :cond_7
    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isDeviceModelEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceModelEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    :cond_8
    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/batch/android/BatchDataCollectionConfig;->isGeoIpEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/batch/android/BatchDataCollectionConfig;->setGeoIPEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    :cond_9
    iget-object p1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-direct {p0, v0, p1}, Lcom/batch/android/v0/d;->a(Landroid/content/Context;Lcom/batch/android/BatchDataCollectionConfig;)V

    iput-object v3, p0, Lcom/batch/android/v0/d;->b:Lcom/batch/android/BatchDataCollectionConfig;

    return-void
.end method

.method private a(Lcom/batch/android/json/JSONObject;)V
    .locals 1

    .line 318
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    const-string v0, "_NATIVE_DATA_CHANGED"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/batch/android/v0/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    const-string v0, "data.privacy.config"

    invoke-virtual {p1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    const-string v1, "geoip"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/batch/android/BatchDataCollectionConfig;->setGeoIPEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    iget-object p1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    const-string v1, "deviceBrand"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceBrandEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    iget-object p1, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    const-string v1, "deviceModel"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceModelEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DataCollection"

    const-string v1, "Loading data collection config has failed"

    invoke-static {v0, v1, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/batch/android/v0/d;->k()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/v0/d;->k()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/batch/android/n/c0;->a(Landroid/content/Context;)Lcom/batch/android/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/h/c;->b()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/h/e;

    invoke-virtual {v1}, Lcom/batch/android/h/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/h/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v1, "DataCollection"

    if-nez p1, :cond_2

    const-string p1, "Some native data has changed, sending it."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/batch/android/h/b;->a(Ljava/util/List;)Lcom/batch/android/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/v0/d;->a(Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Some natives data has changed but the serialization failed."

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-string p0, "No native detection change"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/batch/android/v0/d;Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/batch/android/v0/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static j()Lcom/batch/android/v0/d;
    .locals 1

    new-instance v0, Lcom/batch/android/v0/d;

    invoke-direct {v0}, Lcom/batch/android/v0/d;-><init>()V

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/batch/android/BatchDataCollectionConfig;->setGeoIPEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    iget-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-virtual {v0, v1}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceBrandEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    iget-object p0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-virtual {p0, v1}, Lcom/batch/android/BatchDataCollectionConfig;->setDeviceModelEnabled(Z)Lcom/batch/android/BatchDataCollectionConfig;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Lcom/batch/android/v0/b;->a(Landroid/content/Context;)V

    .line 311
    iget-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    monitor-enter v0

    .line 312
    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/v0/d;->c(Landroid/content/Context;)V

    .line 313
    iget-object p1, p0, Lcom/batch/android/v0/d;->b:Lcom/batch/android/BatchDataCollectionConfig;

    if-eqz p1, :cond_0

    .line 314
    const-string p1, "DataCollection"

    const-string v1, "Cached data config found, trying to send changes"

    invoke-static {p1, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :try_start_1
    iget-object p1, p0, Lcom/batch/android/v0/d;->b:Lcom/batch/android/BatchDataCollectionConfig;

    invoke-direct {p0, p1}, Lcom/batch/android/v0/d;->a(Lcom/batch/android/BatchDataCollectionConfig;)V
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 316
    :try_start_2
    const-string p1, "DataCollection"

    const-string v1, "Failed sending data collection changed event"

    invoke-static {p1, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Lcom/batch/android/BatchDataCollectionConfig$Editor;)V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    monitor-enter v0

    .line 304
    :try_start_0
    new-instance v1, Lcom/batch/android/BatchDataCollectionConfig;

    invoke-direct {v1}, Lcom/batch/android/BatchDataCollectionConfig;-><init>()V

    .line 305
    invoke-interface {p1, v1}, Lcom/batch/android/BatchDataCollectionConfig$Editor;->edit(Lcom/batch/android/BatchDataCollectionConfig;)V

    .line 306
    const-string p1, "DataCollection"

    const-string v2, "Updating automatic data collection configuration: "

    invoke-virtual {v1}, Lcom/batch/android/BatchDataCollectionConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    invoke-direct {p0, v1}, Lcom/batch/android/v0/d;->a(Lcom/batch/android/BatchDataCollectionConfig;)V
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 308
    :try_start_2
    const-string p1, "DataCollection"

    const-string v1, "Failed sending data collection changed event"

    invoke-static {p1, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 4

    invoke-super {p0}, Lcom/batch/android/v0/b;->b()V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v1

    new-instance v2, Lw21;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v0, v3}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "datacollection"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Lcom/batch/android/BatchDataCollectionConfig;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/v0/d;->a:Lcom/batch/android/BatchDataCollectionConfig;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
