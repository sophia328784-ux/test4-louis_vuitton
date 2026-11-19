.class final Lcom/google/android/play/integrity/internal/aa;
.super Lcom/google/android/play/integrity/internal/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/google/android/play/integrity/internal/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/play/integrity/internal/ad;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ad;

    iput-object p2, p0, Lcom/google/android/play/integrity/internal/aa;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ad;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ad;->b:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ae;->i:Lcom/google/android/play/integrity/internal/z;

    iget-object v1, p0, Lcom/google/android/play/integrity/internal/aa;->a:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/google/android/play/integrity/internal/z;->a(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ad;

    iget-object v1, v1, Lcom/google/android/play/integrity/internal/ad;->b:Lcom/google/android/play/integrity/internal/ae;

    iput-object v0, v1, Lcom/google/android/play/integrity/internal/ae;->n:Landroid/os/IInterface;

    iget-object v0, v1, Lcom/google/android/play/integrity/internal/ae;->b:Lcom/google/android/play/integrity/internal/s;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/play/integrity/internal/s;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, v1, Lcom/google/android/play/integrity/internal/ae;->n:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/play/integrity/internal/ae;->k:Lcom/google/android/play/integrity/internal/u;

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "PlayCore"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/s;->a:Ljava/lang/String;

    const-string v3, "linkToDeath failed"

    invoke-static {v0, v3, v1}, Lcom/google/android/play/integrity/internal/s;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ad;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ad;->b:Lcom/google/android/play/integrity/internal/ae;

    iput-boolean v2, v0, Lcom/google/android/play/integrity/internal/ae;->g:Z

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ad;

    iget-object p0, p0, Lcom/google/android/play/integrity/internal/ad;->b:Lcom/google/android/play/integrity/internal/ae;

    iget-object p0, p0, Lcom/google/android/play/integrity/internal/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
