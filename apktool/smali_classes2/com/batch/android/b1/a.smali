.class public Lcom/batch/android/b1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/b1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/batch/android/b1/g<",
        "Lcom/batch/android/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "InboxSyncPostDataProvider"


# instance fields
.field private final a:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/batch/android/q/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/batch/android/b1/a;->a:Lcom/batch/android/json/JSONObject;

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONArray;

    invoke-direct {v0}, Lcom/batch/android/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/q/b;

    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    const-string v3, "notificationId"

    iget-object v4, v1, Lcom/batch/android/q/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    const-string v3, "read"

    iget-boolean v1, v1, Lcom/batch/android/q/b;->b:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/b1/a;->a:Lcom/batch/android/json/JSONObject;

    const-string p1, "notifications"

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InboxSyncPostDataProvider"

    const-string v0, "Could not create post data"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/a;->a:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public g()[B
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/a;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/b1/a;->a()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    const-string p0, "application/json"

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/a;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method
