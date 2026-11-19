.class public final Lcom/batch/android/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "IntentParser"

.field private static final d:Ljava/lang/String; = "com.batch.messaging.push.shown"

.field private static final e:Ljava/lang/String; = "com.batch.open.tracked"

.field private static final f:Ljava/lang/String; = "com.batch.from_push"

.field private static final g:Ljava/lang/String; = "fromPush"

.field private static final h:Ljava/lang/String; = "com.batch.push_id"

.field private static final i:Ljava/lang/String; = "pushId"


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lcom/batch/android/BatchPushPayload;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/h;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    iput-object p1, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "batchPushPayload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v0, p1}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "IntentParser"

    const-string v0, "Unexpected error while parsing BatchPushPayload from intent"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/batch/android/h;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.batch.from_push"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "fromPush"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v0, "com.batch.push_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pushId"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "batchPushPayload"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const-string v0, "com.batch.open.tracked"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v0, "com.batch.messaging.push.shown"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/batch/android/e/r;Landroid/content/Intent;)V
    .locals 2

    .line 97
    const-string v0, "com.batch.from_push"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v0, "fromPush"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "batchPushPayload"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/e/r;->r()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 102
    const-string p1, "com.batch.push_id"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string p1, "pushId"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 107
    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 108
    const-string p0, "IntentParser"

    const-string v1, "intentComesFromPush : No intent found"

    invoke-static {p0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 109
    :cond_0
    const-string v1, "com.batch.from_push"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public b()Lcom/batch/android/BatchMessage;
    .locals 1

    iget-object p0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    if-nez p0, :cond_0

    const-string p0, "IntentParser"

    const-string v0, "getLanding : No valid payload in intent"

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getLandingMessage()Lcom/batch/android/BatchMessage;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getPushBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Lcom/batch/android/e/r;
    .locals 3

    const-string v0, "IntentParser"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    if-nez v2, :cond_0

    const-string p0, "getPushData : No intent found"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/e/r;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v2, "Error while retrieving push data"

    invoke-static {v0, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "IntentParser"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    if-nez p0, :cond_0

    const-string p0, "getPushId : No intent found"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v2, "com.batch.push_id"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string v2, "Error while retrieving push id"

    invoke-static {v0, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public f()Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "IntentParser"

    const-string v1, "hasLandingMessage : No valid payload in intent"

    invoke-static {p0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getLandingMessage()Lcom/batch/android/BatchMessage;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/h;->b:Lcom/batch/android/BatchPushPayload;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "IntentParser"

    const-string v1, "isLandingAlreadyShown : No intent found"

    invoke-static {p0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "com.batch.messaging.push.shown"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "IntentParser"

    const-string v1, "isOpenAlreadyTracked : No intent found"

    invoke-static {p0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "com.batch.open.tracked"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 2

    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    if-nez p0, :cond_0

    const-string p0, "IntentParser"

    const-string v0, "markLandingAsAlreadyShown : No intent found"

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.batch.messaging.push.shown"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcom/batch/android/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/h;->a:Landroid/content/Intent;

    const-string v0, "com.batch.open.tracked"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_0
    const-string p0, "IntentParser"

    const-string v0, "Trying to consume an open that does not come from a push"

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
