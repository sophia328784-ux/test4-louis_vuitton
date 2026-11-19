.class public Lcom/sightcall/universal/internal/model/GpsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/GpsRequest$Event;
    }
.end annotation


# static fields
.field static final ACTIONS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sightcall/common/DataChannelAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG:I = 0x1


# instance fields
.field private isInitialRequest:Z

.field private isRequesting:Z

.field private location:Landroid/location/Location;

.field private final timeout:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/model/GpsRequest;->ACTIONS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isInitialRequest:Z

    new-instance v0, Lcom/sightcall/universal/internal/model/GpsRequest$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/model/GpsRequest$1;-><init>(Lcom/sightcall/universal/internal/model/GpsRequest;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->timeout:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/model/GpsRequest;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isInitialRequest:Z

    return-void
.end method

.method private handleLocation(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->Companion:Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;->fromJson(Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    move-result-object p1

    new-instance v0, Landroid/location/Location;

    const-string v1, "Remote"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getAccuracy()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/location/Location;->setAccuracy(F)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->location:Landroid/location/Location;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/internal/model/GpsRequest$Event;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/internal/model/GpsRequest$Event;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onRestart()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStart()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->timeout:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->timeout:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handle(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/model/GpsRequest$2;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->Companion:Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;

    invoke-virtual {p1, p2}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;->fromJson(Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    move-result-object p1

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;

    invoke-virtual {v0}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStart()V

    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/model/GpsRequest;->handleLocation(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupAccepted;

    invoke-virtual {p2}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;

    invoke-virtual {p2}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    invoke-virtual {p2}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onStop()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/model/GpsRequest;->onRestart()V

    return-void
.end method

.method public isInitialRequest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isInitialRequest:Z

    return p0
.end method

.method public isRequesting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    return p0
.end method

.method public location()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->location:Landroid/location/Location;

    return-object p0
.end method

.method public declared-synchronized onStart()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->timeout:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/model/GpsRequest$Event;

    invoke-direct {v1}, Lcom/sightcall/universal/internal/model/GpsRequest$Event;-><init>()V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/GpsRequest;->timeout:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/model/GpsRequest$Event;

    invoke-direct {v1}, Lcom/sightcall/universal/internal/model/GpsRequest$Event;-><init>()V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
