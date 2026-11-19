.class public final Landroidx/media3/common/util/WakeLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public final c:Landroidx/media3/common/util/HandlerWrapper;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    const/4 p1, 0x0

    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/util/WakeLockManager;->b:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/WakeLockManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->b:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Landroidx/media3/common/util/e;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/common/util/e;-><init>(Landroidx/media3/common/util/WakeLockManager;ZZ)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lw21;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v1, v3}, Lw21;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, p0, Landroidx/media3/common/util/WakeLockManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v3, v2}, Landroidx/media3/common/util/HandlerWrapper;->e(Ljava/lang/Runnable;)Z

    new-instance v2, Landroidx/media3/common/util/f;

    invoke-direct {v2, p0, v1, p1, p2}, Landroidx/media3/common/util/f;-><init>(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->e:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WakeLockManager;->e:Z

    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/WakeLockManager;->a(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
