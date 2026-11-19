.class final enum Lcom/sightcall/universal/media/UploaderService$Notification$3;
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

    const-string v0, "SUCCEEDED_UPLOADS"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/media/UploaderService$Notification$3;-><init>(Ljava/lang/String;II)V

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
    .locals 2

    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->a(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const-string v0, "status"

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v0, Lcom/sightcall/universal/R$drawable;->universal_ic_cloud_done_white_24dp:I

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->icon:I

    sget v0, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_succeeded_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public notify(Lcom/sightcall/universal/media/UploaderService;Landroid/app/Notification;)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p2}, Lcom/sightcall/universal/media/UploaderService$Notification;->notify(Lcom/sightcall/universal/media/UploaderService;Ljava/lang/String;Landroid/app/Notification;)V

    return-void
.end method
