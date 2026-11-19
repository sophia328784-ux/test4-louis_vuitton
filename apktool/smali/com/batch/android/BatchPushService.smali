.class public Lcom/batch/android/BatchPushService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BatchPushService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BatchPushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BatchPushService"

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "Error while handling notification: null intent"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/batch/android/d/b;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/batch/android/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/batch/android/d/b;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void

    :goto_0
    :try_start_2
    const-string v1, "Error while handing notification"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcom/batch/android/d/b;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/batch/android/j;->a()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {p1}, Lcom/batch/android/d/b;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw p0
.end method
