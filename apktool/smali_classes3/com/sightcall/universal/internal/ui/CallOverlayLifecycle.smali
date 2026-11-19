.class Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final genericCallActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->genericCallActivities:Ljava/util/Set;

    return-void
.end method

.method private isGenericCallActivity(Landroid/app/Activity;)Z
    .locals 1

    instance-of p0, p1, Lcom/sightcall/universal/internal/ui/CallActivity;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/ar/UniversalAr;->getActivityClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->isGenericCallActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->genericCallActivities:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->hide(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->genericCallActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/sightcall/universal/util/UiUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/UniversalScenario;->is(Lcom/sightcall/universal/scenario/Scenario$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v0

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v0, v2, :cond_3

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v0, v2, :cond_8

    :cond_3
    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->isGenericCallActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->genericCallActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;->isGenericCallActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->show(Landroid/content/Context;)V

    :cond_8
    :goto_1
    return-void
.end method
