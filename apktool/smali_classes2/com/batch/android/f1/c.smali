.class public Lcom/batch/android/f1/c;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "LocalCampaignsQuery"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/batch/android/s/a;Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/batch/android/f1/f;->g:Lcom/batch/android/f1/f;

    invoke-direct {p0, p2, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/f1/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/batch/android/s/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/batch/android/s/a;->h()Lcom/batch/android/s/e;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/batch/android/t/b;

    iget-object v3, v3, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/batch/android/s/a;->e()Lcom/batch/android/g1/c$c;

    move-result-object p1

    sget-object v0, Lcom/batch/android/g1/c$c;->c:Lcom/batch/android/g1/c$c;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/batch/android/s/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lcom/batch/android/s/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/batch/android/f1/c;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "LocalCampaignsQuery"

    const-string p1, "View tracker unavailable: can\'t send view counts to the backend."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e()Lcom/batch/android/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/batch/android/f1/c;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v3, v5, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, "views"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
