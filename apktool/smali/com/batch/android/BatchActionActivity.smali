.class public Lcom/batch/android/BatchActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_DEEPLINK_KEY:Ljava/lang/String; = "deeplink"

.field private static final a:Ljava/lang/String; = "BatchActionActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    if-eqz p2, :cond_0

    .line 115
    const-string p0, "batchPushPayload"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method private a(Landroidx/core/app/TaskStackBuilder;Landroid/os/Bundle;)Landroidx/core/app/TaskStackBuilder;
    .locals 2

    if-eqz p2, :cond_0

    .line 116
    iget-object v0, p1, Landroidx/core/app/TaskStackBuilder;->b:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iget-object v1, p1, Landroidx/core/app/TaskStackBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v0, p2}, Lcom/batch/android/BatchActionActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a/f;
        }
    .end annotation

    const-string v0, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing"

    const-string v1, "BatchActionActivity"

    const-string v2, "batchPushPayload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/v0/a;->i()Lcom/batch/android/BatchDeeplinkInterceptor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2, p0, p2}, Lcom/batch/android/BatchDeeplinkInterceptor;->getTaskStackBuilder(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/batch/android/a/f; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/batch/android/BatchActionActivity;->a(Landroidx/core/app/TaskStackBuilder;Landroid/os/Bundle;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/TaskStackBuilder;->f()V
    :try_end_1
    .catch Lcom/batch/android/a/f; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v2, p0, p2}, Lcom/batch/android/BatchDeeplinkInterceptor;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/batch/android/a/f; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-direct {p0, v3, p1}, Lcom/batch/android/BatchActionActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_1
    move-exception p2

    invoke-static {v1, v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/batch/android/a/f;

    invoke-direct {v3, p2}, Lcom/batch/android/a/f;-><init>(Ljava/lang/RuntimeException;)V

    throw v3

    :catch_2
    move-exception p2

    invoke-static {v1, v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/batch/android/a/f;

    invoke-direct {v3, p2}, Lcom/batch/android/a/f;-><init>(Ljava/lang/RuntimeException;)V

    throw v3
    :try_end_3
    .catch Lcom/batch/android/a/f; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    const-string v3, "Error when trying to open deeplink from interceptor. Using fallback intent."

    invoke-static {v1, v3, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_4
    invoke-interface {v2, p0}, Lcom/batch/android/BatchDeeplinkInterceptor;->getFallbackIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz p2, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/batch/android/BatchActionActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :catch_3
    move-exception p0

    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/batch/android/a/f;

    invoke-direct {p1, p0}, Lcom/batch/android/a/f;-><init>(Ljava/lang/RuntimeException;)V

    throw p1

    :catch_4
    move-exception p0

    throw p0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/batch/android/e/f;->a(Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/batch/android/BatchActionActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNewIntent(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "BatchActionActivity"

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/batch/android/Batch;->onStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/batch/android/BatchActionActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/a/f; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while trying to open a deeplink"

    invoke-static {v0, v2, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not open deeplink: no activity found to handle Intent. Is it valid and your manifest well-formed? URL: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lcom/batch/android/a/f;->a()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/batch/android/BatchActionService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/Batch;->onStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
