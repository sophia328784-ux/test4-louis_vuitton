.class public abstract Lcom/batch/android/BatchMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionSource;


# static fields
.field public static final MESSAGING_EXTRA_PAYLOAD_KEY:Ljava/lang/String; = "com.batch.messaging.payload"

.field private static final a:Ljava/lang/String; = "kind"

.field private static final b:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchPushPayload$ParsingException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, "com.batch.messaging.payload"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "kind"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/batch/android/BatchPushPayload;->payloadFromBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getLandingMessage()Lcom/batch/android/BatchMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "inapp_campaign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/batch/android/BatchInAppMessage;->a(Landroid/os/Bundle;)Lcom/batch/android/BatchInAppMessage;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v0, "Unknown BatchMessage kind"

    invoke-direct {p0, v0}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/batch/android/BatchPushPayload$ParsingException;

    const-string v0, "Bundle doesn\'t contain the required elements for reading BatchMessage"

    invoke-direct {p0, v0}, Lcom/batch/android/BatchPushPayload$ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "Bundle cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract a()Landroid/os/Bundle;
.end method

.method public abstract b()Lcom/batch/android/json/JSONObject;
.end method

.method public abstract c()Lcom/batch/android/json/JSONObject;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "com.batch.messaging.payload"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p0, "bundle cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public writeToIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "com.batch.messaging.payload"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    :cond_0
    const-string p0, "intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
