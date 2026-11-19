.class public abstract Lcom/batch/android/a/d;
.super Lcom/batch/android/e/o0;
.source "SourceFile"


# static fields
.field private static final o:Ljava/lang/String; = "BatchWebservice"


# instance fields
.field protected m:I

.field protected n:Lcom/batch/android/e/q0;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {p4}, Lcom/batch/android/e/o0;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/e/o0;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/batch/android/a/d;->m:I

    invoke-direct {p0}, Lcom/batch/android/a/d;->G()V

    return-void
.end method

.method private G()V
    .locals 8

    const-string v0, "BatchWebservice"

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/a/d;->H()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/c0;->a(Landroid/content/Context;)Lcom/batch/android/h/c;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/batch/android/h/c;->a(Ljava/lang/String;)Lcom/batch/android/h/a;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/batch/android/h/a;->b()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5, v6}, Lcom/batch/android/e/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find parameter value for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    :goto_3
    return-void

    :goto_4
    const-string v1, "Error while building property parameters"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 124
    :try_start_0
    invoke-static {}, Lcom/batch/android/h/b;->e()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {}, Lcom/batch/android/h/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 127
    const-string v0, "BatchWebservice"

    const-string v1, "Error while building Accept Language header"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "com.batch.android/3.1.1 "

    const-string v1, " "

    :try_start_0
    invoke-static {p0}, Lcom/batch/android/h/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/batch/android/h/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/batch/android/h/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/batch/android/h/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/batch/android/h/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/batch/android/h/b;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BatchWebservice"

    const-string v1, "Error while building User Agent header"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract H()Ljava/lang/String;
.end method

.method public a(Lcom/batch/android/e/q0;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/batch/android/e/o0;->a(Lcom/batch/android/e/q0;)V

    .line 122
    iget v0, p0, Lcom/batch/android/a/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/a/d;->m:I

    .line 123
    iput-object p1, p0, Lcom/batch/android/a/d;->n:Lcom/batch/android/e/q0;

    return-void
.end method

.method public a(Lcom/batch/android/json/JSONObject;)V
    .locals 8

    const-string v0, "BatchWebservice"

    const-string v1, "s"

    const-string v2, "parameters"

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_2

    :try_start_1
    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {v4, v5}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    invoke-virtual {v4, v6}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v1}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_1
    iget-object v7, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v7}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading parameter #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Error while reading parameters into WS response"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    const-string p0, "Null body json"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/batch/android/e/o0;->b()V

    .line 119
    iget-object v0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v2, "UserAgent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v2, "x-UserAgent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    const-string v2, "Accept-Language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    iget v0, p0, Lcom/batch/android/a/d;->m:I

    if-lez v0, :cond_2

    .line 125
    iget-object p0, p0, Lcom/batch/android/e/o0;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-RetryCount"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public w()Lcom/batch/android/b1/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/g<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "BatchWebservice"

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/a/n;->b(Landroid/content/Context;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    :try_start_0
    const-string v3, "ids"

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error while adding ids object to global post params"

    invoke-static {v0, v3, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v2, "rc"

    iget v3, p0, Lcom/batch/android/a/d;->m:I

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    iget-object v2, p0, Lcom/batch/android/a/d;->n:Lcom/batch/android/e/q0;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v3, "cause"

    iget-object v4, p0, Lcom/batch/android/a/d;->n:Lcom/batch/android/e/q0;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string v3, "lastFail"

    invoke-virtual {v1, v3, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Error while adding retry count data to global post params"

    invoke-static {v0, v3, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/batch/android/v0/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/batch/android/v0/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    new-instance v5, Lcom/batch/android/json/JSONObject;

    invoke-direct {v5}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ula"

    invoke-virtual {v5, v6, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ure"

    invoke-virtual {v5, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_3
    const-string v3, "upv"

    iget-object p0, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/batch/android/v0/l;->e(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    const-string p0, "upr"

    invoke-virtual {v1, p0, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :goto_3
    const-string v2, "Error while adding upr to body"

    invoke-static {v0, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    new-instance p0, Lcom/batch/android/b1/b;

    invoke-direct {p0, v1}, Lcom/batch/android/b1/b;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-object p0
.end method
