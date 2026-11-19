.class abstract enum Lcom/sightcall/universal/media/UploaderService$Notification;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Notification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/media/UploaderService$Notification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/media/UploaderService$Notification;

.field public static final enum CORRUPTED_UPLOAD:Lcom/sightcall/universal/media/UploaderService$Notification;

.field public static final enum FAILED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

.field public static final enum NO_CONNECTIVITY:Lcom/sightcall/universal/media/UploaderService$Notification;

.field public static final enum SUCCEEDED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

.field public static final enum UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/media/UploaderService$Notification;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;

    sget-object v1, Lcom/sightcall/universal/media/UploaderService$Notification;->CORRUPTED_UPLOAD:Lcom/sightcall/universal/media/UploaderService$Notification;

    sget-object v2, Lcom/sightcall/universal/media/UploaderService$Notification;->SUCCEEDED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    sget-object v3, Lcom/sightcall/universal/media/UploaderService$Notification;->FAILED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    sget-object v4, Lcom/sightcall/universal/media/UploaderService$Notification;->NO_CONNECTIVITY:Lcom/sightcall/universal/media/UploaderService$Notification;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sightcall/universal/media/UploaderService$Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/media/UploaderService$Notification$1;

    sget v1, Lcom/sightcall/universal/R$id;->universal_media_uploader_uploading_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification$1;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;

    new-instance v0, Lcom/sightcall/universal/media/UploaderService$Notification$2;

    sget v1, Lcom/sightcall/universal/R$id;->universal_media_uploader_corrupted_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification$2;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->CORRUPTED_UPLOAD:Lcom/sightcall/universal/media/UploaderService$Notification;

    new-instance v0, Lcom/sightcall/universal/media/UploaderService$Notification$3;

    sget v1, Lcom/sightcall/universal/R$id;->universal_media_uploader_success_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification$3;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->SUCCEEDED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    new-instance v0, Lcom/sightcall/universal/media/UploaderService$Notification$4;

    sget v1, Lcom/sightcall/universal/R$id;->universal_media_uploader_fail_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification$4;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->FAILED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    new-instance v0, Lcom/sightcall/universal/media/UploaderService$Notification$5;

    sget v1, Lcom/sightcall/universal/R$id;->universal_media_uploader_no_connectivity_notification_id:I

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification$5;-><init>(I)V

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->NO_CONNECTIVITY:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-static {}, Lcom/sightcall/universal/media/UploaderService$Notification;->$values()[Lcom/sightcall/universal/media/UploaderService$Notification;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->$VALUES:[Lcom/sightcall/universal/media/UploaderService$Notification;

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

    iput p3, p0, Lcom/sightcall/universal/media/UploaderService$Notification;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/media/UploaderService$Notification;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->root(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

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

.method private static root(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v1, p0}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    sget v1, Lcom/sightcall/graphik/R$color;->universal_colorNotification:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->D:I

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->getLargeIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x10

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/media/UploaderService$Notification;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/UploaderService$Notification;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/media/UploaderService$Notification;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->$VALUES:[Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0}, [Lcom/sightcall/universal/media/UploaderService$Notification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/media/UploaderService$Notification;

    return-object v0
.end method


# virtual methods
.method public abstract builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;
.end method

.method public cancel(Lcom/sightcall/universal/media/UploaderService;)V
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancel(Lcom/sightcall/universal/media/UploaderService;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/UploaderService$Notification;->id:I

    return p0
.end method

.method public notify(Lcom/sightcall/universal/media/UploaderService;Landroid/app/Notification;)V
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p1, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public notify(Lcom/sightcall/universal/media/UploaderService;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result p0

    invoke-virtual {p1, p2, p0, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {p1, p2, p0, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
