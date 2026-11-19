.class public Lcom/sightcall/universal/media/UploaderService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/UploaderService$Notification;,
        Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;,
        Lcom/sightcall/universal/media/UploaderService$OverwriteMetadataTask;
    }
.end annotation


# instance fields
.field private final failedMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field groupCounters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field groupIterator:Ljava/util/Iterator;

.field private isRunning:Z

.field private media:Lcom/sightcall/universal/media/Media;

.field private mediaIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field metadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

.field private final pendingMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final succeededMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->pendingMedia:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->succeededMedia:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->failedMedia:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->groupCounters:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/media/Media;Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/media/UploaderService;->lambda$onUploadError$1(Lcom/sightcall/universal/media/Media;Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/universal/media/UploaderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->bootstrap()V

    return-void
.end method

.method private bootstrap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/media/UploaderService;->isRunning:Z

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->trigger()V

    return-void
.end method

.method public static synthetic c(Lcom/sightcall/universal/media/Media;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/media/UploaderService;->lambda$onParseFail$0(Lcom/sightcall/universal/media/Media;Landroid/content/Context;)V

    return-void
.end method

.method private createGroup()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->groupIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->groupIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;

    iget-object v1, v0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->metadata:Lcom/sightcall/universal/media/Metadata;

    iget v2, v0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->count:I

    invoke-static {v1, v2}, Lcom/sightcall/universal/media/mapper/PictureGroupeV3MapperKt;->createPictureGroupV3Request(Lcom/sightcall/universal/media/Metadata;I)Lcom/sightcall/universal/media/PictureGroupV3Request;

    move-result-object v1

    iget-object v0, v0, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->metadata:Lcom/sightcall/universal/media/Metadata;

    new-instance v2, Lcom/sightcall/universal/media/UploaderService$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sightcall/universal/media/UploaderService$1;-><init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/media/GroupClient;->createGroup(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderService;->groupIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->startSending()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/media/UploaderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->createGroup()V

    return-void
.end method

.method private doParse()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/media/ParseMediaTask;

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/media/ParseMediaTask;-><init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Media;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/media/UploaderService;I)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/media/UploaderService;->retryPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getTotalLength(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Media;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/universal/media/Media;

    invoke-virtual {v2}, Lcom/sightcall/universal/media/Media;->lengthInBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private interrupt(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->cancel(Lcom/sightcall/universal/media/UploaderService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/media/UploaderService;->isRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$onParseFail$0(Lcom/sightcall/universal/media/Media;Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/sightcall/universal/media/MediaStorage;->getFailureDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent;

    const/4 v1, 0x0

    sget-object v2, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->FAILURE:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v0, p0, v1, v2}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onUploadError$1(Lcom/sightcall/universal/media/Media;Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)V
    .locals 2

    invoke-static {p1}, Lcom/sightcall/universal/media/MediaStorage;->getFailureDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/Media;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/media/MediaUploadEvent;

    sget-object v1, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->FAILURE:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v0, p0, p2, v1}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyCorruptedMedia(Lcom/sightcall/universal/media/Media;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->CORRUPTED_UPLOAD:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v1}, Lcom/sightcall/universal/media/UploaderService$Notification;->notify(Lcom/sightcall/universal/media/UploaderService;Ljava/lang/String;Landroid/app/Notification;)V

    return-void
.end method

.method private notifyFailedUploads()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->failedMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->FAILED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sightcall/universal/media/UploaderService;->failedMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sightcall/universal/media/UploaderService;->failedMedia:Ljava/util/List;

    invoke-static {v3}, Lcom/sightcall/universal/media/UploaderService;->getTotalLength(Ljava/util/List;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sightcall/universal/util/Utils;->bytes2size(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sightcall/universal/internal/util/NotificationBuilderCompat;->setContentInfo(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification;->notify(Lcom/sightcall/universal/media/UploaderService;Landroid/app/Notification;)V

    return-void
.end method

.method private notifyPendingMedia(Lcom/sightcall/universal/media/Media;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v3, Lcom/sightcall/universal/media/UploaderService$Notification;->UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v3, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-static {v0, v1, v1}, Lcom/sightcall/universal/util/UiUtils;->extractThumbnail(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u2022 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sightcall/universal/util/Utils;->bytes2size(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->pendingMedia:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sightcall/universal/media/UploaderService;->pendingMedia:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/sightcall/universal/internal/util/NotificationBuilderCompat;->setContentInfo(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lcom/sightcall/universal/media/UploaderService$Notification;->notify(Lcom/sightcall/universal/media/UploaderService;Landroid/app/Notification;)V

    return-void
.end method

.method private notifySucceededUploads()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->succeededMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->SUCCEEDED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sightcall/universal/media/UploaderService;->succeededMedia:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sightcall/universal/media/UploaderService;->succeededMedia:Ljava/util/List;

    invoke-static {v3}, Lcom/sightcall/universal/media/UploaderService;->getTotalLength(Ljava/util/List;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sightcall/universal/util/Utils;->bytes2size(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sightcall/universal/internal/util/NotificationBuilderCompat;->setContentInfo(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sightcall/universal/media/UploaderService$Notification;->notify(Lcom/sightcall/universal/media/UploaderService;Landroid/app/Notification;)V

    return-void
.end method

.method private static retryPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/sightcall/universal/media/UploaderService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x8000000

    invoke-static {v0, p1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetService(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v0, p1, v1, p0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2, v0, p1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    return-object v2
.end method

.method public static setupAlarm(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sightcall/universal/media/UploadReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startSending()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->media()Lcom/sightcall/universal/media/UniversalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/media/UniversalMedia;->uploads()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->pendingMedia:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->pendingMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->mediaIterator:Ljava/util/Iterator;

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lf31;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private declared-synchronized trigger()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sightcall/universal/media/UploaderService;->isRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->mediaIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->notifySucceededUploads()V

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->notifyFailedUploads()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sightcall/universal/media/UploaderService;->interrupt(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->mediaIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/Media;

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/media/UploaderService;->notifyPendingMedia(Lcom/sightcall/universal/media/Media;)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->doParse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/media/UploaderService;->interrupt(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->UPLOADING:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->builder(Lcom/sightcall/universal/media/UploaderService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/media/UploaderService$Notification;->id()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->NO_CONNECTIVITY:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->cancel(Lcom/sightcall/universal/media/UploaderService;)V

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->FAILED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->cancel(Lcom/sightcall/universal/media/UploaderService;)V

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$Notification;->SUCCEEDED_UPLOADS:Lcom/sightcall/universal/media/UploaderService$Notification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService$Notification;->cancel(Lcom/sightcall/universal/media/UploaderService;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->media()Lcom/sightcall/universal/media/UniversalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/media/UniversalMedia;->uploads()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/ParseMetadataTask;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/media/ParseMetadataTask;-><init>(Lcom/sightcall/universal/media/UploaderService;Ljava/util/List;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/media/UploaderService;->interrupt(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onParseCancel(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/ParseMediaTask$Result;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    new-instance v1, Lcom/sightcall/universal/media/MediaUploadEvent;

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/sightcall/universal/media/ParseMediaTask$Result;->metadata:Lcom/sightcall/universal/media/Metadata;

    :cond_1
    sget-object p2, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->CANCELLED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v1, p1, v0, p2}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onParseFail(Lcom/sightcall/universal/media/Media;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/media/UploaderService;->notifyCorruptedMedia(Lcom/sightcall/universal/media/Media;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->mediaIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lw21;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v0, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->trigger()V

    return-void
.end method

.method public onParseMetadataCancel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Metadata;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onParseMetadataCancel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onParseMetadataFail()V
    .locals 1

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "onParseMetadataFail"

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/logs/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onParseMetadataSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Metadata;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/media/UploaderService;->metadataList:Ljava/util/List;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/media/Metadata;

    iget-object v2, v1, Lcom/sightcall/universal/media/Metadata;->localGroup:Ljava/lang/String;

    if-nez v2, :cond_1

    iput-object v0, v1, Lcom/sightcall/universal/media/Metadata;->localGroup:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1}, Lcom/sightcall/universal/media/Metadata;->cloudGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sightcall/universal/media/UploaderService;->groupCounters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sightcall/universal/media/Metadata;->localGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sightcall/universal/media/UploaderService;->groupCounters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sightcall/universal/media/Metadata;->localGroup()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;

    invoke-direct {v4, p0, v1}, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;-><init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Metadata;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/sightcall/universal/media/UploaderService;->groupCounters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sightcall/universal/media/Metadata;->localGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;

    invoke-virtual {v1}, Lcom/sightcall/universal/media/UploaderService$GroupDataHolder;->increment()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sightcall/universal/media/UploaderService;->groupCounters:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/media/UploaderService;->groupIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->createGroup()V

    return-void
.end method

.method public onParseSuccess(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/ParseMediaTask$Result;)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->parserTask:Lcom/sightcall/universal/media/ParseMediaTask;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/MediaUploadEvent;

    iget-object v2, p2, Lcom/sightcall/universal/media/ParseMediaTask$Result;->metadata:Lcom/sightcall/universal/media/Metadata;

    sget-object v3, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->UPLOADING:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v1, p1, v2, v3}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/sightcall/universal/media/ParseMediaTask$Result;->metadata:Lcom/sightcall/universal/media/Metadata;

    iget-object p2, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    new-instance v0, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;

    invoke-direct {v0, p0, p2, p1}, Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;-><init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    invoke-static {p1, p2, v0}, Lcom/sightcall/universal/media/UploaderClient;->upload(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V

    return-void
.end method

.method public onScenarioStatusEvent(Lcom/sightcall/universal/scenario/Scenario$StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/media/UploaderService$2;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/media/UploaderService;->interrupt(Z)V

    return-void
.end method

.method public onUploadError(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lb5;

    const/16 v1, 0x14

    invoke-direct {v0, p1, p0, p2, v1}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUploadFailure(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->failedMedia:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/MediaUploadEvent;

    sget-object v2, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->RESCHEDULED:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v1, p1, p2, v2}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->trigger()V

    return-void
.end method

.method public onUploadSuccess(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/media/UploaderService;->succeededMedia:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/media/UploaderService;->media:Lcom/sightcall/universal/media/Media;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/MediaUploadEvent;

    sget-object v2, Lcom/sightcall/universal/media/MediaUploadEvent$Status;->SUCCESS:Lcom/sightcall/universal/media/MediaUploadEvent$Status;

    invoke-direct {v1, p1, p2, v2}, Lcom/sightcall/universal/media/MediaUploadEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/MediaUploadEvent$Status;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/UploaderService;->trigger()V

    return-void
.end method
