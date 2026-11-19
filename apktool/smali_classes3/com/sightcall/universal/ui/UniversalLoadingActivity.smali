.class public Lcom/sightcall/universal/ui/UniversalLoadingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private acdRequestTimeoutHandler:Landroid/os/Handler;

.field private final acdRequestTimeoutRunnable:Ljava/lang/Runnable;

.field private cancelAcd:Landroid/widget/Button;

.field private consentDialog:Landroidx/fragment/app/DialogFragment;

.field private finishAndIgnoreRtcc:Z

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private load:Landroid/widget/LinearLayout;

.field private message:Landroid/widget/TextView;

.field private messageAcd:Landroid/widget/TextView;

.field private progress:Landroid/view/View;

.field timeOutCountdownTimer:Landroid/os/CountDownTimer;

.field private title:Landroid/widget/TextView;

.field private universalDisplayName:Lcom/sightcall/universal/ui/UniversalDisplayName;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->timeOutCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Le51;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le51;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;I)V

    iput-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$showConsentDialog$6(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->instrumented$0$onCreate$-Landroid-os-Bundle--V(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/sightcall/universal/ui/UniversalLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sightcall/universal/ui/UniversalLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc()V

    return-void
.end method

.method private declared-synchronized acceptConsent(Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->status:Lcom/sightcall/session/Reference$UseCase$Consent$Status;

    sget-object v1, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "Consent already accepted or refused!"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Accepted;

    iput-object v0, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->status:Lcom/sightcall/session/Reference$UseCase$Consent$Status;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/consent/ConsentResultEvent;

    invoke-direct {v1, p1}, Lcom/sightcall/universal/consent/ConsentResultEvent;-><init>(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private cancelAcd()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of v0, p0, Lcom/sightcall/universal/scenario/steps/AcdCallStep;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf31;

    check-cast p0, Lcom/sightcall/universal/scenario/steps/AcdCallStep;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lf31;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private cancelTimeout()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->timeOutCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelTimeoutAcd()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private checkForConsent()V
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->dismissConsentDialog()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Usecase;->guest()Lcom/sightcall/universal/agent/Usecase$Guest;

    move-result-object v1

    iget-object v1, v1, Lcom/sightcall/universal/agent/Usecase$User;->consent:Lcom/sightcall/session/Reference$UseCase$Consent;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->ignoreConsent()Z

    move-result v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sightcall/session/Reference$UseCase$Consent;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->showConsentDialog(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->dismissConsentDialog()V

    return-void
.end method

.method private dismissConsentDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->consentDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->consentDialog:Landroidx/fragment/app/DialogFragment;

    :cond_0
    return-void
.end method

.method private finishAndIgnoreRtcc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc:Z

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->dismissConsentDialog()V

    invoke-virtual {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finish()V

    return-void
.end method

.method private finishIfUniversalIsNotLoading()Z
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sightcall/universal/ui/UniversalLoadingActivity$2;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc()V

    :cond_4
    return v1
.end method

.method private static synthetic instrumented$0$onCreate$-Landroid-os-Bundle--V(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$onCreate$2(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method

.method public static intent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.sightcall.universal.LoadingActivity"

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/Utils;->extractActivityClassFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x30000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isKeyguardLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$askDisplayName$4(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/model/Config;->displayName(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p2

    invoke-interface {p2}, Lcom/sightcall/universal/di/SDKInjectorI;->getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->selectLanguage(Lcom/sightcall/livetranslation/domain/Language;)V

    :cond_1
    iget-object p2, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->universalDisplayName:Lcom/sightcall/universal/ui/UniversalDisplayName;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->load:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;->accept()V

    return-void
.end method

.method private static synthetic lambda$cancelAcd$3(Lcom/sightcall/universal/scenario/Step;)V
    .locals 0

    check-cast p0, Lcom/sightcall/universal/scenario/steps/AcdCallStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->cancelAcd()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    sget v0, Lcom/sightcall/universal/R$string;->universal_acd_request_timeout:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    new-instance v0, Le51;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le51;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    invoke-virtual {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelAcd()V

    return-void
.end method

.method private synthetic lambda$showConsentDialog$5(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acceptConsent(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showConsentDialog$6(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->refuseConsent(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showConsentDialog$7(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 3

    iget-object p1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->termsUrl:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private safeGetString(I)Ljava/lang/CharSequence;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs safeGetString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->safeGetString(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private varargs setText(Landroid/widget/TextView;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->safeGetString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static setVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showConsentDialog(Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 7

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->dismissConsentDialog()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->positiveButton:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    new-instance v5, Lf51;

    invoke-direct {v5, p0, p1, v2}, Lf51;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;I)V

    invoke-direct {v4, v1, v3, v5}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->negativeButton:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v4, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    new-instance v5, Lf51;

    invoke-direct {v5, p0, p1, v3}, Lf51;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;I)V

    invoke-direct {v4, v1, v3, v5}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->termsLabel:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v4, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    new-instance v5, Lf51;

    const/4 v6, 0x2

    invoke-direct {v5, p0, p1, v6}, Lf51;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;I)V

    invoke-direct {v4, v1, v3, v5}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;

    iget-object v3, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->message:Ljava/lang/String;

    new-array v4, v2, [Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;

    invoke-direct {v1, v3, p1, v0}, Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ConsentDialogFragment"

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->consentDialog:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/util/Feature;->LOADING_ACTIVITY:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sightcall/universal/ui/UniversalLoadingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/core/app/ActivityOptionsCompat;->a(Landroid/content/Context;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startAcdRequestTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget v0, v0, Lcom/sightcall/universal/agent/Usecase;->acdRequestTimeout:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->acdRequestTimeoutRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUi()V
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->acd()Lnet/rtccloud/sdk/AcdModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AcdModule;->get()Lnet/rtccloud/sdk/AcdModule$Request;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsIndexedAcd(Lnet/rtccloud/sdk/AcdModule$Request;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;->agentRequest()Lcom/sightcall/universal/guest/HttpAcdRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsEstimatedAcd(Lcom/sightcall/universal/guest/HttpAcdRequest;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsUndefined()V

    return-void
.end method

.method private updateUiAsCancelAcd()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelAcd:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateUiAsEstimatedAcd(Lcom/sightcall/universal/guest/HttpAcdRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$string;->universal_acd_title:I

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;I)V

    sget-object v0, Lcom/sightcall/universal/ui/UniversalLoadingActivity$2;->$SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/guest/HttpAcdRequest;->status()Lcom/sightcall/universal/guest/HttpAcdRequest$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$string;->universal_acd_message_estimated_wait_time:I

    invoke-virtual {p1}, Lcom/sightcall/universal/guest/HttpAcdRequest;->estimatedTime()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->safeGetString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    :goto_0
    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private updateUiAsIndexedAcd(Lnet/rtccloud/sdk/AcdModule$Request;)V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AcdModule$Request;->isCancelled()Z

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    sget v3, Lcom/sightcall/universal/R$string;->universal_acd_title:I

    invoke-direct {p0, v2, v3}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-nez v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v2, v4}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AcdModule$Request;->isReady()Z

    move-result v4

    if-eqz v4, :cond_1

    sget p1, Lcom/sightcall/universal/R$string;->universal_acd_message_ready:I

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->safeGetString(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget v4, Lcom/sightcall/universal/R$string;->universal_acd_message_queue:I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AcdModule$Request;->index()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lnet/rtccloud/sdk/AcdModule$Request;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->safeGetString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {v2, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move v3, v1

    :cond_3
    invoke-static {p1, v3}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->messageAcd:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private updateUiAsUndefined()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->setVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic v(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$showConsentDialog$5(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sightcall/universal/ui/UniversalLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic x(Lcom/sightcall/universal/scenario/steps/AcdCallStep;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$cancelAcd$3(Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public static synthetic y(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$askDisplayName$4(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/livetranslation/domain/Language;)V

    return-void
.end method

.method public static synthetic z(Lcom/sightcall/universal/ui/UniversalLoadingActivity;Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->lambda$showConsentDialog$7(Lcom/sightcall/session/Reference$UseCase$Consent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public askDisplayName(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->load:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->universalDisplayName:Lcom/sightcall/universal/ui/UniversalDisplayName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->universalDisplayName:Lcom/sightcall/universal/ui/UniversalDisplayName;

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->displayNameMode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgy0;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v3}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sightcall/universal/ui/UniversalDisplayName;->setup(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;Ljava/lang/String;Lcom/sightcall/universal/ui/UniversalDisplayName$DisplayNameCallback;)V

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAcdQueueEvent(Lnet/rtccloud/sdk/event/acd/AcdQueueEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/acd/AcdQueueEvent;->request()Lnet/rtccloud/sdk/AcdModule$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsIndexedAcd(Lnet/rtccloud/sdk/AcdModule$Request;)V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->startAcdRequestTimeout()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsCancelAcd()V

    return-void
.end method

.method public onAcdReadyEvent(Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeoutAcd()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;->request()Lnet/rtccloud/sdk/AcdModule$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsIndexedAcd(Lnet/rtccloud/sdk/AcdModule$Request;)V

    return-void
.end method

.method public onCallReportEvent(Lcom/sightcall/universal/event/CallReportEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc()V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/ui/UniversalLoadingActivity$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    return-void
.end method

.method public onConsentRequestEvent(Lcom/sightcall/universal/consent/ConsentRequestEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lcom/sightcall/universal/consent/ConsentRequestEvent;->consent()Lcom/sightcall/session/Reference$UseCase$Consent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->showConsentDialog(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniversalLoadingActivity.onCreate() Scenario status is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/scenario/UniversalScenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {p0}, Lcom/sightcall/universal/util/Utils;->isLaunchedFromRecents(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishIfUniversalIsNotLoading()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget p1, Lcom/sightcall/universal/R$layout;->universal_activity_loading:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->keyguardManager:Landroid/app/KeyguardManager;

    sget p1, Lcom/sightcall/universal/R$id;->universal_loading_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->title:Landroid/widget/TextView;

    sget p1, Lcom/sightcall/universal/R$id;->universal_loading_message:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    sget p1, Lcom/sightcall/universal/R$id;->universal_loading_message_acd:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->messageAcd:Landroid/widget/TextView;

    sget p1, Lcom/sightcall/universal/R$id;->universal_loading_progress:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->progress:Landroid/view/View;

    sget p1, Lcom/sightcall/universal/R$id;->display:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/ui/UniversalDisplayName;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->universalDisplayName:Lcom/sightcall/universal/ui/UniversalDisplayName;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/sightcall/universal/R$id;->load:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->load:Landroid/widget/LinearLayout;

    sget p1, Lcom/sightcall/universal/R$id;->cancel_acd:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelAcd:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUi()V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelAcd:Landroid/widget/Button;

    new-instance v0, Lhi;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->timeOutCountdownTimer:Landroid/os/CountDownTimer;

    if-nez p1, :cond_2

    new-instance v0, Lcom/sightcall/universal/ui/UniversalLoadingActivity$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/universal/ui/UniversalLoadingActivity$1;-><init>(Lcom/sightcall/universal/ui/UniversalLoadingActivity;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    iput-object p0, v1, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->timeOutCountdownTimer:Landroid/os/CountDownTimer;

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeoutAcd()V

    return-void
.end method

.method public onDisplayNameRequestEvent(Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;->displayNameAndLiveTranslation()Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->askDisplayName(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V

    return-void
.end method

.method public onExternalAcdRequest(Lcom/sightcall/universal/guest/HttpAcdRequest;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelTimeout()V

    invoke-direct {p0, p1}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUiAsEstimatedAcd(Lcom/sightcall/universal/guest/HttpAcdRequest;)V

    return-void
.end method

.method public onScenarioStatusEvent(Lcom/sightcall/universal/scenario/Scenario$StatusEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishIfUniversalIsNotLoading()Z

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishIfUniversalIsNotLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->updateUi()V

    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->checkForConsent()V

    return-void
.end method

.method public onStatusUpdate(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/ui/UniversalLoadingActivity$2;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->message:Landroid/widget/TextView;

    sget v0, Lcom/sightcall/universal/R$string;->universal_network_connection_lost:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->cancelAcd:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->finishAndIgnoreRtcc:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->dismissConsentDialog()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v2

    sget-object v3, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-eq v1, v2, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "Keyguard is active, wait for user action"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->interrupt()V

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized refuseConsent(Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->status:Lcom/sightcall/session/Reference$UseCase$Consent$Status;

    sget-object v1, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Pending;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "Consent already accepted or refused!"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;->INSTANCE:Lcom/sightcall/session/Reference$UseCase$Consent$Status$Refused;

    iput-object v0, p1, Lcom/sightcall/session/Reference$UseCase$Consent;->status:Lcom/sightcall/session/Reference$UseCase$Consent$Status;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/consent/ConsentResultEvent;

    invoke-direct {v1, p1}, Lcom/sightcall/universal/consent/ConsentResultEvent;-><init>(Lcom/sightcall/session/Reference$UseCase$Consent;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
