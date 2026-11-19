.class final Lcom/google/ar/core/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/ar/core/w;

.field final synthetic c:Lcom/google/ar/core/y;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/y;Landroid/app/Activity;Lcom/google/ar/core/w;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/ag;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/w;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    iget-object v1, v1, Lcom/google/ar/core/y;->c:Lcom/google/ar/core/dependencies/h;

    iget-object v2, p0, Lcom/google/ar/core/ag;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package.name"

    const-string v6, "com.google.ar.core"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Lcom/google/ar/core/ae;

    iget-object v7, p0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/w;

    invoke-direct {v6, p0, v0, v2, v7}, Lcom/google/ar/core/ae;-><init>(Lcom/google/ar/core/ag;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/google/ar/core/w;)V

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/ar/core/dependencies/h;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/ar/core/dependencies/j;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/google/ar/core/af;

    invoke-direct {v3, p0, v0, v2, v7}, Lcom/google/ar/core/af;-><init>(Lcom/google/ar/core/ag;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/app/Activity;Lcom/google/ar/core/w;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/y;

    iget-object v1, p0, Lcom/google/ar/core/ag;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/google/ar/core/y;->e(Landroid/app/Activity;Lcom/google/ar/core/w;)V

    return-void
.end method
