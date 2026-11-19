.class public Lcom/batch/android/p/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/Batch$EventDispatcher$Payload;


# instance fields
.field private a:Lcom/batch/android/BatchPushPayload;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchPushPayload;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/batch/android/p/c;-><init>(Lcom/batch/android/BatchPushPayload;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/BatchPushPayload;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/p/c;->a:Lcom/batch/android/BatchPushPayload;

    iput-boolean p2, p0, Lcom/batch/android/p/c;->b:Z

    return-void
.end method


# virtual methods
.method public getCustomValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.batch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/p/c;->a:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getPushBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/p/c;->a:Lcom/batch/android/BatchPushPayload;

    invoke-virtual {p0}, Lcom/batch/android/BatchPushPayload;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessagingPayload()Lcom/batch/android/BatchMessage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPushPayload()Lcom/batch/android/BatchPushPayload;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/p/c;->a:Lcom/batch/android/BatchPushPayload;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebViewAnalyticsID()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isPositiveAction()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/p/c;->b:Z

    return p0
.end method
