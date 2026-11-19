.class public Lcom/batch/android/u/a;
.super Lcom/batch/android/t/b$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/t/b$a;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public static a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/u/a;
    .locals 1

    .line 74
    new-instance v0, Lcom/batch/android/u/a;

    invoke-direct {v0, p0}, Lcom/batch/android/u/a;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/batch/android/t/b;)Z
    .locals 4

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "LocalCampaigns"

    if-nez v0, :cond_0

    const-string v0, "Could not find an activity to run the action on, falling back on context."

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "Could not find any context to run the action on: action might fail."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Invalid action name, stopping."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/batch/android/t/b$a;->a:Lcom/batch/android/json/JSONObject;

    const-string v1, "args"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_3
    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p0, v3}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    move-result p0

    return p0
.end method
