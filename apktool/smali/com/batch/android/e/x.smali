.class public Lcom/batch/android/e/x;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "NotificationPermission"

.field private static final c:Ljava/lang/String; = "App is targeting Android "

.field public static final d:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"


# instance fields
.field private final a:Lcom/batch/android/BatchPermissionListener;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchPermissionListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/batch/android/e/x;->a:Lcom/batch/android/BatchPermissionListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/e/x;->a:Lcom/batch/android/BatchPermissionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v2}, Lcom/batch/android/BatchPermissionListener;->onPermissionRequested(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/batch/android/e/x;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NotificationPermission"

    if-eqz v0, :cond_2

    const-string p1, "Notifications are already enabled, not requesting permission."

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/batch/android/e/x;->a:Lcom/batch/android/BatchPermissionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v2}, Lcom/batch/android/BatchPermissionListener;->onPermissionRequested(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/batch/android/e/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p3, "App is targeting Android 12L or lower."

    invoke-static {v1, p3}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/batch/android/e/x;->c(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string p0, "Cannot request the notification permission in the context. To do that, please update your target sdk to 33."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p2, "App is targeting Android 13."

    invoke-static {v1, p2}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, p3

    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.batch.androidactivity.permission.result"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object p3

    invoke-virtual {p3, p0, p2}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/batch/android/BatchPermissionActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "permission"

    const-string p3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 105
    const-class p0, Landroid/app/NotificationManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    const-string p0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p1}, Lcom/batch/android/e/o;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/batch/android/n/d;->a()Lcom/batch/android/BatchNotificationChannelsManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/batch/android/c;->a(Lcom/batch/android/BatchNotificationChannelsManager;Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "permission"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/batch/android/e/x;->a:Lcom/batch/android/BatchPermissionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/batch/android/BatchPermissionListener;->onPermissionRequested(Z)V

    :cond_0
    invoke-static {p1}, Lcom/batch/android/e/w;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
