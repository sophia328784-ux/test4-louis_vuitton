.class public Lcom/batch/android/p/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/Batch$EventDispatcher$Payload;


# instance fields
.field private a:Lcom/batch/android/BatchMessage;

.field private b:Lcom/batch/android/json/JSONObject;

.field private c:Lcom/batch/android/json/JSONObject;

.field private d:Lcom/batch/android/f0/a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/p/b;-><init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;Lcom/batch/android/json/JSONObject;Lcom/batch/android/f0/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/p/b;->a:Lcom/batch/android/BatchMessage;

    iput-object p2, p0, Lcom/batch/android/p/b;->b:Lcom/batch/android/json/JSONObject;

    iput-object p3, p0, Lcom/batch/android/p/b;->c:Lcom/batch/android/json/JSONObject;

    iput-object p4, p0, Lcom/batch/android/p/b;->d:Lcom/batch/android/f0/a;

    iput-object p5, p0, Lcom/batch/android/p/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCustomValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/p/b;->c:Lcom/batch/android/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "com.batch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/p/b;->c:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0, p1, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/p/b;->d:Lcom/batch/android/f0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/batch/android/f0/a;->b:Ljava/lang/String;

    const-string v2, "batch.deeplink"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/p/b;->d:Lcom/batch/android/f0/a;

    iget-object p0, p0, Lcom/batch/android/f0/a;->c:Lcom/batch/android/json/JSONObject;

    if-eqz p0, :cond_0

    const-string v0, "l"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getMessagingPayload()Lcom/batch/android/BatchMessage;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/p/b;->a:Lcom/batch/android/BatchMessage;

    return-object p0
.end method

.method public getPushPayload()Lcom/batch/android/BatchPushPayload;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/p/b;->b:Lcom/batch/android/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "did"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/p/b;->b:Lcom/batch/android/json/JSONObject;

    const-string v0, "trackingId"

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getWebViewAnalyticsID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/p/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isPositiveAction()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/p/b;->d:Lcom/batch/android/f0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/f0/a;->a()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
