.class final enum Lcom/sightcall/universal/media/UploaderService$Notification$1;
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


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    const-string v0, "UPLOADING"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/media/UploaderService$Notification$1;-><init>(Ljava/lang/String;II)V

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
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService$Notification$1;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->a(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "progress"

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_uploading_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->s:I

    iput p1, v0, Landroidx/core/app/NotificationCompat$Builder;->t:I

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->u:Z

    const v2, 0x1080088

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService$Notification$1;->builder:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public cancel(Lcom/sightcall/universal/media/UploaderService;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
