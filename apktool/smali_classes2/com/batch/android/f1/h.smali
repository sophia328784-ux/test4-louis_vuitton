.class public Lcom/batch/android/f1/h;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/batch/android/o/b;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/f1/f;->c:Lcom/batch/android/f1/f;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/batch/android/f1/h;->d:Ljava/util/List;

    return-void

    :cond_0
    const-string p0, "Empty events"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public e()Lcom/batch/android/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    new-instance v2, Lcom/batch/android/json/JSONArray;

    invoke-direct {v2}, Lcom/batch/android/json/JSONArray;-><init>()V

    new-instance v3, Lcom/batch/android/json/JSONArray;

    invoke-direct {v3}, Lcom/batch/android/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/batch/android/f1/h;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/o/b;

    new-instance v5, Lcom/batch/android/json/JSONObject;

    invoke-direct {v5}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lcom/batch/android/o/b;->i()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v4}, Lcom/batch/android/o/b;->a()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4}, Lcom/batch/android/o/b;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v5, v8, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/batch/android/e/o0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "date"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4}, Lcom/batch/android/o/b;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4}, Lcom/batch/android/o/b;->e()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/batch/android/o/b;->e()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/batch/android/e/o0;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sDate"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    invoke-virtual {v4}, Lcom/batch/android/o/b;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/batch/android/json/JSONObject;

    invoke-direct {v7, v6}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    const-string v7, "params"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4}, Lcom/batch/android/o/b;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "session"

    invoke-virtual {v5, v7, v6}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    invoke-virtual {v4}, Lcom/batch/android/o/b;->j()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v5}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    :goto_2
    invoke-virtual {v4}, Lcom/batch/android/o/b;->f()J

    move-result-wide v6

    const-string v4, "ts"

    invoke-virtual {v5, v4, v6, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "new"

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_5
    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_6

    const-string p0, "old"

    invoke-virtual {v1, p0, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_6
    const-string p0, "evts"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
