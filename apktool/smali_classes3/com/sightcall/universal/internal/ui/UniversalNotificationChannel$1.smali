.class final enum Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel$1;
.super Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x5

    const-string v1, "RINGTONE"

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel$1;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;-><init>(ILjava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public channel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 2

    invoke-super {p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->channel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->findDefaultRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object p0
.end method
