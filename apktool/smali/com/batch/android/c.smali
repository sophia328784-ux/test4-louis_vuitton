.class public Lcom/batch/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/BatchNotificationChannelsManager;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/batch/android/BatchNotificationChannelsManager;->a(Lcom/batch/android/BatchPushPayload;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/batch/android/BatchNotificationChannelsManager;Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchNotificationChannelsManager;->a(Landroid/content/Context;)V

    return-void
.end method
