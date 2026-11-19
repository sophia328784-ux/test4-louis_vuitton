.class final enum Lcom/sightcall/universal/internal/ui/UniversalNotification$2;
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
    const-string v0, "PING"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;-><init>(Ljava/lang/String;III)V

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    return-void
.end method

.method private fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs show(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 5

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    instance-of v0, p2, Lcom/sightcall/universal/fcm/messages/Ping;

    if-eqz v0, :cond_1

    sget v0, Lcom/sightcall/universal/R$drawable;->universal_ic_cloud_done_white_24dp:I

    move-object v1, p2

    check-cast v1, Lcom/sightcall/universal/fcm/messages/Ping;

    invoke-virtual {v1}, Lcom/sightcall/universal/fcm/messages/Ping;->title()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sightcall/universal/fcm/messages/Ping;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/sightcall/universal/fcm/messages/Test;

    if-eqz v0, :cond_2

    sget v0, Lcom/sightcall/universal/R$drawable;->universal_ic_whatshot_24dp:I

    move-object v1, p2

    check-cast v1, Lcom/sightcall/universal/fcm/messages/Test;

    invoke-virtual {v1}, Lcom/sightcall/universal/fcm/messages/Test;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sightcall/universal/fcm/messages/Test;->text()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v3, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/UniversalNotification$2;->CHANNEL:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v4, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    iget-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->icon:I

    sget v0, Lcom/sightcall/graphik/R$color;->universal_colorNotification:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, v3, Landroidx/core/app/NotificationCompat$Builder;->D:I

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$BigTextStyle;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    const-string v0, "status"

    iput-object v0, v3, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v3, Landroidx/core/app/NotificationCompat$Builder;->m:I

    iput v0, v3, Landroidx/core/app/NotificationCompat$Builder;->E:I

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->f(I)V

    const/16 v1, 0x10

    invoke-virtual {v3, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-boolean v0, v3, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->notify(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
