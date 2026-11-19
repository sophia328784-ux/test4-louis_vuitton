.class public Lcom/batch/android/w/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b$c;",
            ">;)",
            "Lcom/batch/android/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/t/b$c;

    .line 318
    invoke-direct {p0, v1}, Lcom/batch/android/w/b;->a(Lcom/batch/android/t/b$c;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/batch/android/t/b$a;)Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 309
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 310
    instance-of v0, p1, Lcom/batch/android/u/c;

    const-string v1, "payload"

    const-string v2, "type"

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "LANDING_CEP"

    invoke-virtual {p0, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 312
    iget-object p1, p1, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object p0

    .line 313
    :cond_0
    instance-of v0, p1, Lcom/batch/android/u/b;

    if-eqz v0, :cond_1

    .line 314
    const-string v0, "LANDING"

    invoke-virtual {p0, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 315
    iget-object p1, p1, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v1, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    return-object p0
.end method

.method private a(Lcom/batch/android/t/b$c;)Lcom/batch/android/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 320
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 321
    invoke-interface {p1}, Lcom/batch/android/t/b$c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 322
    invoke-interface {p1}, Lcom/batch/android/t/b$c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Lcom/batch/android/y/a;

    .line 324
    iget-object v0, p1, Lcom/batch/android/y/a;->a:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 325
    iget-object v0, p1, Lcom/batch/android/y/a;->b:Ljava/lang/String;

    const-string v1, "label"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 326
    iget-object p1, p1, Lcom/batch/android/y/a;->c:Lcom/batch/android/json/JSONObject;

    const-string v0, "attributes"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b;)Lcom/batch/android/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    const-string v2, "campaignId"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "campaignToken"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    iget-object v1, p1, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    const-string v2, "eventData"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "minimumApiLevel"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    iget-object v1, p1, Lcom/batch/android/t/b;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v2, "maximumApiLevel"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    iget v1, p1, Lcom/batch/android/t/b;->d:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "priority"

    invoke-virtual {v0, v3, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget v1, p1, Lcom/batch/android/t/b;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "minDisplayInterval"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget v1, p1, Lcom/batch/android/t/b;->o:I

    const-string v2, "displayDelaySec"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    const-string v2, "userTZ"

    const-string v3, "ts"

    if-eqz v1, :cond_3

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v4, p1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    invoke-virtual {v4}, Lcom/batch/android/i/a;->a()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    iget-object v4, p1, Lcom/batch/android/t/b;->e:Lcom/batch/android/i/a;

    instance-of v4, v4, Lcom/batch/android/i/b;

    invoke-virtual {v1, v2, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    const-string v4, "startDate"

    invoke-virtual {v0, v4, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_3
    iget-object v1, p1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v4, p1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    invoke-virtual {v4}, Lcom/batch/android/i/a;->a()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    iget-object v3, p1, Lcom/batch/android/t/b;->f:Lcom/batch/android/i/a;

    instance-of v3, v3, Lcom/batch/android/i/b;

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    const-string v2, "endDate"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_4
    iget-object v1, p1, Lcom/batch/android/t/b;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v1, p1, Lcom/batch/android/t/b;->h:Ljava/lang/Integer;

    const-string v2, "capping"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_5
    iget-boolean v1, p1, Lcom/batch/android/t/b;->l:Z

    const-string v2, "persist"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->i:Lcom/batch/android/t/b$a;

    invoke-direct {p0, v1}, Lcom/batch/android/w/b;->a(Lcom/batch/android/t/b$a;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->k:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/batch/android/w/b;->a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    const-string v1, "triggers"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object p0, p1, Lcom/batch/android/t/b;->p:Lcom/batch/android/json/JSONObject;

    if-eqz p0, :cond_6

    const-string v1, "customPayload"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_6
    iget-boolean p0, p1, Lcom/batch/android/t/b;->q:Z

    const-string v1, "requireJIT"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    iget-object p0, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    if-eqz p0, :cond_9

    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v1}, Lcom/batch/android/t/c;->i()I

    move-result v1

    const-string v2, "startHour"

    invoke-virtual {p0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v1}, Lcom/batch/android/t/c;->j()I

    move-result v1

    const-string v2, "startMin"

    invoke-virtual {p0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v1}, Lcom/batch/android/t/c;->g()I

    move-result v1

    const-string v2, "endHour"

    invoke-virtual {p0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v1}, Lcom/batch/android/t/c;->h()I

    move-result v1

    const-string v2, "endMin"

    invoke-virtual {p0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {v1}, Lcom/batch/android/t/c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-direct {v1}, Lcom/batch/android/json/JSONArray;-><init>()V

    iget-object p1, p1, Lcom/batch/android/t/b;->n:Lcom/batch/android/t/c;

    invoke-virtual {p1}, Lcom/batch/android/t/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/t/a;

    invoke-virtual {v2}, Lcom/batch/android/t/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONArray;->put(I)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_7
    const-string p1, "quietDaysOfWeek"

    invoke-virtual {p0, p1, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_8
    const-string p1, "quietHours"

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_9
    return-object v0
.end method

.method public b(Ljava/util/List;)Lcom/batch/android/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;)",
            "Lcom/batch/android/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/t/b;

    invoke-virtual {p0, v1}, Lcom/batch/android/w/b;->a(Lcom/batch/android/t/b;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method
