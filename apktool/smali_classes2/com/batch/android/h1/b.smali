.class public Lcom/batch/android/h1/b;
.super Lcom/batch/android/h1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/h1/e;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/batch/android/g1/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/h1/b;->c()Lcom/batch/android/g1/b;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/batch/android/g1/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/g1/b;

    invoke-virtual {p0}, Lcom/batch/android/h1/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/g1/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v2, "trid"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/g1/b;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/g1/b;->a(J)V

    :cond_1
    iget-object v1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v2, "project_key"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->hasNonNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/batch/android/g1/b;->a(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
