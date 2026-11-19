.class public Lcom/batch/android/i1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/batch/android/w/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/batch/android/w/b;

    invoke-direct {v0}, Lcom/batch/android/w/b;-><init>()V

    iput-object v0, p0, Lcom/batch/android/i1/a;->a:Lcom/batch/android/w/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/batch/android/json/JSONArray;
    .locals 0
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

    .line 82
    iget-object p0, p0, Lcom/batch/android/i1/a;->a:Lcom/batch/android/w/b;

    invoke-virtual {p0, p1}, Lcom/batch/android/w/b;->b(Ljava/util/List;)Lcom/batch/android/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/g1/c$b;)Lcom/batch/android/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/batch/android/g1/c$b;->a()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {p1}, Lcom/batch/android/g1/c$b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/batch/android/g1/c$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/g1/c$b$a;

    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/batch/android/g1/c$b$a;->b()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "views"

    invoke-virtual {v2, v4, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1}, Lcom/batch/android/g1/c$b$a;->a()Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "duration"

    invoke-virtual {v2, v3, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "time"

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/batch/android/g1/c;)Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 83
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/batch/android/g1/e;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 85
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/batch/android/i1/a;->a:Lcom/batch/android/w/b;

    invoke-virtual {p1}, Lcom/batch/android/g1/c;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/batch/android/w/b;->b(Ljava/util/List;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    .line 87
    const-string v2, "campaigns"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 88
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->g()Lcom/batch/android/g1/c$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "campaigns_version"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 89
    invoke-virtual {p1}, Lcom/batch/android/g1/c;->e()Lcom/batch/android/g1/c$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/i1/a;->a(Lcom/batch/android/g1/c$b;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    .line 90
    const-string p1, "cappings"

    invoke-virtual {v1, p1, p0}, Lcom/batch/android/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v1

    .line 91
    :cond_0
    const-string p0, "Cannot serialize an empty campaigns list"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0

    .line 92
    :cond_1
    const-string p0, "Cannot serialize a null response"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-object v0
.end method
