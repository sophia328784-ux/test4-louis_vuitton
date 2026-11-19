.class public final Landroidx/media3/common/util/WifiLockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/HandlerWrapper;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media3/common/util/WifiLockManager$WifiLockManagerInternal;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/util/WifiLockManager;->a:Landroidx/media3/common/util/HandlerWrapper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/WifiLockManager;->b:Landroidx/media3/common/util/HandlerWrapper;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/util/WifiLockManager;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WifiLockManager;->c:Z

    return-void
.end method
