.class public Lcom/batch/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/batch/android/BatchMessage;

.field private final b:Lcom/batch/android/f0/c;

.field private c:Lcom/batch/android/l0/a;

.field private d:Z

.field private final e:Lcom/batch/android/i;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchMessage;Lcom/batch/android/f0/c;Lcom/batch/android/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/a;->d:Z

    iput-object p1, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    iput-object p2, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    iput-object p3, p0, Lcom/batch/android/a;->e:Lcom/batch/android/i;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.batch.android.messaging.DISMISS_BANNER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/d/a;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    invoke-virtual {v0}, Lcom/batch/android/f0/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    iget-object v2, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    check-cast v2, Lcom/batch/android/h0/b;

    iget-object v3, p0, Lcom/batch/android/a;->e:Lcom/batch/android/i;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/batch/android/n/r;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)Lcom/batch/android/n0/c;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    invoke-virtual {v0}, Lcom/batch/android/f0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    iget-object v2, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    check-cast v2, Lcom/batch/android/g0/a;

    iget-object v3, p0, Lcom/batch/android/a;->e:Lcom/batch/android/i;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/batch/android/n/e;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;Lcom/batch/android/i;Z)Lcom/batch/android/m0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not display banner"

    const-string v0, "Messaging"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Could not show BatchBannerView: internal error. Is your anchor view valid and part of the hierarchy?"

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/a;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/batch/android/a;->b(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private synthetic b(Landroid/widget/FrameLayout;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.batch.android.messaging.DISMISS_BANNER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/d/a;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    invoke-virtual {v0}, Lcom/batch/android/f0/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    iget-object v2, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    check-cast v2, Lcom/batch/android/h0/b;

    iget-object v3, p0, Lcom/batch/android/a;->e:Lcom/batch/android/i;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/batch/android/n/r;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/h0/b;Lcom/batch/android/i;Z)Lcom/batch/android/n0/c;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    invoke-virtual {v0}, Lcom/batch/android/f0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    iget-object v2, p0, Lcom/batch/android/a;->b:Lcom/batch/android/f0/c;

    check-cast v2, Lcom/batch/android/g0/a;

    iget-object v3, p0, Lcom/batch/android/a;->e:Lcom/batch/android/i;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/batch/android/n/e;->a(Landroid/view/View;Lcom/batch/android/BatchMessage;Lcom/batch/android/g0/a;Lcom/batch/android/i;Z)Lcom/batch/android/m0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    invoke-virtual {p0}, Lcom/batch/android/l0/a;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Could not embed banner"

    const-string v0, "Messaging"

    invoke-static {v0, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Could not show BatchBannerView: internal error. Is your container layout valid and part of the hierarchy."

    invoke-static {v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/a;Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/batch/android/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 84
    instance-of v0, p1, Lcom/batch/android/Batch$Messaging$DisplayHintProvider;

    const-string v1, "Messaging"

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/batch/android/Batch$Messaging$DisplayHintProvider;

    iget-object v2, p0, Lcom/batch/android/a;->a:Lcom/batch/android/BatchMessage;

    .line 86
    invoke-interface {v0, v2}, Lcom/batch/android/Batch$Messaging$DisplayHintProvider;->getBatchMessageDisplayHint(Lcom/batch/android/BatchMessage;)Lcom/batch/android/Batch$Messaging$DisplayHint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v2, v0, Lcom/batch/android/Batch$Messaging$DisplayHint;->a:Lcom/batch/android/Batch$Messaging$a;

    sget-object v3, Lcom/batch/android/Batch$Messaging$a;->c:Lcom/batch/android/Batch$Messaging$a;

    .line 88
    iget-object v0, v0, Lcom/batch/android/Batch$Messaging$DisplayHint;->b:Landroid/view/View;

    if-ne v2, v3, :cond_2

    .line 89
    instance-of p1, v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 90
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/batch/android/a;->a(Landroid/widget/FrameLayout;)V

    return-void

    .line 91
    :cond_0
    const-string p0, "Could not embed BatchBannerView, internal error."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x1020002

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0, v0}, Lcom/batch/android/a;->b(Landroid/view/View;)V

    return-void

    .line 94
    :cond_4
    const-string p0, "Could not show BatchBannerView: the given activity doesn\'t seem to have a valid content view"

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_5
    const-string p0, "Activity cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 97
    iget-boolean v0, p0, Lcom/batch/android/a;->d:Z

    if-eqz v0, :cond_0

    .line 98
    const-string p0, "Messaging"

    const-string p1, "This banner has already been shown. Ignoring."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/batch/android/a;->d:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lw21;

    const/16 v2, 0x17

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 102
    :cond_1
    const-string p0, "embedLayout cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/batch/android/a;->c:Lcom/batch/android/l0/a;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/batch/android/l0/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/batch/android/a;->d:Z

    if-eqz v0, :cond_0

    .line 85
    const-string p0, "Messaging"

    const-string p1, "This banner has already been shown. Ignoring."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/batch/android/a;->d:Z

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lw21;

    const/16 v2, 0x15

    invoke-direct {v1, p0, p1, v2}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 89
    :cond_1
    const-string p0, "View cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
