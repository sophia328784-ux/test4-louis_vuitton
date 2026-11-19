.class public final Lcom/batch/android/BatchActionService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BatchActionService"

.field static final b:Ljava/lang/String; = "com.batch.android.action.exec"

.field static final c:Ljava/lang/String; = "actionID"

.field static final d:Ljava/lang/String; = "args"

.field static final e:Ljava/lang/String; = "dismissNotificationID"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BatchActionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handling intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatchActionService"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "dismissNotificationID"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v3, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    const-string v4, "batch"

    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "actionID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "Empty or null action identifier, aborting"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "args"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v4, Lcom/batch/android/json/JSONObject;

    invoke-direct {v4, p1}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v4, "Unexpected error while decoding json action arguments"

    invoke-static {v1, v4, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_4

    new-instance v4, Lcom/batch/android/json/JSONObject;

    invoke-direct {v4}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object v3
    :try_end_1
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Unexpected error while decoding BatchPushPayload"

    invoke-static {v1, v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v4, v3}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Action executed"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
