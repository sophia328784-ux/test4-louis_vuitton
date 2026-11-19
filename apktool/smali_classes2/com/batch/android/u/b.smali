.class public Lcom/batch/android/u/b;
.super Lcom/batch/android/t/b$a;
.source "SourceFile"


# instance fields
.field private final b:Lcom/batch/android/v0/g;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/g;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/batch/android/t/b$a;-><init>(Lcom/batch/android/json/JSONObject;)V

    iput-object p1, p0, Lcom/batch/android/u/b;->b:Lcom/batch/android/v0/g;

    return-void
.end method

.method public static a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/b;
    .locals 2

    .line 77
    new-instance v0, Lcom/batch/android/u/b;

    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/batch/android/u/b;-><init>(Lcom/batch/android/v0/g;Lcom/batch/android/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b;)Z
    .locals 6

    :try_start_0
    new-instance v4, Lcom/batch/android/json/JSONObject;

    iget-object v0, p0, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    invoke-direct {v4, v0}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    instance-of v0, p0, Lcom/batch/android/u/c;

    if-eqz v0, :cond_0

    const-string v0, "eventData"

    iget-object v1, p1, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "ed"

    iget-object v1, p1, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :goto_0
    new-instance v5, Lcom/batch/android/json/JSONObject;

    iget-object v0, p1, Lcom/batch/android/t/b;->p:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object v1, p1, Lcom/batch/android/t/b;->p:Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    :goto_1
    invoke-direct {v5, v0}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    new-instance v0, Lcom/batch/android/BatchInAppMessage;

    iget-object v1, p1, Lcom/batch/android/t/b;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/batch/android/t/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/batch/android/t/b;->j:Lcom/batch/android/json/JSONObject;

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/BatchInAppMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V

    iget-object p0, p0, Lcom/batch/android/u/b;->b:Lcom/batch/android/v0/g;

    invoke-virtual {p0, v0}, Lcom/batch/android/v0/g;->a(Lcom/batch/android/BatchInAppMessage;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "LocalCampaigns"

    const-string v0, "Landing Output: Could not copy custom payload"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
