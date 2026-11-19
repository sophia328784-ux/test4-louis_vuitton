.class public Lcom/batch/android/BatchInboxNotificationContent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "BatchInboxNotificationContent"


# instance fields
.field a:Lcom/batch/android/q/g;

.field private b:Lcom/batch/android/BatchPushPayload;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/BatchInboxNotificationContent;->b:Lcom/batch/android/BatchPushPayload;

    iput-object p1, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    return-void
.end method


# virtual methods
.method public displayLandingMessage(Landroid/content/Context;)V
    .locals 4

    const-string v0, "BatchInboxNotificationContent"

    if-nez p1, :cond_0

    const-string p0, "Context cannot be null."

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Ignoring as Batch has been Opted Out from"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/batch/android/v0/g;->a(Z)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/j1/e;->h()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Trying to present landing message while application is in background."

    invoke-static {v0, v3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/BatchInboxNotificationContent;->getPushPayload()Lcom/batch/android/BatchPushPayload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->hasLandingMessage()Z

    move-result v3

    if-nez v3, :cond_4

    const-string p0, "No landing message present."

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/e/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/e/r;->k()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/batch/android/BatchLandingMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getPushBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Lcom/batch/android/BatchLandingMessage;-><init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v3, v2}, Lcom/batch/android/BatchLandingMessage;->a(Z)V

    invoke-virtual {v1, p1, v3, v2}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Parsing push payload has failed, cannot display landing message."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->f:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getNotificationIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->h:Lcom/batch/android/q/j;

    iget-object p0, p0, Lcom/batch/android/q/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getPushPayload()Lcom/batch/android/BatchPushPayload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchInboxNotificationContent;->b:Lcom/batch/android/BatchPushPayload;

    if-nez v0, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    iget-object v1, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    invoke-virtual {v1}, Lcom/batch/android/q/g;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/batch/android/BatchInboxNotificationContent;->b:Lcom/batch/android/BatchPushPayload;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/batch/android/BatchInboxNotificationContent;->b:Lcom/batch/android/BatchPushPayload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRawPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->g:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSource()Lcom/batch/android/BatchNotificationSource;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->c:Lcom/batch/android/BatchNotificationSource;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object p0, p0, Lcom/batch/android/q/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hasLandingMessage()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/BatchInboxNotificationContent;->getPushPayload()Lcom/batch/android/BatchPushPayload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->hasLandingMessage()Z

    move-result p0
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSilent()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-object v1, v1, Lcom/batch/android/q/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/BatchInboxNotificationContent;->getPushPayload()Lcom/batch/android/BatchPushPayload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/e/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/e/r;->F()Z

    move-result p0
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public isUnread()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxNotificationContent;->a:Lcom/batch/android/q/g;

    iget-boolean p0, p0, Lcom/batch/android/q/g;->d:Z

    return p0
.end method
