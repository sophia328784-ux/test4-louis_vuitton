.class final enum Lcom/sightcall/universal/media/UploaderService$Notification$5;
.super Lcom/sightcall/universal/media/UploaderService$Notification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderService$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    const-string v0, "NO_CONNECTIVITY"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/media/UploaderService$Notification$5;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sightcall/universal/media/UploaderService$Notification;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->a(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "err"

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v1, Lcom/sightcall/universal/R$drawable;->universal_ic_cloud_off_white_24dp:I

    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_network_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    sget v1, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_network_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/media/UploaderService;->e(Lcom/sightcall/universal/media/UploaderService;I)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    return-object v0
.end method
