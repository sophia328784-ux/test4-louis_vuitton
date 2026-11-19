.class public Lcom/sightcall/universal/fcm/UniversalFcm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final LUT:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final token:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/preferences/StringPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FCM"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/fcm/UniversalFcm;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/fcm/UniversalFcm$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/fcm/UniversalFcm$1;-><init>(Lcom/sightcall/universal/fcm/UniversalFcm;)V

    iput-object v0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->LUT:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/fcm/UniversalFcm$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/fcm/UniversalFcm$2;-><init>(Lcom/sightcall/universal/fcm/UniversalFcm;)V

    iput-object v0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->token:Lcom/sightcall/universal/util/Lazy;

    iput-object p1, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->context:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/fcm/UniversalFcm;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->context:Landroid/content/Context;

    return-object p0
.end method

.method private fireNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private setupNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "data"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "upload_file"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Landroid/content/ComponentName;

    const-string p5, ".offline.OfflineMediaActivity"

    invoke-static {v0, p5}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, v0, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget p4, Lcom/sightcall/universal/R$string;->universal_feature_offline:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p4, "smart_ocr"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p4, Landroid/content/ComponentName;

    const-string p5, ".OCR.liveOCR.PickModelActivity"

    invoke-static {v0, p5}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, v0, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget p4, Lcom/sightcall/universal/R$string;->universal_feature_ocr:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p4, "ar_overlay"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Landroid/content/ComponentName;

    const-string p5, "com.sightcall.agent"

    const-string v0, "com.sightcall.features.agent.arflow.liveQR.PickARModelActivity"

    invoke-direct {p4, p5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget p4, Lcom/sightcall/universal/R$string;->universal_feature_ar:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p4, "video_session"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Landroid/content/ComponentName;

    const-string p5, ".StartActivity"

    invoke-static {v0, p5}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, v0, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget p4, Lcom/sightcall/universal/R$string;->universal_feature_start:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const/high16 p4, 0x48000000    # 131072.0f

    const/4 p5, 0x0

    invoke-static {p1, p5, v1, p4}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->DEFAULT_HIGH:Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->create(Landroid/content/Context;)V

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotificationChannel;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, v1, Landroidx/core/app/NotificationCompat$Builder;->m:I

    const-string v0, "msg"

    iput-object v0, v1, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    sget v0, Lcom/sightcall/universal/R$drawable;->universal_ic_send_24dp:I

    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v1, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    const/16 p2, 0x10

    const/4 v0, 0x1

    invoke-virtual {v1, p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-static {p3}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    invoke-virtual {v1, p2, p5}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 p2, 0x8

    invoke-virtual {v1, p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iput-object p4, v1, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/fcm/UniversalFcm;->fireNotification(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 9

    sget-object v0, Lcom/sightcall/universal/fcm/UniversalFcm;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p1, Lcom/google/firebase/messaging/RemoteMessage;->b:Landroid/os/Bundle;

    const-string v2, "google.sent_time"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_0
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onMessageReceived(%s) @ %d"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->W1()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v8, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->W1()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, v1

    move-object v6, v5

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v6, v0

    goto :goto_2

    :cond_4
    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v5, v0

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->context:Landroid/content/Context;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sightcall/universal/fcm/UniversalFcm;->setupNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v3, p0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->W1()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/sightcall/universal/fcm/UniversalFcm;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "[%s] -> %s"

    invoke-virtual {v1, v4, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/sightcall/universal/fcm/UniversalFcm;->LUT:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    :try_start_2
    invoke-static {v1}, Lcom/sightcall/universal/model/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    sget-object v1, Lcom/sightcall/universal/fcm/UniversalFcm;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sightcall/universal/fcm/UniversalFcm;->token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fetched"

    goto :goto_0

    :cond_0
    const-string v1, "refreshed"

    :goto_0
    sget-object v2, Lcom/sightcall/universal/fcm/UniversalFcm;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "Token has been automatically %s:\n[%s] -> [%s]"

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->token:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/preferences/StringPreference;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/preferences/StringPreference;->set(Ljava/lang/String;)V

    return-void
.end method

.method public senderId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->context:Landroid/content/Context;

    sget v0, Lcom/sightcall/universal/R$string;->universal_feature_fcm_sender_id:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public token()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/fcm/UniversalFcm;->token:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/preferences/StringPreference;

    invoke-virtual {p0}, Lcom/sightcall/universal/preferences/StringPreference;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
