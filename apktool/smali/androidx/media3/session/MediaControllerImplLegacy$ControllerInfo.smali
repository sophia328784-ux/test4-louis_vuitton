.class Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerInfo"
.end annotation


# instance fields
.field public final a:Landroidx/media3/session/PlayerInfo;

.field public final b:Landroidx/media3/session/SessionCommands;

.field public final c:Landroidx/media3/common/Player$Commands;

.field public final d:Lcom/google/common/collect/ImmutableList;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroidx/media3/session/SessionError;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/session/PlayerInfo;->H:Landroidx/media3/session/PlayerInfo;

    sget-object v1, Landroidx/media3/session/QueueTimeline;->g:Landroidx/media3/session/QueueTimeline;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput-object v1, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    sget-object v0, Landroidx/media3/session/SessionCommands;->b:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    sget-object v0, Landroidx/media3/common/Player$Commands;->b:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->f:Landroidx/media3/session/SessionError;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroidx/media3/session/SessionError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/SessionError;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    .line 43
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->b:Landroidx/media3/session/SessionCommands;

    .line 44
    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->c:Landroidx/media3/common/Player$Commands;

    .line 45
    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->d:Lcom/google/common/collect/ImmutableList;

    if-nez p5, :cond_0

    .line 46
    sget-object p5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    iput-object p5, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->e:Landroid/os/Bundle;

    .line 47
    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->f:Landroidx/media3/session/SessionError;

    return-void
.end method
