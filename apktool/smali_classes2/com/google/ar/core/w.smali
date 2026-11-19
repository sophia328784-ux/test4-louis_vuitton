.class final Lcom/google/ar/core/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/w;->b:Lcom/google/ar/core/InstallActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/w;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/x;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ar/core/w;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ar/core/w;->a:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/ar/core/InstallActivity;->f(Lcom/google/ar/core/x;)V

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/ar/core/InstallActivity;->g()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/ar/core/l;->m:Lcom/google/ar/core/l;

    iget-boolean p1, p1, Lcom/google/ar/core/l;->d:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/google/ar/core/InstallActivity;->e()V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {p1}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    :goto_0
    iput-boolean v1, p0, Lcom/google/ar/core/w;->a:Z

    monitor-exit v0

    return-void

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/ar/core/exceptions/FatalException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ar/core/w;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ar/core/w;->a:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ar/core/w;->a:Z

    sget-object p0, Lcom/google/ar/core/x;->b:Lcom/google/ar/core/x;

    invoke-virtual {v0, p0}, Lcom/google/ar/core/InstallActivity;->f(Lcom/google/ar/core/x;)V

    invoke-virtual {v0, p1}, Lcom/google/ar/core/InstallActivity;->c(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
