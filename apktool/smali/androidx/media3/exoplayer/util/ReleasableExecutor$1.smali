.class Landroidx/media3/exoplayer/util/ReleasableExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/util/ReleasableExecutor;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lv40;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lv40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->c:Lv40;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->c:Lv40;

    iget-object p0, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lv40;->accept(Ljava/lang/Object;)V

    return-void
.end method
