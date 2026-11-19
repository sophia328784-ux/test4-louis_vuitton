.class public Lcom/batch/android/f1/d;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# instance fields
.field private d:Lcom/batch/android/BatchPushRegistration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V
    .locals 1

    sget-object v0, Lcom/batch/android/f1/f;->d:Lcom/batch/android/f1/f;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    return-void

    :cond_0
    const-string p0, "registration==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private f()I
    .locals 1

    invoke-virtual {p0}, Lcom/batch/android/f1/e;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/batch/android/n/d;->a()Lcom/batch/android/BatchNotificationChannelsManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Lcom/batch/android/BatchNotificationChannelsManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public e()Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tok"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    const-string v2, "senderid"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/f1/d;->d:Lcom/batch/android/BatchPushRegistration;

    invoke-virtual {v1}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    const-string v2, "gcpprojectid"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/f1/d;->f()I

    move-result p0

    const-string v1, "nty"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
