.class Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer$WakeupListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:Z

    return-void
.end method

.method public final b()V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l1:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->a:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void
.end method
