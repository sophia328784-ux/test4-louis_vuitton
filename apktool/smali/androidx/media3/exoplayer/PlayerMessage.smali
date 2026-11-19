.class public final Landroidx/media3/exoplayer/PlayerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/PlayerMessage$Sender;,
        Landroidx/media3/exoplayer/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/PlayerMessage$Target;

.field public final b:Landroidx/media3/exoplayer/PlayerMessage$Sender;

.field public final c:Landroidx/media3/common/util/Clock;

.field public final d:Landroidx/media3/common/Timeline;

.field public e:I

.field public f:Ljava/lang/Object;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->b:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    iput-object p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->a:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iput-object p3, p0, Landroidx/media3/exoplayer/PlayerMessage;->d:Landroidx/media3/common/Timeline;

    iput-object p6, p0, Landroidx/media3/exoplayer/PlayerMessage;->g:Landroid/os/Looper;

    iput-object p5, p0, Landroidx/media3/exoplayer/PlayerMessage;->c:Landroidx/media3/common/util/Clock;

    iput p4, p0, Landroidx/media3/exoplayer/PlayerMessage;->h:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->b:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/PlayerMessage$Sender;->f(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void
.end method
