.class public Lcom/batch/android/b1/c;
.super Lcom/batch/android/b1/b;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "LocalCampaignsJITPostDataProvider"

.field private static final e:Ljava/lang/String; = "ids"

.field private static final f:Ljava/lang/String; = "campaigns"

.field private static final g:Ljava/lang/String; = "attributes"

.field private static final h:Ljava/lang/String; = "views"

.field private static final i:Ljava/lang/String; = "count"

.field private static final j:Ljava/lang/String; = "eligibleCampaigns"


# instance fields
.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/batch/android/g1/c$c;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/batch/android/g1/c$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/batch/android/t/b;",
            ">;",
            "Lcom/batch/android/g1/c$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/b1/b;-><init>()V

    iput-object p1, p0, Lcom/batch/android/b1/c;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/batch/android/b1/c;->c:Lcom/batch/android/g1/c$c;

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 11

    const-string v0, "LocalCampaignsJITPostDataProvider"

    invoke-static {}, Lcom/batch/android/n/f;->a()Lcom/batch/android/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/s/a;->h()Lcom/batch/android/s/e;

    move-result-object v1

    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/batch/android/a/n;->b(Landroid/content/Context;)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/batch/android/v0/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/batch/android/b1/c;->b:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/batch/android/t/b;

    iget-object v8, v8, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/batch/android/json/JSONArray;

    invoke-direct {v7, v6}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lcom/batch/android/json/JSONObject;

    invoke-direct {v8}, Lcom/batch/android/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v9, p0, Lcom/batch/android/b1/c;->c:Lcom/batch/android/g1/c$c;

    sget-object v10, Lcom/batch/android/g1/c$c;->c:Lcom/batch/android/g1/c$c;

    if-ne v9, v10, :cond_2

    invoke-interface {v1, v6, v5}, Lcom/batch/android/s/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_2
    invoke-interface {v1, v6}, Lcom/batch/android/s/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Lcom/batch/android/json/JSONObject;

    invoke-direct {v6}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v9, "count"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/s/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    const-string v5, "Error while serializing view counts"

    invoke-static {v0, v5, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    const-string v5, "Could not get view tracker count"

    invoke-static {v0, v5, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    iget-object p0, p0, Lcom/batch/android/b1/c;->c:Lcom/batch/android/g1/c$c;

    sget-object v1, Lcom/batch/android/g1/c$c;->b:Lcom/batch/android/g1/c$c;

    if-ne p0, v1, :cond_4

    invoke-static {v4}, Lcom/batch/android/n/a0;->a(Landroid/content/Context;)Lcom/batch/android/l1/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/l1/c;->getAttributes()Ljava/util/HashMap;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/batch/android/l1/d;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    :try_start_1
    const-string v1, "attributes"

    new-instance v4, Lcom/batch/android/json/JSONObject;

    invoke-direct {v4, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    const-string v1, "Error while serializing attributes"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    :try_start_2
    const-string p0, "ids"

    invoke-virtual {v2, p0, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p0, "campaigns"

    invoke-virtual {v2, p0, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string p0, "views"

    invoke-virtual {v2, p0, v8}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_8

    :catch_3
    move-exception p0

    const-string v1, "Error while serializing JIT request"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-object v2
.end method

.method public a(Lcom/batch/android/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 216
    const-string p0, "eligibleCampaigns"

    invoke-virtual {p1, p0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    .line 217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public g()[B
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/b1/c;->a()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/b1/c;->a()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
