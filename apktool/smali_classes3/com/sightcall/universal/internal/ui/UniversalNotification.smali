.class public abstract enum Lcom/sightcall/universal/internal/ui/UniversalNotification;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/ui/UniversalNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotification;

.field public static final enum GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

.field public static final enum OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

.field public static final enum PING:Lcom/sightcall/universal/internal/ui/UniversalNotification;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/ui/UniversalNotification;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    sget-object v1, Lcom/sightcall/universal/internal/ui/UniversalNotification;->PING:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    sget-object v2, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/internal/ui/UniversalNotification;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;

    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_permission_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    new-instance v0, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;

    sget v1, Lcom/sightcall/universal/R$id;->universal_ping_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->PING:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    new-instance v0, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;

    sget v1, Lcom/sightcall/universal/R$id;->universal_guest_ready_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$3;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->$values()[Lcom/sightcall/universal/internal/ui/UniversalNotification;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->$VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/ui/UniversalNotification;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static findDefaultRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/ui/UniversalNotification;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/UniversalNotification;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/ui/UniversalNotification;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->$VALUES:[Lcom/sightcall/universal/internal/ui/UniversalNotification;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/ui/UniversalNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/ui/UniversalNotification;

    return-object v0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notification cancel("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result v2

    const-string v3, ", tag:"

    const-string v4, ", id:"

    .line 58
    const-string v5, "Notification cancel("

    invoke-static {v5, v1, v3, p2, v4}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id:I

    return p0
.end method

.method public final notify(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 7

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, ", id:"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notification notify("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p1, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Notification skipped(Instant App)("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final notify(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    .line 106
    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, ", id:"

    const-string v3, ", tag:"

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result v5

    const-string v6, "Notification notify("

    .line 108
    invoke-static {v6, v4, v3, p3, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    invoke-virtual {p1, p3, p0, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {p1, p3, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->id()I

    move-result p0

    const-string v0, "Notification skipped(Instant App)("

    .line 112
    invoke-static {v0, p2, v3, p3, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public varargs abstract show(Landroid/content/Context;[Ljava/lang/Object;)V
.end method
