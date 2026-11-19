.class public final Lcom/batch/android/Batch$Push;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Push"
.end annotation


# static fields
.field public static final ALERT_KEY:Ljava/lang/String; = "msg"

.field public static final BODY_KEY:Ljava/lang/String; = "msg"

.field public static final PAYLOAD_KEY:Ljava/lang/String; = "batchPushPayload"

.field public static final TITLE_KEY:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendBatchData(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static appendBatchData(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public static appendBatchData(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Intent;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Intent;)V

    return-void
.end method

.method public static dismissNotifications()V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->i()V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 2

    .line 11
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 13
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Lcom/batch/android/BatchNotificationInterceptor;)V

    return-void
.end method

.method public static displayNotification(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Lcom/batch/android/BatchNotificationInterceptor;)V

    return-void
.end method

.method public static getChannelsManager()Lcom/batch/android/BatchNotificationChannelsManager;
    .locals 1

    invoke-static {}, Lcom/batch/android/n/d;->a()Lcom/batch/android/BatchNotificationChannelsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistration()Lcom/batch/android/BatchPushRegistration;
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->p()Lcom/batch/android/BatchPushRegistration;

    move-result-object v0

    return-object v0
.end method

.method public static isBatchPush(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isBatchPush(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 1

    .line 9
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result p0

    return p0
.end method

.method public static isManualDisplayModeActivated()Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->t()Z

    move-result v0

    return v0
.end method

.method public static makePendingIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PushIntentExtras cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "Intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makePendingIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 34
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    const-string p0, "RemoteMessage cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_1
    const-string p0, "Intent cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_2
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makePendingIntentForDeeplink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PushIntentExtras cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "Deeplink cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makePendingIntentForDeeplink(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 34
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    const-string p0, "RemoteMessage cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_1
    const-string p0, "Deeplink cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_2
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onNotificationDisplayed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static onNotificationDisplayed(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public static refreshRegistration()V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->v()V

    return-void
.end method

.method public static requestNotificationPermission(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/batch/android/BatchPermissionListener;)V

    return-void
.end method

.method public static requestNotificationPermission(Landroid/content/Context;Lcom/batch/android/BatchPermissionListener;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/batch/android/BatchPermissionListener;)V

    return-void
.end method

.method public static setAdditionalIntentFlags(Ljava/lang/Integer;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static setManualDisplay(Z)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Z)V

    return-void
.end method

.method public static setNotificationInterceptor(Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/BatchNotificationInterceptor;)V

    return-void
.end method

.method public static setNotificationsColor(I)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->b(I)V

    return-void
.end method

.method public static setShowNotifications(Z)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->b(Z)V

    return-void
.end method

.method public static setSmallIconResourceId(I)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(I)V

    return-void
.end method

.method public static setSound(Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static shouldDisplayPush(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static shouldDisplayPush(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 1

    .line 9
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result p0

    return p0
.end method

.method public static shouldShowNotifications(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->d(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
