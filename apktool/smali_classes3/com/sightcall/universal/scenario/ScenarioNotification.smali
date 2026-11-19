.class Lcom/sightcall/universal/scenario/ScenarioNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;
    }
.end annotation


# instance fields
.field private final action:Landroidx/core/app/NotificationCompat$Action;

.field private final builder:Landroidx/core/app/NotificationCompat$Builder;

.field private largeIcon:Landroid/graphics/Bitmap;

.field private pendingIntentCall:Landroid/app/PendingIntent;

.field private pendingIntentLoading:Landroid/app/PendingIntent;

.field private final updater:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;-><init>(I)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->updater:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationActionIcon(Lcom/sightcall/universal/scenario/Step;)I

    move-result v3

    invoke-static {p1, v2}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationActionTitle(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioService;->stop(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->action:Landroidx/core/app/NotificationCompat$Action;

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const-string v4, "call"

    iput-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v4, Lcom/sightcall/graphik/R$color;->universal_colorNotification:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, v2, Landroidx/core/app/NotificationCompat$Builder;->D:I

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->o:Z

    const/4 p1, 0x2

    invoke-virtual {v2, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 p1, 0x10

    invoke-virtual {v2, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    const/16 p1, 0x8

    invoke-virtual {v2, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-object v2, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_service_notification_channel_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static getNotificationActionIcon(Lcom/sightcall/universal/scenario/Step;)I
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/sightcall/universal/R$drawable;->universal_ic_call_end_red_24dp:I

    return p0

    :cond_0
    sget p0, Lcom/sightcall/universal/R$drawable;->universal_ic_clear_24dp:I

    return p0
.end method

.method private static getNotificationActionTitle(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/sightcall/universal/R$string;->universal_notification_action_hangup:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    sget p1, Lcom/sightcall/universal/R$string;->universal_notification_action_abort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/sightcall/universal/R$string;->universal_service_notification_channel_id:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationContentInfo()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getNotificationContentIntent(Lcom/sightcall/universal/scenario/Step;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentCall:Landroid/app/PendingIntent;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentLoading:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private static getNotificationContentText(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/sightcall/universal/R$string;->universal_notification_text_active:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNotificationContentTitle(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/sightcall/universal/R$string;->universal_notification_title_active:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    sget p1, Lcom/sightcall/universal/R$string;->universal_notification_title_connecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationLargeIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->largeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getNotificationSmallIcon(Lcom/sightcall/universal/scenario/Step;)I
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/sightcall/universal/R$drawable;->universal_ic_voice_chat_24dp:I

    return p0

    :cond_0
    sget p0, Lcom/sightcall/universal/R$drawable;->universal_ic_wifi_tethering_24dp:I

    return p0
.end method

.method private static getNotificationSubText()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getTrafficValues()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getTrafficValues()Ljava/lang/CharSequence;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/util/UniversalSettings;->networkTraffic()Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v2

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->traffic()Lnet/rtccloud/sdk/Call$Traffic;

    move-result-object v0

    iget-wide v1, v0, Lnet/rtccloud/sdk/Call$Traffic;->rx:J

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/Call$Traffic;->bytes2size(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lnet/rtccloud/sdk/Call$Traffic;->tx:J

    invoke-static {v2, v3}, Lnet/rtccloud/sdk/Call$Traffic;->bytes2size(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u2b07"

    const-string v3, "  \u2b06"

    invoke-static {v2, v1, v3, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static isInCall(Lcom/sightcall/universal/scenario/Step;)Z
    .locals 1

    instance-of p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static isIndeterminate(Lcom/sightcall/universal/scenario/Step;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isInCall(Lcom/sightcall/universal/scenario/Step;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static updateAction(Lcom/sightcall/universal/scenario/ScenarioService;Landroidx/core/app/NotificationCompat$Builder;Landroidx/core/app/NotificationCompat$Action;Lcom/sightcall/universal/scenario/Step;)V
    .locals 3

    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    invoke-static {p0, p3}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationActionTitle(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p2, Landroidx/core/app/NotificationCompat$Action;->i:Ljava/lang/CharSequence;

    invoke-static {p3}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationActionIcon(Lcom/sightcall/universal/scenario/Step;)I

    move-result p0

    iput p0, p2, Landroidx/core/app/NotificationCompat$Action;->h:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 4

    invoke-static {p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/util/Feature;->LOADING_ACTIVITY:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1, v3, v0, v3}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentLoading:Landroid/app/PendingIntent;

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallActivity;->startIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v3, v0, v3}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentCall:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->createNotificationChannel(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/ScenarioNotification;->update(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void
.end method

.method public onDestroy(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->updater:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    invoke-static {v0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->a(Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentLoading:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->pendingIntentCall:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->largeIcon:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public update(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 4

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationSmallIcon(Lcom/sightcall/universal/scenario/Step;)I

    move-result v2

    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationContentTitle(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationContentText(Landroid/content/Context;Lcom/sightcall/universal/scenario/Step;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationContentInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->k:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationSubText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->getNotificationContentIntent(Lcom/sightcall/universal/scenario/Step;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->isIndeterminate(Lcom/sightcall/universal/scenario/Step;)Z

    move-result v2

    const/4 v3, 0x0

    iput v3, v1, Landroidx/core/app/NotificationCompat$Builder;->s:I

    iput v3, v1, Landroidx/core/app/NotificationCompat$Builder;->t:I

    iput-boolean v2, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Z

    iget-object v2, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->action:Landroidx/core/app/NotificationCompat$Action;

    invoke-static {p1, v1, v2, v0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->updateAction(Lcom/sightcall/universal/scenario/ScenarioService;Landroidx/core/app/NotificationCompat$Builder;Landroidx/core/app/NotificationCompat$Action;Lcom/sightcall/universal/scenario/Step;)V

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification;->updater:Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->check(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void
.end method
