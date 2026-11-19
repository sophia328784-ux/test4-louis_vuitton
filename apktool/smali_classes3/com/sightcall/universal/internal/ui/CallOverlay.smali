.class public Lcom/sightcall/universal/internal/ui/CallOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;,
        Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;
    }
.end annotation


# static fields
.field private static final HANGUP_TAP_TIMEOUT:J

.field private static volatile singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;


# instance fields
.field private callView:Landroid/view/ViewGroup;

.field private consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

.field private final context:Landroid/content/Context;

.field private coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isEnable:Z

.field private isShown:Z

.field private lastHangupTry:J

.field private rootView:Landroid/view/View;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->HANGUP_TAP_TIMEOUT:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isEnable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/sightcall/universal/R$style;->universal_Theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->inflater:Landroid/view/LayoutInflater;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    instance-of p0, v0, Landroid/app/Application;

    if-eqz p0, :cond_0

    check-cast v0, Landroid/app/Application;

    new-instance p0, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlayLifecycle;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addCallView()V
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/sightcall/universal/R$layout;->universal_view_overlay_call:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_hangup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_video_consumer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallOverlay;->getViewType()I

    move-result v4

    const/16 v5, 0x28

    const/4 v6, -0x2

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/util/UniversalSettings;->secureScreen()Lcom/sightcall/universal/util/Lazy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v1}, Lcom/sightcall/universal/internal/view/ViewUtils;->addViewSilently(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->b(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    invoke-static {v2}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->c(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    invoke-static {v3}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->a(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)Z

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v1, v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallOverlay$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/CallOverlay$2;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private addRootView()V
    .locals 8

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallOverlay$1;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/internal/ui/CallOverlay$1;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallOverlay;->getRootType()I

    move-result v5

    const/16 v6, 0x18

    const/4 v7, -0x2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-static {v0, p0, v2}, Lcom/sightcall/universal/internal/view/ViewUtils;->addViewSilently(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private animateAndRemove(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallOverlay$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallOverlay$3;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/view/View;Landroid/view/WindowManager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/ui/CallOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/ui/CallOverlay;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private doHide()V
    .locals 1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->removeCallView()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->removeRootView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    return-void
.end method

.method private doShow(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/util/Feature;->CALL_OVERLAY:Lcom/sightcall/universal/util/Feature;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isEnable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/util/UiUtils;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "Manifest.permission.SYSTEM_ALERT_WINDOW not granted"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotification;->OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->show(Landroid/content/Context;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    :cond_2
    sget-object p1, Lcom/sightcall/universal/internal/ui/UniversalNotification;->OVERLAY_PERMISSION_REQUIRED:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->addRootView()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->addCallView()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->updateViews()V

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V

    return-void
.end method

.method public static bridge synthetic f(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->minMax(III)I

    move-result p0

    return p0
.end method

.method private static getRootType()I
    .locals 1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f6

    return v0

    :cond_0
    const/16 v0, 0x7d6

    return v0
.end method

.method private static getViewType()I
    .locals 1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f6

    return v0

    :cond_0
    const/16 v0, 0x7d2

    return v0
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/CallOverlay;

    move-result-object p0

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->doHide()V

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/CallOverlay;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    if-nez v0, :cond_1

    const-class v1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isShown()Z
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static minMax(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private moveCallViewTo(FFZZ)V
    .locals 10

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v1, p0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    neg-int v2, v0

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v1

    neg-int v7, v5

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8, p4}, Lcom/sightcall/universal/util/UiUtils;->dp2px(FLandroid/content/res/Resources;)F

    move-result p4

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    int-to-float v2, v2

    add-float/2addr v2, p4

    float-to-int v2, v2

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr p1, v8

    iget-object v9, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr p1, v9

    float-to-int p1, p1

    int-to-float v0, v0

    sub-float/2addr v0, p4

    float-to-int v0, v0

    invoke-static {v2, p1, v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->minMax(III)I

    move-result p1

    int-to-float v0, v7

    add-float/2addr v0, p4

    float-to-int v0, v0

    sub-float/2addr p2, v8

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float v2, v5

    sub-float/2addr v2, p4

    float-to-int p4, v2

    invoke-static {v0, p2, p4}, Lcom/sightcall/universal/internal/ui/CallOverlay;->minMax(III)I

    move-result v7

    if-nez p3, :cond_4

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    invoke-interface {p1, p0, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    new-array p2, v1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallOverlay$5;

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/internal/ui/CallOverlay$5;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;Landroid/view/WindowManager$LayoutParams;IIII)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :goto_1
    iget-object p0, v1, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallOverlay$4;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/internal/ui/CallOverlay$4;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZZ)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private removeCallView()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->releaseVideoConsumer()V

    :cond_0
    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    add-float/2addr v0, v4

    new-instance v4, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;-><init>(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZ)V

    iput-object v4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-direct {p0, v0, v2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->animateAndRemove(Landroid/view/View;Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-static {v2, v0, v3}, Lcom/sightcall/universal/internal/view/ViewUtils;->removeViewSilently(Landroid/view/WindowManager;Landroid/view/View;Z)V

    :goto_0
    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    :cond_3
    return-void
.end method

.method private removeRootView()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->windowManager:Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sightcall/universal/internal/view/ViewUtils;->removeViewSilently(Landroid/view/WindowManager;Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->rootView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->show(Landroid/content/Context;Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)V
    .locals 3

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/CallOverlay;

    move-result-object p0

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->b(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F

    move-result v0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->c(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->a(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->doShow(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)V

    return-void
.end method

.method public static terminate(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->singleton:Lcom/sightcall/universal/internal/ui/CallOverlay;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->hide(Landroid/content/Context;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/sightcall/universal/internal/ui/CallOverlay;->coordinates:Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;

    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->hide(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->callView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isShown:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->participants()[Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->consumerView:Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->isEnable:Z

    return-void
.end method

.method public onAudioEvent(Lnet/rtccloud/sdk/event/call/AudioEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->updateViews()V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->hide(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_fullscreen:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    sget v1, Lcom/sightcall/universal/R$id;->universal_overlay_hangup:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->lastHangupTry:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/sightcall/universal/internal/ui/CallOverlay;->HANGUP_TAP_TIMEOUT:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->context:Landroid/content/Context;

    sget v3, Lcom/sightcall/universal/R$string;->universal_call_hangup_again:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-wide v0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay;->lastHangupTry:J

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v4

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    sget-object v2, Lcom/sightcall/universal/internal/view/CallButton;->HANGUP:Lcom/sightcall/universal/internal/view/CallButton;

    iget-object v5, v1, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/view/CallButton;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;)V

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public onLocationEvent(Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->a(Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;)F

    move-result v0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->b(Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;)F

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sightcall/universal/internal/ui/CallOverlay;->moveCallViewTo(FFZZ)V

    return-void
.end method

.method public onParticipantEvent(Lnet/rtccloud/sdk/event/call/ParticipantEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->updateViews()V

    return-void
.end method

.method public onParticipantsEvent(Lnet/rtccloud/sdk/event/call/ParticipantsEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->updateViews()V

    return-void
.end method

.method public onVideoEvent(Lnet/rtccloud/sdk/event/call/VideoEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->updateViews()V

    return-void
.end method
