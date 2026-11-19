.class public final Landroidx/media3/common/audio/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

.field public final c:Landroidx/media3/common/util/HandlerWrapper;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-interface {p5, p2, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-interface {p5, p3, p1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;)V

    iput-object p2, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz p1, :cond_1

    new-instance p1, Ly9;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ly9;-><init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;I)V

    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    return-void

    :cond_1
    new-instance p1, Ly9;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Ly9;-><init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager;I)V

    invoke-interface {v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    return-void
.end method
