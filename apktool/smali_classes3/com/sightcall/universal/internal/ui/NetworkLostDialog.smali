.class public Lcom/sightcall/universal/internal/ui/NetworkLostDialog;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkLostDialog"

.field protected static startTime:J = -0x1L


# instance fields
.field protected final handler:Landroid/os/Handler;

.field protected final progressRunnable:Ljava/lang/Runnable;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;-><init>(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->progressRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$2;-><init>(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static newInstance()Lcom/sightcall/universal/internal/ui/NetworkLostDialog;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->updateText(Landroid/app/Dialog;)V

    return-void
.end method

.method private shouldBeDismissed()Z
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p0

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->newInstance()Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    :cond_0
    return-void
.end method

.method private timeout()J
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->config()Lcom/sightcall/universal/model/Config;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->deadPartyTimeout()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private updateText(Landroid/app/Dialog;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeout()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->startTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sget v1, Lcom/sightcall/universal/R$id;->universal_network_lost_message:I

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$string;->universal_call_reconnecting:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->startTime:J

    return-void
.end method

.method public hangup()V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "NetworkLostDialog.hangup()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->cancelTimeout()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sightcall/universal/R$layout;->universal_dialog_network_lost:I

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->t:Landroid/view/View;

    iput v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->s:I

    sget v0, Lcom/sightcall/universal/R$string;->universal_call_reconnecting_cancel:I

    new-instance v1, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$3;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$3;-><init>(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->updateText(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$4;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->cancelTimeout()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->resumeTimeout()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->shouldBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->cancelTimeout()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->pauseTimeout()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public pauseTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeTimeout()V
    .locals 6

    sget-wide v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->startTime:J

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->startTime:J

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeout()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->hangup()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->timeout()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
