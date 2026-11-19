.class public Lcom/batch/android/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field public static final b:Ljava/lang/String; = "batch.group"


# instance fields
.field private a:Lcom/batch/android/v0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/b/c;->a:Lcom/batch/android/v0/a;

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 6

    const-string p2, "actions"

    invoke-virtual {p3, p2}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object p2

    const-string p3, "Action"

    if-nez p2, :cond_0

    const-string p0, "Could not parse group action, \'actions\' is not an array"

    invoke-static {p3, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/batch/android/json/JSONArray;->getJSONArray(I)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "Could not parse group action item: invalid argument length"

    invoke-static {p3, v3}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Lcom/batch/android/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "batch.group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "Can\'t trigger \'batch.group\' from this action."

    invoke-static {p3, v3}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_3
    iget-object v5, p0, Lcom/batch/android/b/c;->a:Lcom/batch/android/v0/a;

    invoke-virtual {v5, p1, v4, v3, p4}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    const-string v3, "The group action does not support running more than 10 actions"

    invoke-static {p3, v3}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    const-string v4, "Could not parse group action item, JSON error"

    invoke-static {p3, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caused by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method
