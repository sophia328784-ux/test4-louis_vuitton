.class public final Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/screencast/ScreenCastRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0008\u0010\u0015\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;",
        "Lcom/sightcall/universal/screencast/ScreenCastRepository;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "onServiceReady",
        "Lkotlin/Function1;",
        "Landroid/app/Service;",
        "",
        "connectionService",
        "Landroid/content/ServiceConnection;",
        "isServiceBound",
        "",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "serviceInstance",
        "Lcom/sightcall/universal/screencast/MediaProjectionService;",
        "bindService",
        "startService",
        "service",
        "unBindService",
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
.field public static final Companion:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$Companion;

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "9999"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Screen Cast"


# instance fields
.field private connectionService:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private isServiceBound:Z

.field private notificationManager:Landroid/app/NotificationManager;

.field private onServiceReady:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Service;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private serviceInstance:Lcom/sightcall/universal/screencast/MediaProjectionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->Companion:Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setConnectionService$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static final synthetic access$setServiceBound$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->isServiceBound:Z

    return-void
.end method

.method public static final synthetic access$setServiceInstance$p(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Lcom/sightcall/universal/screencast/MediaProjectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->serviceInstance:Lcom/sightcall/universal/screencast/MediaProjectionService;

    return-void
.end method


# virtual methods
.method public bindService(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Service;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->isServiceBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->unBindService()V

    :cond_0
    new-instance v0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl$bindService$1;-><init>(Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    const-class v2, Lcom/sightcall/universal/screencast/MediaProjectionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->onServiceReady:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->isServiceBound:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    return-void
.end method

.method public startService(Landroid/app/Service;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "9999"

    const-string v3, "Screen Cast"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->E:I

    sget v4, Lcom/sightcall/universal/R$drawable;->universal_ic_call_status_screencast_0:I

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v4, v5, Landroid/app/Notification;->icon:I

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-static {v3}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk29()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x20

    invoke-virtual {p1, p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    const-class v1, Lcom/sightcall/universal/screencast/MediaProjectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public unBindService()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->serviceInstance:Lcom/sightcall/universal/screencast/MediaProjectionService;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->isServiceBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->isServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->connectionService:Landroid/content/ServiceConnection;

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/screencast/ScreenCastRepositoryImpl;->notificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_2

    const-string v0, "9999"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    return-void
.end method
