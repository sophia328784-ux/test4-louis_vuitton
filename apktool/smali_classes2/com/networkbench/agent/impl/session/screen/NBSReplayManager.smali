.class public Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "NBSReplayManager"


# instance fields
.field private replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_EMPTY:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-void
.end method


# virtual methods
.method public canShotBitmap()Z
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current replayState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_EMPTY:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_STOP:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_PAUSE:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public pauseVideo()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_START:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_RESUME:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not REPLAY_STATE_START or REPLAY_STATE_RESUME, current replayState is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v1, "pauseVideo invoked"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_PAUSE:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-void
.end method

.method public resumeVideo()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_PAUSE:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not REPLAY_STATE_PAUSE, current replayState is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeVideo invoked"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_RESUME:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-void
.end method

.method public startVideo()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_STOP:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v0, "current replayState is REPLAY_STATE_STOP, skip set"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v1, "startVideo invoked"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_START:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-void
.end method

.method public stopVideo()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    sget-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_EMPTY:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v0, "current replayState is REPLAY_STATE_EMPTY, skip set"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->TAG:Ljava/lang/String;

    const-string v1, "stopVideo invoked"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_STOP:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSReplayManager;->replayState:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-void
.end method
