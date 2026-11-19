.class public Lcom/batch/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final b:Ljava/lang/String; = "DeeplinkAction"

.field public static final c:Ljava/lang/String; = "batch.deeplink"

.field public static final d:Ljava/lang/String; = "l"

.field public static final e:Ljava/lang/String; = "li"


# instance fields
.field private a:Lcom/batch/android/v0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/b/b;->a:Lcom/batch/android/v0/a;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/a/f;
        }
    .end annotation

    const-string v0, "Interceptor has thrown a runtime exception. Aborting deeplink opens by rethrowing"

    const-string v1, "DeeplinkAction"

    iget-object p0, p0, Lcom/batch/android/b/b;->a:Lcom/batch/android/v0/a;

    invoke-virtual {p0}, Lcom/batch/android/v0/a;->i()Lcom/batch/android/BatchDeeplinkInterceptor;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/batch/android/BatchDeeplinkInterceptor;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/batch/android/a/f; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    invoke-static {v1, v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lcom/batch/android/a/f;

    invoke-direct {p3, p2}, Lcom/batch/android/a/f;-><init>(Ljava/lang/RuntimeException;)V

    throw p3
    :try_end_1
    .catch Lcom/batch/android/a/f; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const-string p3, "Error when trying to open deeplink from interceptor. Using fallback intent."

    invoke-static {v1, p3, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    invoke-interface {p0, p1}, Lcom/batch/android/BatchDeeplinkInterceptor;->getFallbackIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :catch_2
    move-exception p0

    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/batch/android/a/f;

    invoke-direct {p1, p0}, Lcom/batch/android/a/f;-><init>(Ljava/lang/RuntimeException;)V

    throw p1

    :catch_3
    move-exception p0

    throw p0

    :cond_1
    const/4 p0, 0x1

    invoke-static {p2, p3, p0}, Lcom/batch/android/e/f;->a(Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 3

    const-string p2, "Tried to perform a Deeplink action, but no deeplink was found in the args. (args: "

    const-string v0, "DeeplinkAction"

    if-nez p1, :cond_0

    const-string p0, "Tried to perform a Deeplink action, but no context was available"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "l"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p2, "li"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p2, v2}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p4, Lcom/batch/android/BatchPushPayload;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/batch/android/b/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/a/f; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "Could not perform deeplink action"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Could not open deeplink: Unknown error."

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Could not open deeplink: no activity found to handle Intent. Is it valid and your manifest well-formed? URL: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lcom/batch/android/a/f;->a()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
