.class public final Lcom/sightcall/universal/media/AudioForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/AudioForegroundService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\"\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0007H\u0002J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/universal/media/AudioForegroundService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "audioModule",
        "Lnet/rtccloud/sdk/AudioModule;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "createNotification",
        "Landroid/app/Notification;",
        "createNotificationChannel",
        "startAudioModule",
        "Companion",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "AudioForegroundChannel"

.field public static final Companion:Lcom/sightcall/universal/media/AudioForegroundService$Companion;

.field public static final PIP_SYSTEM_NOTIFICATION_ID:I = 0x270f


# instance fields
.field private final audioModule:Lnet/rtccloud/sdk/AudioModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/media/AudioForegroundService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/media/AudioForegroundService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/media/AudioForegroundService;->Companion:Lcom/sightcall/universal/media/AudioForegroundService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/media/AudioForegroundService;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    return-void
.end method

.method private final createNotification()Landroid/app/Notification;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sightcall.digitalflow.ui.DigitalFlowActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3, p0, v1, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "9999"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/sightcall/universal/R$string;->universal_video_call:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    sget v1, Lcom/sightcall/universal/R$string;->universal_tap_to_return_to_call:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    sget p0, Lcom/sightcall/universal/R$drawable;->universal_icon_notification:I

    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p0, v1, Landroid/app/Notification;->icon:I

    const/4 p0, 0x1

    iput p0, v0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private final createNotificationChannel()V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Audio Foreground Service Channel"

    const/4 v2, 0x3

    const-string v3, "AudioForegroundChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final startAudioModule()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/AudioForegroundService;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/sightcall/universal/media/AudioForegroundService;->createNotificationChannel()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/AudioForegroundService;->createNotification()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return p3

    :cond_0
    const/16 p2, 0x270f

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/sightcall/universal/media/AudioForegroundService;->startAudioModule()V

    return p3
.end method
