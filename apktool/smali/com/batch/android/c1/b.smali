.class public Lcom/batch/android/c1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "email"

.field private static final b:Ljava/lang/String; = "email_marketing"

.field private static final c:Ljava/lang/String; = "phone_number"

.field private static final d:Ljava/lang/String; = "sms_marketing"

.field private static final e:Ljava/lang/String; = "language"

.field private static final f:Ljava/lang/String; = "region"

.field private static final g:Ljava/lang/String; = "custom_attributes"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/c1/d;)Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 242
    invoke-virtual {p0}, Lcom/batch/android/c1/d;->a()Ljava/util/List;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lcom/batch/android/c1/d;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-virtual {p0}, Lcom/batch/android/c1/d;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "$add"

    invoke-virtual {v0, v3, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    if-eqz v2, :cond_1

    .line 246
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-virtual {p0}, Lcom/batch/android/c1/d;->b()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string p0, "$remove"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/batch/android/c1/e;)Lcom/batch/android/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/c1/e;->b()Lcom/batch/android/c1/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/c1/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->e()Lcom/batch/android/c1/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/batch/android/c1/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "phone_number"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->d()Lcom/batch/android/c1/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/batch/android/c1/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->f()Lcom/batch/android/c1/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/batch/android/c1/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->c()Lcom/batch/android/BatchEmailSubscriptionState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/batch/android/c1/e;->c()Lcom/batch/android/BatchEmailSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email_marketing"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->g()Lcom/batch/android/BatchSMSSubscriptionState;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/batch/android/c1/e;->g()Lcom/batch/android/BatchSMSSubscriptionState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms_marketing"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_5
    invoke-virtual {p0}, Lcom/batch/android/c1/e;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/batch/android/l1/d;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/batch/android/json/JSONArray;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Lcom/batch/android/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/batch/android/c1/d;

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/c1/d;

    invoke-static {v2}, Lcom/batch/android/c1/b;->a(Lcom/batch/android/c1/d;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object v2, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_9
    const-string p0, "custom_attributes"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_a
    return-object v0
.end method
