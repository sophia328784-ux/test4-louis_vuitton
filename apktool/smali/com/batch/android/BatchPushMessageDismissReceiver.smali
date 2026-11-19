.class public Lcom/batch/android/BatchPushMessageDismissReceiver;
.super Lcom/batch/android/d/b;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "BatchPushMessageDismissReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "BatchPushMessageDismissReceiver"

    if-nez p2, :cond_0

    const-string p1, "Null intent"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object p2

    new-instance v0, Lcom/batch/android/p/c;

    invoke-direct {v0, p2}, Lcom/batch/android/p/c;-><init>(Lcom/batch/android/BatchPushPayload;)V

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/batch/android/v0/e;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object p1

    sget-object p2, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISMISS:Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-virtual {p1, p2, v0}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Invalid payload, skip dispatchers"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Intent extras were empty, stop dispatching event"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
