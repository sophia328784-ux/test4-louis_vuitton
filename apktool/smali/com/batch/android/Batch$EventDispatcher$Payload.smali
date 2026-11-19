.class public interface abstract Lcom/batch/android/Batch$EventDispatcher$Payload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Payload"
.end annotation


# virtual methods
.method public abstract getCustomValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeeplink()Ljava/lang/String;
.end method

.method public abstract getMessagingPayload()Lcom/batch/android/BatchMessage;
.end method

.method public abstract getPushPayload()Lcom/batch/android/BatchPushPayload;
.end method

.method public abstract getTrackingId()Ljava/lang/String;
.end method

.method public abstract getWebViewAnalyticsID()Ljava/lang/String;
.end method

.method public abstract isPositiveAction()Z
.end method
