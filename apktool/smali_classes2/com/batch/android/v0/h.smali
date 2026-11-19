.class public Lcom/batch/android/v0/h;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "OptOut"

.field public static final d:Ljava/lang/String; = "com.batch.android.optout.enabled"

.field public static final e:Ljava/lang/String; = "com.batch.android.optout.disabled"

.field public static final f:Ljava/lang/String; = "wipe_data"

.field private static final g:Ljava/lang/String; = "com.batch.optout"

.field private static final h:Ljava/lang/String; = "app.batch.opted_out"

.field private static final i:Ljava/lang/String; = "app.batch.send_optin_event"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;ZLjava/lang/Exception;)V
    .locals 7

    .line 91
    new-instance p5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La91;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, La91;-><init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;Landroid/content/Context;Z)V

    .line 92
    invoke-virtual {p5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;ZLcom/batch/android/e/c0;Ljava/lang/Void;)V
    .locals 7

    .line 86
    new-instance p5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La91;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, La91;-><init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    .line 87
    invoke-virtual {p5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/batch/android/v0/h;->f(Landroid/content/Context;)V

    .line 98
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    .line 99
    invoke-direct {p0, p1}, Lcom/batch/android/v0/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "app.batch.opted_out"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.batch.android.optout.enabled"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v0, "wipe_data"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/batch/android/d/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private synthetic a(Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1}, Lcom/batch/android/BatchOptOutResultListener;->onSuccess()V

    .line 89
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/batch/android/v0/h;->a(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    .line 90
    invoke-virtual {p4, p0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/batch/android/BatchOptOutResultListener;->onError()Lcom/batch/android/BatchOptOutResultListener$ErrorPolicy;

    move-result-object p1

    sget-object v1, Lcom/batch/android/BatchOptOutResultListener$ErrorPolicy;->CANCEL:Lcom/batch/android/BatchOptOutResultListener$ErrorPolicy;

    if-ne p1, v1, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/batch/android/v0/h;->a(Landroid/content/Context;Z)V

    .line 96
    invoke-virtual {p2, v0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/v0/h;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.batch.optout"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/v0/h;->b:Landroid/content/SharedPreferences;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/batch/android/v0/h;->b:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic i(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/v0/h;->a(Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V
    .locals 0

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/batch/android/v0/h;->a(Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/batch/android/v0/h;Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/v0/h;->a(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;Lcom/batch/android/e/c0;ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic l(Lcom/batch/android/v0/h;Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;ZLcom/batch/android/e/c0;Ljava/lang/Void;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/batch/android/v0/h;->a(Landroid/content/Context;Lcom/batch/android/BatchOptOutResultListener;ZLcom/batch/android/e/c0;Ljava/lang/Void;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLcom/batch/android/BatchOptOutResultListener;)Lcom/batch/android/e/c0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/batch/android/BatchOptOutResultListener;",
            ")",
            "Lcom/batch/android/e/c0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v5, Lcom/batch/android/e/c0;

    invoke-direct {v5}, Lcom/batch/android/e/c0;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opt Out, wipe data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptOut"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v0

    const-string v2, "_OPTOUT_WIPE_DATA"

    invoke-virtual {v0, p1, v2}, Lcom/batch/android/v0/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/e/c0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v0

    const-string v2, "_OPT_OUT"

    invoke-virtual {v0, p1, v2}, Lcom/batch/android/v0/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/batch/android/e/c0;

    move-result-object v0

    :goto_0
    if-nez p3, :cond_1

    invoke-static {v1}, Lcom/batch/android/e/c0;->b(Ljava/lang/Object;)Lcom/batch/android/e/c0;

    move-result-object v0

    :cond_1
    move-object v6, v0

    new-instance v0, Lb91;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lb91;-><init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    invoke-virtual {v6, v0}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$f;)Lcom/batch/android/e/c0;

    new-instance v0, Lc91;

    invoke-direct/range {v0 .. v5}, Lc91;-><init>(Lcom/batch/android/v0/h;Lcom/batch/android/BatchOptOutResultListener;Landroid/content/Context;ZLcom/batch/android/e/c0;)V

    invoke-virtual {v6, v0}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$b;)Lcom/batch/android/e/c0;

    return-object v5

    :cond_2
    invoke-virtual {v5, v1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-object v5
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/batch/android/v0/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app.batch.opted_out"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string v2, "batch_opted_out_by_default"

    invoke-static {p1, v2}, Lcom/batch/android/m1/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OptOut"

    const-string v0, "Batch has been set to be Opted Out from by default in your app\'s manifest. You will need to call Batch.optIn() before performing anything else."

    invoke-static {p1, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OptOut"

    const-string v1, "Opt In"

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/batch/android/v0/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "app.batch.opted_out"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "app.batch.send_optin_event"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.batch.android.optout.disabled"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/d/a;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/batch/android/v0/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "app.batch.send_optin_event"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/v0/k;->d(Landroid/content/Context;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OptOut"

    const-string v0, "Could not track optin"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    const-string p0, "OptOut"

    const-string v0, "Wiping data"

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/batch/android/v0/l;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/n/e0;->a()Lcom/batch/android/v0/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/k;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/n/p;->a()Lcom/batch/android/v0/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->e(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/batch/android/n/j;->a(Landroid/content/Context;)Lcom/batch/android/q/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/q/d;->e()V

    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/e/a0;->a()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "optout"

    return-object p0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/batch/android/v0/h;->a:Ljava/lang/Boolean;

    return-object p0
.end method
