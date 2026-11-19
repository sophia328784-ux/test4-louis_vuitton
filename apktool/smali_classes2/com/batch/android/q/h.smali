.class public Lcom/batch/android/q/h;
.super Lcom/batch/android/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final u:Ljava/lang/String; = "InboxSyncWebserviceClient"


# instance fields
.field private final p:J

.field private final q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/q/b;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/batch/android/b1/a;

.field private final t:Lcom/batch/android/n1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/q/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Lcom/batch/android/n1/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/q/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/batch/android/q/b;",
            ">;",
            "Lcom/batch/android/n1/c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->c:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/batch/android/q/a;->c()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/batch/android/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p4, p0, Lcom/batch/android/q/h;->q:Ljava/lang/String;

    iput-wide p7, p0, Lcom/batch/android/q/h;->p:J

    iput-object p9, p0, Lcom/batch/android/q/h;->r:Ljava/util/List;

    new-instance p1, Lcom/batch/android/b1/a;

    invoke-direct {p1, p9}, Lcom/batch/android/b1/a;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/batch/android/q/h;->s:Lcom/batch/android/b1/a;

    iput-object p10, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    if-eqz p6, :cond_0

    const-string p1, "from"

    invoke-virtual {p0, p1, p6}, Lcom/batch/android/e/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {p0, p2, p1}, Lcom/batch/android/e/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/i;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/q/k;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/batch/android/q/i;

    invoke-direct {v0}, Lcom/batch/android/q/i;-><init>()V

    const-string v1, "hasMore"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/batch/android/q/i;->a:Z

    const-string v1, "timeout"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/batch/android/q/i;->b:Z

    const-string v1, "cursor"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/q/i;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, v0, Lcom/batch/android/q/i;->c:Ljava/lang/String;

    :cond_0
    const-string v1, "cache"

    invoke-virtual {p1, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v4, "lastMarkAllAsRead"

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v6

    iget-wide v7, p0, Lcom/batch/android/q/h;->p:J

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/batch/android/q/d;->a(JJ)I

    :cond_1
    const-string v4, "delete"

    invoke-virtual {v1, v4}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_0
    invoke-virtual {v1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v1, v5}, Lcom/batch/android/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/batch/android/q/d;->a(Ljava/util/List;)Z

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "notifications"

    invoke-virtual {p1, v4}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {p1, v3}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "InboxSyncWebserviceClient"

    if-eqz v5, :cond_7

    :try_start_1
    move-object v5, v4

    check-cast v5, Lcom/batch/android/json/JSONObject;

    const-string v7, "notificationId"

    invoke-virtual {v5, v7, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-direct {p0, v5}, Lcom/batch/android/q/h;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v5, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v5

    check-cast v4, Lcom/batch/android/json/JSONObject;

    iget-wide v6, p0, Lcom/batch/android/q/h;->p:J

    invoke-virtual {v5, v4, v6, v7}, Lcom/batch/android/q/d;->a(Lcom/batch/android/json/JSONObject;J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_5
    :try_start_2
    check-cast v4, Lcom/batch/android/json/JSONObject;

    invoke-static {v4}, Lcom/batch/android/q/e;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/g;

    move-result-object v4

    iget-object v7, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v7}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v7

    iget-wide v8, p0, Lcom/batch/android/q/h;->p:J

    invoke-virtual {v7, v4, v8, v9}, Lcom/batch/android/q/d;->a(Lcom/batch/android/q/g;J)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/batch/android/q/k; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "Failed to parse notification content, skipping."

    invoke-static {v6, v5, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Json element doesn\'t have an id in notification array, skipping. Found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid json element found in notification array, skipping. Found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object p1, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object p1

    iget-wide v2, p0, Lcom/batch/android/q/h;->p:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/batch/android/q/d;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/batch/android/q/i;->d:Ljava/util/List;
    :try_end_3
    .catch Lcom/batch/android/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/batch/android/q/k;

    const-string v0, "Missing key or invalid value type in response JSON"

    invoke-direct {p1, v0, p0}, Lcom/batch/android/q/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 309
    iget-object p0, p0, Lcom/batch/android/q/h;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/q/b;

    .line 310
    iget-object v0, v0, Lcom/batch/android/q/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.connect.timeout"

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.read.timeout"

    return-object p0
.end method

.method public C()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.retry"

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.pattern"

    return-object p0
.end method

.method public H()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "Batch/inboxsyncwsc"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public r()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/q/h;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/batch/android/q/h;->q:Ljava/lang/String;

    const-string v1, "X-CustomID-Auth"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public run()V
    .locals 4

    const-string v0, "Inbox sync failed: "

    const-string v1, "InboxSyncWebserviceClient"

    const-string v2, "Starting inbox sync ("

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->h()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/e/o0;->l()Lcom/batch/android/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    invoke-direct {p0, v2}, Lcom/batch/android/q/h;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/i;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/batch/android/n1/c;->a(Lcom/batch/android/q/i;)V
    :try_end_0
    .catch Lcom/batch/android/e/o0$d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/q/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :goto_0
    const-string v2, "Inbox response parsing failed: "

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    const-string v0, "Internal webservice call error - code 30"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :goto_1
    invoke-static {v1, v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    const-string v0, "Internal webservice call error - code 20"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-static {v1, v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/e/o0$d$a;->i:Lcom/batch/android/e/o0$d$a;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    const-string v0, "Inbox API call error: Unauthorized. Please make sure that the hexadecimal HMAC for that custom ID is valid. (code 11)"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/e/o0$d$a;->j:Lcom/batch/android/e/o0$d$a;

    iget-object p0, p0, Lcom/batch/android/q/h;->t:Lcom/batch/android/n1/c;

    if-ne v0, v1, :cond_1

    const-string v0, "Inbox API call error: Batch SDK has been globally Opted Out."

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v0, "Internal webservice call error - code 10"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.postcryptor.type"

    return-object p0
.end method

.method public w()Lcom/batch/android/b1/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/b1/g<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/q/h;->s:Lcom/batch/android/b1/a;

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.readcryptor.type"

    return-object p0
.end method
