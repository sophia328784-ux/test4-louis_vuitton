.class public Lcom/batch/android/h1/c;
.super Lcom/batch/android/h1/e;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "LocalCampaignsResponseDeserializer"


# instance fields
.field private final b:Lcom/batch/android/w/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/h1/e;-><init>(Lcom/batch/android/json/JSONObject;)V

    new-instance p1, Lcom/batch/android/w/a;

    invoke-direct {p1}, Lcom/batch/android/w/a;-><init>()V

    iput-object p1, p0, Lcom/batch/android/h1/c;->b:Lcom/batch/android/w/a;

    return-void
.end method

.method private a(Lcom/batch/android/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/batch/android/g1/c$b$a;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    const-string v3, "views"

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v1, v4, v2}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/batch/android/g1/c$b$a;

    invoke-direct {v2, v3, v1}, Lcom/batch/android/g1/c$b$a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "LocalCampaignsResponseDeserializer"

    const-string v3, "An error occurred while parsing an In-App TimeBasedCapping. Skipping."

    invoke-static {v2, v3, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p0, v2

    :cond_2
    return-object p0
.end method

.method private f()Lcom/batch/android/g1/c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/batch/android/g1/c$a;

    invoke-direct {v0}, Lcom/batch/android/g1/c$a;-><init>()V

    iget-object p0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batch/android/g1/c$a;->a(I)V

    :cond_0
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/batch/android/g1/c$a;->a(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/batch/android/g1/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/batch/android/h1/c;->c()Lcom/batch/android/g1/c;

    move-result-object p0

    return-object p0
.end method

.method public a(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/batch/android/t/b;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v1, "campaigns"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/batch/android/h1/c;->b:Lcom/batch/android/w/a;

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/w/a;->a(Lcom/batch/android/json/JSONArray;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/batch/android/g1/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/batch/android/g1/c;

    invoke-virtual {p0}, Lcom/batch/android/h1/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batch/android/h1/c;->e()Lcom/batch/android/g1/c$c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/batch/android/g1/c;-><init>(Ljava/lang/String;Lcom/batch/android/g1/c$c;)V

    invoke-direct {p0}, Lcom/batch/android/h1/c;->f()Lcom/batch/android/g1/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/g1/c;->a(Lcom/batch/android/g1/c$a;)V

    invoke-virtual {v0}, Lcom/batch/android/g1/c;->g()Lcom/batch/android/g1/c$c;

    move-result-object v1

    sget-object v2, Lcom/batch/android/g1/c$c;->c:Lcom/batch/android/g1/c$c;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v3, "campaigns"

    invoke-virtual {v2, v3}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/h1/c;->b:Lcom/batch/android/w/a;

    invoke-virtual {v3, v2, v1}, Lcom/batch/android/w/a;->a(Lcom/batch/android/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/g1/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/batch/android/h1/c;->d()Lcom/batch/android/g1/c$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/batch/android/g1/c;->a(Lcom/batch/android/g1/c$b;)V

    return-object v0

    :cond_1
    const-string p0, "Cannot deserialize a null json object"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Lcom/batch/android/g1/c$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "cappings"

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    const-string v2, "session"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v0, v3}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/h1/c;->a(Lcom/batch/android/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    :cond_0
    new-instance p0, Lcom/batch/android/g1/c$b;

    invoke-direct {p0, v2, v1}, Lcom/batch/android/g1/c$b;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    return-object p0

    :cond_1
    return-object v1
.end method

.method public e()Lcom/batch/android/g1/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "campaigns_version"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/g1/c$c;->valueOf(Ljava/lang/String;)Lcom/batch/android/g1/c$c;

    move-result-object p0

    return-object p0
.end method
