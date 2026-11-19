.class public Lcom/sightcall/universal/internal/ui/SurveyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final EXTRA_SURVEY:Ljava/lang/String; = "extra.survey"


# instance fields
.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private survey:Lcom/sightcall/universal/internal/model/Survey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static createIntent(Landroid/content/Context;Lcom/sightcall/universal/internal/model/Survey;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/internal/ui/SurveyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "extra.survey"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private dismissAlertDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private displayAlertDialog()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->survey:Lcom/sightcall/universal/internal/model/Survey;

    iget-object v2, v1, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    iget-object v3, v0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    iget-object v1, v1, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    new-instance v2, Lcom/sightcall/universal/internal/ui/SurveyActivity$2;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity$2;-><init>(Lcom/sightcall/universal/internal/ui/SurveyActivity;)V

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    sget v1, Lcom/sightcall/universal/R$string;->universal_cancel:I

    new-instance v2, Lcom/sightcall/universal/internal/ui/SurveyActivity$1;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity$1;-><init>(Lcom/sightcall/universal/internal/ui/SurveyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private redirectToSurveyAndFinish()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->survey:Lcom/sightcall/universal/internal/model/Survey;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/model/Survey;->uri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    const-string v2, "Survey redirection: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sightcall/universal/internal/util/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    iget-object v4, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a:Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v3, Lcom/sightcall/graphik/R$color;->universal_colorPrimary:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    iput-object v3, v4, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->a:Ljava/lang/Integer;

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    iput-object v3, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->c:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v2

    iget-object v3, v2, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, v2, Landroidx/browser/customtabs/CustomTabsIntent;->b:Landroid/os/Bundle;

    invoke-static {p0, v3, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V
    .locals 10

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->agent()Lcom/sightcall/universal/agent/Usecase$Agent;

    move-result-object v1

    iget-object v2, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0, v2}, Lcom/sightcall/universal/agent/Usecase;->getSurvey(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/internal/model/Survey;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/model/Survey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->displayName()Ljava/lang/String;

    move-result-object v4

    instance-of v0, v0, Lnet/rtccloud/sdk/User$Internal;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->login()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v9, v2

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object v8, v2

    move-object v9, v8

    :goto_0
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->reference()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sightcall/universal/internal/model/Survey;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->createIntent(Landroid/content/Context;Lcom/sightcall/universal/internal/model/Survey;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sightcall/universal/internal/ui/SurveyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->redirectToSurveyAndFinish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra.survey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/model/Survey;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/SurveyActivity;->survey:Lcom/sightcall/universal/internal/model/Survey;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-boolean p1, p1, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->redirectToSurveyAndFinish()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->displayAlertDialog()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->dismissAlertDialog()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
