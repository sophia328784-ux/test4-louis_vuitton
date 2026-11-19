.class public final synthetic Lgb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    iput-boolean p2, p0, Lgb0;->c:Z

    iput-boolean p3, p0, Lgb0;->d:Z

    iput-object p4, p0, Lgb0;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lgb0;->f:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object p1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lgb0;->b:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lgb0;->f:Landroidx/compose/runtime/MutableState;

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lgb0;->c:Z

    if-nez p1, :cond_2

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-interface {v0}, Landroidx/media3/common/Player;->c()V

    :cond_3
    iget-boolean p0, p0, Lgb0;->d:Z

    if-eqz p0, :cond_4

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p0, p0, Lgb0;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    return-void
.end method
