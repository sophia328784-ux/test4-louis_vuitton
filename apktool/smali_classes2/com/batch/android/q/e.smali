.class public Lcom/batch/android/q/e;
.super Lcom/batch/android/a/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/l0;


# static fields
.field private static final s:Ljava/lang/String; = "InboxFetchWebserviceClient"


# instance fields
.field private p:J

.field private final q:Ljava/lang/String;

.field private final r:Lcom/batch/android/n1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/q/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLcom/batch/android/n1/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/e/o0$c;->b:Lcom/batch/android/e/o0$c;

    sget-object v1, Lcom/batch/android/f/d;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/batch/android/q/a;->c()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/batch/android/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/e/o0$c;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p4, p0, Lcom/batch/android/q/e;->q:Ljava/lang/String;

    iput-wide p7, p0, Lcom/batch/android/q/e;->p:J

    iput-object p9, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

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

.method public static b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/g;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/q/k;
        }
    .end annotation

    :try_start_0
    const-string v0, "payload"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/batch/android/e/r;

    const-string v2, "com.batch"

    invoke-virtual {v0, v2}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/batch/android/e/r;-><init>(Lcom/batch/android/json/JSONObject;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/batch/android/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/batch/android/q/j;

    const-string v4, "notificationId"

    invoke-virtual {p0, v4}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "sendId"

    invoke-virtual {p0, v6}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/batch/android/q/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "customId"

    invoke-virtual {p0, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/batch/android/q/j;->d:Ljava/lang/String;

    const-string v4, "installId"

    invoke-virtual {p0, v4, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/batch/android/q/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/batch/android/e/r;->h()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/batch/android/q/j;->e:Ljava/util/Map;

    new-instance v4, Lcom/batch/android/q/g;

    invoke-virtual {v1}, Lcom/batch/android/e/r;->w()Lcom/batch/android/BatchNotificationSource;

    move-result-object v1

    new-instance v6, Ljava/util/Date;

    const-string v7, "notificationTime"

    invoke-virtual {p0, v7}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v4, v1, v6, v2, v3}, Lcom/batch/android/q/g;-><init>(Lcom/batch/android/BatchNotificationSource;Ljava/util/Date;Ljava/util/Map;Lcom/batch/android/q/j;)V

    const-string v1, "msg"

    invoke-virtual {v0, v1, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/batch/android/q/g;->b:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, v5}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/batch/android/q/g;->a:Ljava/lang/String;

    const-string v0, "read"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "opened"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    iput-boolean p0, v4, Lcom/batch/android/q/g;->d:Z

    iput-boolean v2, v4, Lcom/batch/android/q/g;->e:Z

    invoke-virtual {v4}, Lcom/batch/android/q/g;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v4

    :cond_2
    new-instance p0, Lcom/batch/android/q/k;

    const-string v0, "Parsed notification does not pass integrity checks. You may have an empty \'payload\' or missing identifiers."

    invoke-direct {p0, v0}, Lcom/batch/android/q/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/batch/android/q/k;

    const-string v1, "Missing key or invalid value type in response JSON"

    invoke-direct {v0, v1, p0}, Lcom/batch/android/q/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/q/k;
        }
    .end annotation

    new-instance p0, Lcom/batch/android/q/i;

    invoke-direct {p0}, Lcom/batch/android/q/i;-><init>()V

    :try_start_0
    const-string v0, "hasMore"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/batch/android/q/i;->a:Z

    const-string v0, "timeout"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/batch/android/q/i;->b:Z

    const-string v0, "cursor"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/batch/android/q/i;->c:Ljava/lang/String;

    :cond_0
    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "InboxFetchWebserviceClient"

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/batch/android/q/i;->d:Ljava/util/List;

    check-cast v1, Lcom/batch/android/json/JSONObject;

    invoke-static {v1}, Lcom/batch/android/q/e;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/g;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/batch/android/q/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Failed to parse notification content, skipping."

    invoke-static {v3, v2, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid json element found in notification array, skipping. Found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/batch/android/q/k;

    const-string v0, "Missing key or invalid value type in response JSON"

    invoke-direct {p1, v0, p0}, Lcom/batch/android/q/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
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

    const-string p0, "Batch/inboxwsc"

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

    iget-object v0, p0, Lcom/batch/android/q/e;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/batch/android/q/e;->q:Ljava/lang/String;

    const-string v1, "X-CustomID-Auth"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public run()V
    .locals 7

    const-string v0, "Inbox fetch failed: "

    const-string v1, "InboxFetchWebserviceClient"

    const-string v2, "Starting inbox fetch ("

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

    invoke-direct {p0, v2}, Lcom/batch/android/q/e;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/q/i;

    move-result-object v2

    iget-wide v3, p0, Lcom/batch/android/q/e;->p:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/batch/android/e/o0;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object v3

    iget-wide v4, p0, Lcom/batch/android/q/e;->p:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/batch/android/q/d;->a(Lcom/batch/android/q/i;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

    invoke-interface {v3, v2}, Lcom/batch/android/n1/c;->a(Lcom/batch/android/q/i;)V
    :try_end_0
    .catch Lcom/batch/android/e/o0$d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/q/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string v2, "Inbox response parsing failed: "

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

    const-string v0, "Internal webservice call error - code 30"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    invoke-static {v1, v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

    const-string v0, "Internal webservice call error - code 20"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    invoke-static {v1, v0, v2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/e/o0$d$a;->i:Lcom/batch/android/e/o0$d$a;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

    const-string v0, "Inbox API call error: Unauthorized. Please make sure that the hexadecimal HMAC for that custom ID is valid. (code 11)"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    invoke-virtual {v2}, Lcom/batch/android/e/o0$d;->b()Lcom/batch/android/e/o0$d$a;

    move-result-object v0

    sget-object v1, Lcom/batch/android/e/o0$d$a;->j:Lcom/batch/android/e/o0$d$a;

    iget-object p0, p0, Lcom/batch/android/q/e;->r:Lcom/batch/android/n1/c;

    if-ne v0, v1, :cond_2

    const-string v0, "Inbox API call error: Batch SDK has been globally Opted Out."

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const-string v0, "Internal webservice call error - code 10"

    invoke-interface {p0, v0}, Lcom/batch/android/n1/c;->a(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "ws.inbox.readcryptor.type"

    return-object p0
.end method
