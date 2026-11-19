.class public final synthetic Landroidx/camera/video/internal/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;ZI)V
    .locals 0

    iput p3, p0, Landroidx/camera/video/internal/audio/b;->b:I

    iput-object p1, p0, Landroidx/camera/video/internal/audio/b;->c:Landroidx/camera/video/internal/audio/AudioSource;

    iput-boolean p2, p0, Landroidx/camera/video/internal/audio/b;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/camera/video/internal/audio/b;->b:I

    const-string v1, "AudioSource is released"

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroidx/camera/video/internal/audio/b;->d:Z

    iget-object p0, p0, Landroidx/camera/video/internal/audio/b;->c:Landroidx/camera/video/internal/audio/AudioSource;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->g:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmd;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->r:Z

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Landroidx/camera/video/internal/audio/AudioSource;->r:Z

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->g:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    sget-object v1, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->a()V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->g:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lmd;->h(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/audio/AudioSource;->c(Landroidx/camera/video/internal/audio/AudioSource$InternalState;)V

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/b;

    invoke-direct {v1, p0, v4, v3}, Landroidx/camera/video/internal/audio/b;-><init>(Landroidx/camera/video/internal/audio/AudioSource;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->e()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
