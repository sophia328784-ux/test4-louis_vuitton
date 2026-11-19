.class final enum Lcom/sightcall/universal/media/UploaderService$Notification$2;
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

    const-string v0, "CORRUPTED_UPLOAD"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/media/UploaderService$Notification$2;-><init>(Ljava/lang/String;II)V

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
    .locals 1

    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->a(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const-string v0, "err"

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v0, Lcom/sightcall/universal/R$string;->universal_media_uploader_notification_corrupted_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    sget p1, Lcom/sightcall/universal/R$drawable;->universal_ic_warning_white_24dp:I

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method
