.class public final Lcom/batch/android/BatchNotificationChannelsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;,
        Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;,
        Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "_BATCHSDK_DEFAULT"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;

.field private c:Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;

.field private d:Lcom/batch/android/v0/j;


# direct methods
.method private constructor <init>(Lcom/batch/android/v0/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->b:Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;

    iput-object v0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->c:Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;

    iput-object p1, p0, Lcom/batch/android/BatchNotificationChannelsManager;->d:Lcom/batch/android/v0/j;

    return-void
.end method

.method private b()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static openSystemChannelSettings(Landroid/content/Context;)Z
    .locals 1

    .line 49
    const-string v0, "_BATCHSDK_DEFAULT"

    invoke-static {p0, v0}, Lcom/batch/android/BatchNotificationChannelsManager;->openSystemChannelSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static openSystemChannelSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_0
    const-string p0, "ChannelId is mandatory"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "Context is mandatory"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return v0
.end method

.method public static provide()Lcom/batch/android/BatchNotificationChannelsManager;
    .locals 2

    new-instance v0, Lcom/batch/android/BatchNotificationChannelsManager;

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/batch/android/BatchNotificationChannelsManager;-><init>(Lcom/batch/android/v0/j;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object p0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->b:Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;

    if-eqz p0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0}, Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;->getDefaultChannelName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    const-string v0, "Push"

    const-string v1, "An exception occurred while calling the specified channel id interceptor. Falling back on the default name."

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    .line 85
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string p0, "Notifications"

    :cond_1
    return-object p0
.end method

.method public a(Lcom/batch/android/BatchPushPayload;)Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_BATCHSDK_DEFAULT"

    :goto_0
    if-eqz p1, :cond_1

    .line 79
    iget-object p0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->c:Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;

    if-eqz p0, :cond_1

    .line 80
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;->getChannelId(Lcom/batch/android/BatchPushPayload;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    move-exception p0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "An exception occurred while calling the specified channel id interceptor. Falling back on \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Push"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/batch/android/BatchNotificationChannelsManager;->b()Z

    move-result v0

    const-string v1, "Push"

    if-eqz v0, :cond_0

    const-string p0, "Channel ID overridden, not registering Batch\'s channel."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Registering default Batch notification channel"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Lcom/batch/android/BatchNotificationChannelsManager;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_BATCHSDK_DEFAULT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    iget-object p0, p0, Lcom/batch/android/BatchNotificationChannelsManager;->d:Lcom/batch/android/v0/j;

    invoke-virtual {p0}, Lcom/batch/android/v0/j;->r()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    const-class p0, Landroid/app/NotificationManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public setChannelIdInterceptor(Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/BatchNotificationChannelsManager;->c:Lcom/batch/android/BatchNotificationChannelsManager$NotificationChannelIdInterceptor;

    return-void
.end method

.method public setChannelIdOverride(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/BatchNotificationChannelsManager;->a:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;

    invoke-direct {v0, p1, p2}, Lcom/batch/android/BatchNotificationChannelsManager$StringResChannelNameProvider;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/BatchNotificationChannelsManager;->setChannelNameProvider(Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;)V

    return-void
.end method

.method public setChannelNameProvider(Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/BatchNotificationChannelsManager;->b:Lcom/batch/android/BatchNotificationChannelsManager$ChannelNameProvider;

    return-void
.end method
