.class public Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final ACTION_ACCEPT:Ljava/lang/String; = "UniversalAgentCallPendingActivity.ACCEPT"

.field public static final ACTION_ASK:Ljava/lang/String; = "UniversalAgentCallPendingActivity.ASK"

.field public static final ACTION_DENY:Ljava/lang/String; = "UniversalAgentCallPendingActivity.DENY"

.field private static final BROADCAST_ACTION_FINISH:Ljava/lang/String; = "UniversalAgentCallPendingActivity.FINISH"

.field private static final EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field private static final INTENT_FILTER_FINISH:Landroid/content/IntentFilter;


# instance fields
.field private final finishReceiver:Landroid/content/BroadcastReceiver;

.field private message:Landroid/os/Parcelable;

.field public timeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "UniversalAgentCallPendingActivity.FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->INTENT_FILTER_FINISH:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->timeout:Z

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private accept()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    check-cast v1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    return-void
.end method

.method public static ask(Landroid/content/Context;Lcom/sightcall/universal/fcm/messages/GuestReady;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->askPendingIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static askPendingIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x40000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "extra_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 p2, 0x48000000    # 131072.0f

    invoke-static {p0, p1, v0, p2}, Lcom/sightcall/pratik/extensions/PendingIntents;->getCompatPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private cancelReadyNotification()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    invoke-virtual {v1, p0, v0}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private deny()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->declined:Z

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    check-cast v1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    return-void
.end method

.method public static finish(Landroid/content/Context;Landroid/os/Parcelable;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "UniversalAgentCallPendingActivity.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private unlockDevice()V
    .locals 2

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk27()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280081

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)Landroid/os/Parcelable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->accept()V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->deny()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 20
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 21
    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->cancelReadyNotification()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->INTENT_FILTER_FINISH:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    instance-of v0, v0, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "UniversalAgentCallPendingActivity.ASK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "UniversalAgentCallPendingActivity.ACCEPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "UniversalAgentCallPendingActivity.DENY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->unlockDevice()V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->message:Landroid/os/Parcelable;

    instance-of p1, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz p1, :cond_5

    sget p1, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_title:I

    sget v0, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_text:I

    sget v1, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_accept:I

    sget v2, Lcom/sightcall/universal/R$string;->universal_agent_notification_guest_ready_deny:I

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sightcall/universal/util/UiUtils;->universalDrawableIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v3, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v4, v5, Landroidx/appcompat/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    iget-object p1, v5, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v5, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    new-instance p1, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    invoke-virtual {v3, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$4;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$4;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->e(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$2;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->d(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    :cond_5
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->accept()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->deny()V

    :goto_2
    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;-><init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b415d94 -> :sswitch_2
        0x6a5fbd68 -> :sswitch_1
        0x70ab45f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
