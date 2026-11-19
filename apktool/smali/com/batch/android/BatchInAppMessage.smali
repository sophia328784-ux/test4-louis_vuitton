.class public Lcom/batch/android/BatchInAppMessage;
.super Lcom/batch/android/BatchMessage;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/InAppMessageUserActionSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchInAppMessage$Content;
    }
.end annotation


# static fields
.field public static final KIND:Ljava/lang/String; = "inapp_campaign"

.field private static final i:Ljava/lang/String; = "payload"

.field private static final j:Ljava/lang/String; = "custom_payload"

.field private static final k:Ljava/lang/String; = "campaign_token"

.field private static final l:Ljava/lang/String; = "campaign_id"

.field private static final m:Ljava/lang/String; = "campaign_event_data"


# instance fields
.field private final c:Lcom/batch/android/json/JSONObject;

.field private final d:Lcom/batch/android/json/JSONObject;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/batch/android/json/JSONObject;

.field private h:Lcom/batch/android/BatchInAppMessage$Content;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/BatchMessage;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchInAppMessage;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/BatchInAppMessage;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/batch/android/BatchInAppMessage;->g:Lcom/batch/android/json/JSONObject;

    iput-object p4, p0, Lcom/batch/android/BatchInAppMessage;->c:Lcom/batch/android/json/JSONObject;

    iput-object p5, p0, Lcom/batch/android/BatchInAppMessage;->d:Lcom/batch/android/json/JSONObject;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/batch/android/BatchInAppMessage;
    .locals 10

    const-string v0, "payload"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_payload"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "campaign_id"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "campaign_event_data"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/batch/android/BatchInAppMessage;

    const-string v4, "campaign_token"

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/batch/android/json/JSONObject;

    invoke-direct {v6, v2}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/batch/android/json/JSONObject;

    invoke-direct {v7, v0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/batch/android/json/JSONObject;

    invoke-direct {v8, v1}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v8}, Lcom/batch/android/BatchInAppMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Messaging"

    const-string v1, "Unexpected error while reading a BatchInAppMessage from a bundle"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Corrupted bundle (code 2)"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v9

    :cond_0
    const-string p0, "Corrupted bundle (code 1)"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/batch/android/BatchInAppMessage;->c:Lcom/batch/android/json/JSONObject;

    const-string v2, "{}"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "payload"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/batch/android/BatchInAppMessage;->d:Lcom/batch/android/json/JSONObject;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v1, "custom_payload"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/batch/android/BatchInAppMessage;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 101
    const-string v2, "campaign_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/batch/android/BatchInAppMessage;->f:Ljava/lang/String;

    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->g:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "campaign_event_data"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->d:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public c()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->c:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "inapp_campaign"

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->g:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public getCampaignToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomPayload()Lcom/batch/android/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/BatchInAppMessage;->d:Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/BatchInAppMessage;->d:Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public declared-synchronized getMEPContent()Lcom/batch/android/BatchInAppMessage$Content;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/batch/android/BatchInAppMessage;->c:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {v0}, Lcom/batch/android/i0/b;->d(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v0

    instance-of v1, v0, Lcom/batch/android/h0/a;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/batch/android/BatchAlertContent;

    check-cast v0, Lcom/batch/android/h0/a;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchAlertContent;-><init>(Lcom/batch/android/h0/a;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/batch/android/h0/g;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/batch/android/BatchInterstitialContent;

    check-cast v0, Lcom/batch/android/h0/g;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchInterstitialContent;-><init>(Lcom/batch/android/h0/g;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/batch/android/h0/b;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/batch/android/BatchBannerContent;

    check-cast v0, Lcom/batch/android/h0/b;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchBannerContent;-><init>(Lcom/batch/android/h0/b;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/batch/android/h0/d;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/batch/android/BatchImageContent;

    check-cast v0, Lcom/batch/android/h0/d;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchImageContent;-><init>(Lcom/batch/android/h0/d;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/batch/android/h0/f;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/batch/android/BatchModalContent;

    check-cast v0, Lcom/batch/android/h0/f;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchModalContent;-><init>(Lcom/batch/android/h0/f;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/batch/android/h0/h;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/batch/android/BatchWebViewContent;

    check-cast v0, Lcom/batch/android/h0/h;

    invoke-direct {v1, v0}, Lcom/batch/android/BatchWebViewContent;-><init>(Lcom/batch/android/h0/h;)V

    iput-object v1, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;
    :try_end_1
    .catch Lcom/batch/android/i0/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v1, "Messaging"

    const-string v2, "Could not make content"

    invoke-static {v1, v2, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/batch/android/BatchInAppMessage;->h:Lcom/batch/android/BatchInAppMessage$Content;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
