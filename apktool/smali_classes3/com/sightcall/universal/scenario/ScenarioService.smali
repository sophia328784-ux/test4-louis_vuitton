.class public Lcom/sightcall/universal/scenario/ScenarioService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ACTION_STOP:Ljava/lang/String; = "ScenarioService.STOP"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private notification:Lcom/sightcall/universal/scenario/ScenarioNotification;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;-><init>(Lcom/sightcall/universal/scenario/ScenarioService;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public static stop(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScenarioService.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/ScenarioService;->binder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onCreate() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/universal/scenario/ScenarioNotification;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;-><init>(Lcom/sightcall/universal/scenario/ScenarioService;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioService;->notification:Lcom/sightcall/universal/scenario/ScenarioNotification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->onCreate(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onDestroy() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioService;->notification:Lcom/sightcall/universal/scenario/ScenarioNotification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->onDestroy(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand() called with: intent = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], flags = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], startId = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "ScenarioService.STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelfResult(I)Z

    const/4 p0, 0x2

    return p0
.end method

.method public onStepStateEvent(Lcom/sightcall/universal/scenario/Step$StateEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/ScenarioService;->updateNotification()V

    return-void
.end method

.method public updateNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioService;->notification:Lcom/sightcall/universal/scenario/ScenarioNotification;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/ScenarioNotification;->update(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void
.end method
