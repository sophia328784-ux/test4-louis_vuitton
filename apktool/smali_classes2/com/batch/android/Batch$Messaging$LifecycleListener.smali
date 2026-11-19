.class public interface abstract Lcom/batch/android/Batch$Messaging$LifecycleListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch$Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifecycleListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;
    }
.end annotation


# virtual methods
.method public onBatchMessageActionTriggered(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchMessageAction;)V
    .locals 0

    return-void
.end method

.method public abstract onBatchMessageClosed(Ljava/lang/String;Lcom/batch/android/Batch$Messaging$LifecycleListener$MessagingCloseReason;)V
.end method

.method public abstract onBatchMessageShown(Ljava/lang/String;)V
.end method
