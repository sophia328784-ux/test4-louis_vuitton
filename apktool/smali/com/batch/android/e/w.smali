.class public Lcom/batch/android/e/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Notification Authorization"

.field private static b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/batch/android/j1/e;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;)Lcom/batch/android/BatchPushRegistration;

    move-result-object p0

    if-nez p0, :cond_0

    .line 64
    const-string p0, "Notif. Authorization changed but no registration is available. Not sending update to the server."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    invoke-static {p1, p0}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;Lcom/batch/android/BatchPushRegistration;)Z

    return-void
.end method

.method public static a(Landroid/app/NotificationManager;Lcom/batch/android/BatchNotificationChannelsManager;)Z
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/batch/android/c;->a(Lcom/batch/android/BatchNotificationChannelsManager;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, v0}, Lcom/batch/android/e/w;->a(Landroid/app/NotificationManager;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/NotificationManager;Ljava/lang/String;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    if-eqz p0, :cond_2

    return p2

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return p2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v1, "push.notiftype"

    invoke-virtual {p0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/e/e0;->a(I)Ljava/util/EnumSet;

    move-result-object p0

    .line 59
    sget-object v1, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 60
    const-string v1, "Notification Authorization"

    const-string v2, "Error while getting Batch notification type"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 0

    .line 56
    invoke-virtual {p1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/BatchNotificationChannelsManager;)Z
    .locals 3

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {p0, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Landroid/app/NotificationManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 51
    invoke-static {v0, p1}, Lcom/batch/android/e/w;->a(Landroid/app/NotificationManager;Lcom/batch/android/BatchNotificationChannelsManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 52
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 53
    :cond_1
    invoke-static {v0, p1, v1}, Lcom/batch/android/e/w;->a(Landroid/app/NotificationManager;Ljava/lang/String;Z)Z

    move-result p1

    .line 54
    invoke-static {p0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-static {p0, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Landroid/app/NotificationManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    .line 46
    const-string v0, "push.notif.last_auth_status_sent"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/batch/android/n/d;->a()Lcom/batch/android/BatchNotificationChannelsManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Lcom/batch/android/BatchNotificationChannelsManager;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "has_notification_authorization"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v2

    const-string v3, "_NOTIF_STATUS_CHANGE"

    invoke-virtual {v2, v3, v1}, Lcom/batch/android/v0/k;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v1

    const-string v2, "push.notif.last_auth_status_sent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Cannot track event NOTIFICATION_STATUS_CHANGE."

    invoke-static {v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/batch/android/e/w;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/batch/android/e/w;->b:Ljava/lang/Boolean;

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/batch/android/e/w;->b:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification Authorization changed (is now "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, "true"

    goto :goto_1

    :cond_2
    const-string v0, "false"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lj91;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Lj91;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Notif. Authorization changed but SDK isn\'t ready. Not sending update to the server."

    invoke-static {p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/batch/android/j1/e;)V
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Lcom/batch/android/j1/e;)V

    return-void
.end method
