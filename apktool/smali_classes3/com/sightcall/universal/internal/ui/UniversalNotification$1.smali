.class final enum Lcom/sightcall/universal/internal/ui/UniversalNotification$1;
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


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    .line 9
    const-string v0, "OVERLAY_PERMISSION_REQUIRED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;-><init>(Ljava/lang/String;III)V

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_LOW:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    return-void
.end method


# virtual methods
.method public varargs show(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {p2, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$1;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    sget v1, Lcom/sightcall/universal/R$drawable;->universal_ic_voice_chat_24dp:I

    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    sget v1, Lcom/sightcall/graphik/R$color;->universal_colorNotification:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->D:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_notification_overlay_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    sget v1, Lcom/sightcall/universal/R$string;->universal_notification_overlay_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, v0, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    const/16 p2, 0x10

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    const-string p2, "status"

    iput-object p2, v0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->notify(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method
