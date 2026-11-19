.class public Lcom/sightcall/universal/media/offline/OfflineMediaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;,
        Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineNotificationActionReceiver;,
        Lcom/sightcall/universal/media/offline/OfflineMediaService$Request;
    }
.end annotation


# static fields
.field private static final EXTRA_OBJECT_ID:Ljava/lang/String; = "string_object_id"

.field private static final EXTRA_REFERENCE:Ljava/lang/String; = "string_reference"

.field private static final EXTRA_SERVICE_CANCEL:Ljava/lang/String; = "service_is_cancelled"

.field private static final EXTRA_SERVICE_PAUSED:Ljava/lang/String; = "service_is_paused"

.field private static final EXTRA_SERVICE_RESUME:Ljava/lang/String; = "service_is_resumed"

.field private static final EXTRA_URI_LIST:Ljava/lang/String; = "string_uri_list"

.field private static final EXTRA_USECASE:Ljava/lang/String; = "string_usecase"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field bodyFile:Lokhttp3/MultipartBody$Part;

.field bodyName:Lokhttp3/MultipartBody$Part;

.field private call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private fileNumber:I

.field private handler:Landroid/os/Handler;

.field private id:Ljava/lang/String;

.field private isPaused:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private objectId:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private final uploadCallback:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private uriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private usecase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineMediaBinder;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->binder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->isPaused:Z

    new-instance v0, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$1;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uploadCallback:Lretrofit2/Callback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/media/offline/OfflineMediaService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    return-void
.end method

.method public static cancelServiceUpload(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_is_cancelled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private cancelUpload()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->terminateService()V

    return-void
.end method

.method private createOfflineMediaSession()V
    .locals 7

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/offline/OfflineMediaApi;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request;

    iget-object v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->usecase:Ljava/lang/String;

    iget-object v5, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->reference:Ljava/lang/String;

    iget-object v6, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->objectId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/sightcall/universal/media/offline/OfflineMediaApi;->createOfflineMediaSession(Ljava/lang/String;Lcom/sightcall/universal/media/offline/OfflineMediaSession$Request;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService$2;-><init>(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->id:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/media/offline/OfflineMediaService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->url:Ljava/lang/String;

    return-void
.end method

.method private fireNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->createOfflineMediaSession()V

    return-void
.end method

.method private static get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/offline/OfflineMediaApi;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/offline/OfflineMediaApi;

    invoke-static {v0, p0}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/offline/OfflineMediaApi;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->prepareNextFile()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sightcall/universal/media/offline/OfflineMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->sendFile()V

    return-void
.end method

.method private static parseStringToUri(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseUriToString(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static pauseServiceUpload(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_is_paused"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private pauseUpload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->isPaused:Z

    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->setupPausingNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method private prepareNextFile()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->terminateService()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->setupNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v2, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;

    iget-object v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    invoke-direct {v2, v1, v3, v4}, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;-><init>(ZII)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/sightcall/universal/media/offline/FileUtils;->getFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/media/offline/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lokhttp3/RequestBody$Companion$asRequestBody$1;

    invoke-direct {v4, v1, v0}, Lokhttp3/RequestBody$Companion$asRequestBody$1;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    iget v1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lokhttp3/MultipartBody$Part;->c:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lokhttp3/RequestBody$Companion;->b(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v1

    const-string v3, "name"

    invoke-static {v3, v2, v1}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->bodyName:Lokhttp3/MultipartBody$Part;

    const-string v1, "file"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->bodyFile:Lokhttp3/MultipartBody$Part;

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->sendFile()V

    return-void
.end method

.method public static resumeServiceUpload(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service_is_resumed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private resumeUpload()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->isPaused:Z

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->sendFile()V

    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->setupNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method private sendFile()V
    .locals 5

    iget-boolean v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->isPaused:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->terminateService()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/offline/OfflineMediaApi;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->url:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->bodyName:Lokhttp3/MultipartBody$Part;

    iget-object v4, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->bodyFile:Lokhttp3/MultipartBody$Part;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sightcall/universal/media/offline/OfflineMediaApi;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->call:Lretrofit2/Call;

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uploadCallback:Lretrofit2/Callback;

    invoke-interface {v0, p0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void

    :cond_1
    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->setupPausedNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method private setupNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineNotificationActionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OFFLINE_UPLOAD_PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OFFLINE_UPLOAD_CANCEL"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v3, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_uploading_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_uploading_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v4, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, v3, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const-string p1, "progress"

    iput-object p1, v3, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    const p1, 0x1080088

    iget-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    const/4 p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v3, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 p1, 0x8

    invoke-virtual {v3, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    sget p1, Lcom/sightcall/universal/R$drawable;->universal_baseline_pause_24:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_offline_media_pause_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    sget p1, Lcom/sightcall/universal/R$string;->universal_offline_media_cancel_action:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x1080038

    invoke-virtual {v3, p1, v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->a(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private setupPausedNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineNotificationActionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OFFLINE_UPLOAD_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OFFLINE_UPLOAD_CANCEL"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v3, v2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v4, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v3, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const-string v4, "progress"

    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v4, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_paused_title:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    const p1, 0x1080023

    iget-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p1, v4, Landroid/app/Notification;->icon:I

    const/4 p1, 0x2

    invoke-virtual {v3, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/4 p1, 0x1

    const/16 v2, 0x8

    invoke-virtual {v3, v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    sget p1, Lcom/sightcall/universal/R$drawable;->universal_baseline_pause_24:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_offline_media_resume_action:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    sget p1, Lcom/sightcall/universal/R$string;->universal_offline_media_cancel_action:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x1080038

    invoke-virtual {v3, p1, v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->a(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private setupPausingNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    new-instance p0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const-string v0, "progress"

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v0, Lcom/sightcall/universal/R$string;->universal_offline_media_uploader_notification_pausing_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    const p1, 0x1080023

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/media/offline/OfflineMediaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "string_usecase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "string_reference"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "string_object_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "string_uri_list"

    invoke-static {p4}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->parseUriToString(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private terminateService()V
    .locals 5

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;

    iget-object v2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/sightcall/universal/media/offline/OfflineMediaEvent;-><init>(ZII)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public getNumberOfFiles()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fileNumber:I

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->binder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string p2, "service_is_paused"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "service_is_resumed"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "service_is_cancelled"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->pauseUpload()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->resumeUpload()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->terminateService()V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->OFFLINE_MEDIA_UPLOADER:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {p2, p0}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    invoke-direct {p0, p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->setupNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p3

    invoke-direct {p0, p0, p3}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id()I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->handler:Landroid/os/Handler;

    const-string p2, "string_usecase"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->usecase:Ljava/lang/String;

    const-string p2, "string_reference"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->reference:Ljava/lang/String;

    const-string p2, "string_object_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->objectId:Ljava/lang/String;

    const-string p2, "string_uri_list"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->parseStringToUri(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/OfflineMediaService;->uriList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->createOfflineMediaSession()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
