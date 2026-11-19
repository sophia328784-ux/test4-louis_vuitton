.class final enum Lcom/sightcall/universal/internal/ui/UniversalNotification$3;
.super Lcom/sightcall/universal/internal/ui/UniversalNotification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/UniversalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# instance fields
.field private final CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

.field private final TIMEOUT_MILLIS:J

.field private final runnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    .line 21
    const-string v0, "GUEST_READY"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;-><init>(Ljava/lang/String;III)V

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->RINGTONE:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    const-wide/32 p1, 0xea60

    iput-wide p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->TIMEOUT_MILLIS:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->runnables:Ljava/util/Map;

    return-void
.end method

.method private createTag(Lcom/sightcall/universal/fcm/messages/GuestReady;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private scheduleCancel(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->createTag(Lcom/sightcall/universal/fcm/messages/GuestReady;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3$1;-><init>(Lcom/sightcall/universal/internal/ui/UniversalNotification$3;Landroid/content/Context;Ljava/lang/String;Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->runnables:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object p1

    iget-wide v2, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->TIMEOUT_MILLIS:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->createTag(Lcom/sightcall/universal/fcm/messages/GuestReady;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish(Landroid/content/Context;Landroid/os/Parcelable;)V

    invoke-super {p0, p1, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->runnables:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs show(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    instance-of v1, p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    const-string v1, "UniversalAgentCallPendingActivity.ASK"

    invoke-static {p1, p2, v1}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->ask(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "UniversalAgentCallPendingActivity.ACCEPT"

    invoke-static {p1, p2, v2}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->ask(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "UniversalAgentCallPendingActivity.DENY"

    invoke-static {p1, p2, v3}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->ask(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v5, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    sget v5, Lcom/sightcall/universal/R$drawable;->universal_icon_agent_notification_guest_ready:I

    iget-object v6, v4, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v5, v6, Landroid/app/Notification;->icon:I

    sget v5, Lcom/sightcall/graphik/R$color;->universal_colorNotification:I

    invoke-static {p1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroidx/core/app/NotificationCompat$Builder;->D:I

    sget v5, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_title:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget v5, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_title:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    sget v5, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_text:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    const-string v5, "call"

    iput-object v5, v4, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v4, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const/4 v7, 0x6

    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->f(I)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->findDefaultRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v5, v6, Landroid/app/Notification;->audioStreamType:I

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    sget v7, Lcom/sightcall/universal/R$drawable;->universal_icon_agent_notification_guest_ready_deny:I

    sget v9, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_deny:I

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v6, v7, v9, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    sget v6, Lcom/sightcall/universal/R$drawable;->universal_icon_agent_notification_guest_ready_accept:I

    sget v7, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_accept:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v6, v7, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    iput-object v1, v4, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    invoke-virtual {v4, v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput v1, v4, Landroidx/core/app/NotificationCompat$Builder;->E:I

    const/16 v1, 0x10

    invoke-virtual {v4, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v8

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->createTag(Lcom/sightcall/universal/fcm/messages/GuestReady;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->notify(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;->scheduleCancel(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    :cond_1
    return-void
.end method
