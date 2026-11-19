.class public Lcom/batch/android/BatchPushPayload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/PushUserActionSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchPushPayload$ParsingException;
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/e/r;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/batch/android/e/r;->a(Landroid/os/Bundle;)Lcom/batch/android/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string p1, "Payload does not contain required Batch push data"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/batch/android/d;->a(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    .line 29
    invoke-static {p1}, Lcom/batch/android/e/r;->a(Landroid/os/Bundle;)Lcom/batch/android/e/r;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance p0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string p1, "Payload does not contain required Batch push data"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "batchPushPayload"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v0, p0}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v0, "Given bundle does not contain push information in Batch.Push.PAYLOAD_KEY"

    invoke-direct {p0, v0}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "Extras cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static payloadFromFirebaseMessage(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/batch/android/BatchPushPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v0, p0}, Lcom/batch/android/BatchPushPayload;-><init>(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-object v0

    :cond_0
    const-string p0, "RemoteMessage cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static payloadFromReceiverExtras(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v0, p0}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    const-string p0, "Extras cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static payloadFromReceiverIntent(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/batch/android/BatchPushPayload;

    invoke-direct {v0, p0}, Lcom/batch/android/BatchPushPayload;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    const-string p0, "Invalid intent"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "Intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/batch/android/e/r;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    return-object p0
.end method

.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchNotificationAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getBigPictureURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {v0}, Lcom/batch/android/e/r;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->f()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/batch/android/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomLargeIconURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {v0}, Lcom/batch/android/e/r;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->d()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/batch/android/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLandingMessage()Lcom/batch/android/BatchMessage;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {v0}, Lcom/batch/android/e/r;->k()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/batch/android/BatchLandingMessage;

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-direct {v1, p0, v0}, Lcom/batch/android/BatchLandingMessage;-><init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V

    return-object v1
.end method

.method public getPushBundle()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public hasBigPicture()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->z()Z

    move-result p0

    return p0
.end method

.method public hasCustomLargeIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->y()Z

    move-result p0

    return p0
.end method

.method public hasDeeplink()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->B()Z

    move-result p0

    return p0
.end method

.method public hasLandingMessage()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->A()Z

    move-result p0

    return p0
.end method

.method public isGroupSummary()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->a:Lcom/batch/android/e/r;

    invoke-virtual {p0}, Lcom/batch/android/e/r;->C()Z

    move-result p0

    return p0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    const-string v0, "batchPushPayload"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p0, "Bundle cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public writeToIntentExtras(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/BatchPushPayload;->b:Landroid/os/Bundle;

    const-string v0, "batchPushPayload"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string p0, "Intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
