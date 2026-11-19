.class public Lcom/batch/android/MessagingActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c0/c;


# static fields
.field private static final c:Ljava/lang/String; = "MessagingActivity"

.field private static final d:Ljava/lang/String; = "ROTATED"

.field private static final e:Ljava/lang/String; = "IS_MEP"

.field private static final f:Ljava/lang/String; = "batchMessage"


# instance fields
.field private a:Z

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/MessagingActivity;->a:Z

    new-instance v0, Lcom/batch/android/MessagingActivity$a;

    invoke-direct {v0, p0}, Lcom/batch/android/MessagingActivity$a;-><init>(Lcom/batch/android/MessagingActivity;)V

    iput-object v0, p0, Lcom/batch/android/MessagingActivity;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Lcom/batch/android/BatchMessage;)Z
    .locals 4

    const-string v0, "MessagingActivity"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v3}, Lcom/batch/android/v0/g;->b(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    instance-of v2, p1, Lcom/batch/android/c0/e;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/batch/android/c0/e;

    invoke-interface {v2, p0}, Lcom/batch/android/c0/e;->a(Lcom/batch/android/c0/c;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v2, "batchMessage"

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "Unknown error while showing Batch Message (code -1)"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/BatchMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    const-string p1, "Unknown error while showing Batch Message (code -2)"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batch/android/MessagingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/batch/android/BatchMessage;->writeToIntent(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/batch/android/i0/b;->f(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/batch/android/f0/c;->c()Z

    move-result p1
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MessagingActivity"

    const-string v1, "Error while parsing the payload message"

    invoke-static {p1, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    const-string v1, "IS_MEP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.batch.android.messaging.DISMISS_INTERSTITIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget v0, Lcom/batch/android/R$anim;->com_batchsdk_window_stub:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "ROTATED"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "batchMessage"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/batch/android/c0/e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/batch/android/c0/e;

    invoke-interface {p1, p0}, Lcom/batch/android/c0/e;->a(Lcom/batch/android/c0/c;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "IS_MEP"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/batch/android/MessagingActivity;->a:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Lcom/batch/android/BatchMessage;->getMessageForBundle(Landroid/os/Bundle;)Lcom/batch/android/BatchMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/MessagingActivity;->a(Lcom/batch/android/BatchMessage;)Z

    move-result v0
    :try_end_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "MessagingActivity"

    invoke-static {v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->finish()V

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/batch/android/MessagingActivity;->a:Z

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/MessagingActivity;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.batch.android.messaging.DISMISS_INTERSTITIAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/batch/android/MessagingActivity;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/MessagingActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onDialogDismiss(Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ROTATED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    invoke-static {p0}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method
