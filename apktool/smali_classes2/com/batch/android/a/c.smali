.class abstract Lcom/batch/android/a/c;
.super Lcom/batch/android/a/d;
.source "SourceFile"


# static fields
.field private static final r:Ljava/lang/String; = "BatchQueryWebservice"


# instance fields
.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/f1/e;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/g1/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/a/c;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/g1/e;

    invoke-virtual {v0}, Lcom/batch/android/g1/e;->b()Lcom/batch/android/f1/f;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/batch/android/f1/e;
    .locals 2

    .line 190
    iget-object p0, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/f1/e;

    .line 191
    invoke-virtual {v0}, Lcom/batch/android/f1/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Lcom/batch/android/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "queries"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/a/c;->q:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/batch/android/a/c;->b(Ljava/lang/String;)Lcom/batch/android/f1/e;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/batch/android/a/c$a;->a:[I

    invoke-virtual {v3}, Lcom/batch/android/f1/e;->d()Lcom/batch/android/f1/f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    new-instance v2, Lcom/batch/android/h1/c;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/c;-><init>(Lcom/batch/android/json/JSONObject;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :pswitch_1
    new-instance v2, Lcom/batch/android/h1/a;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/a;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lcom/batch/android/h1/b;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/b;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :pswitch_3
    new-instance v2, Lcom/batch/android/h1/d;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/d;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :pswitch_4
    new-instance v2, Lcom/batch/android/h1/g;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/g;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :pswitch_5
    new-instance v2, Lcom/batch/android/h1/f;

    invoke-direct {v2, v1}, Lcom/batch/android/h1/f;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Lcom/batch/android/h1/e;->a()Lcom/batch/android/g1/e;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/a/c;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Unable to find query with ID "

    invoke-static {p0, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of queries and responses mismatch("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " queries / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " responses)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "Missing queries attribute in response"

    invoke-static {p0}, La61;->o(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract I()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/f1/e;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Class;Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/batch/android/g1/e;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/batch/android/f1/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 27
    iget-object p1, p0, Lcom/batch/android/a/c;->q:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 28
    invoke-direct {p0, p2}, Lcom/batch/android/a/c;->a(Lcom/batch/android/f1/f;)Lcom/batch/android/g1/e;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object p0

    .line 29
    :cond_1
    const-string p0, "You forgot to call parseResponse method"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Lcom/batch/android/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/batch/android/a/d;->a(Lcom/batch/android/json/JSONObject;)V

    invoke-direct {p0, p1}, Lcom/batch/android/a/c;->b(Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public w()Lcom/batch/android/b1/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/g<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/a/d;->w()Lcom/batch/android/b1/g;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/batch/android/b1/g;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/json/JSONObject;

    :goto_0
    iget-object v1, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/a/c;->I()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Cannot create a WS without any query"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    :try_start_0
    new-instance v1, Lcom/batch/android/json/JSONArray;

    invoke-direct {v1}, Lcom/batch/android/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/batch/android/a/c;->p:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/f1/e;

    invoke-virtual {v2}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    const-string p0, "queries"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v1, "BatchQueryWebservice"

    const-string v2, "Error while adding queries to WS body"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance p0, Lcom/batch/android/b1/b;

    invoke-direct {p0, v0}, Lcom/batch/android/b1/b;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-object p0
.end method
