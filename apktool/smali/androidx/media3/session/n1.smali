.class public final synthetic Landroidx/media3/session/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionLegacyStub$1;

.field public final synthetic c:Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/media3/session/MediaSession$ControllerInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub$1;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/n1;->b:Landroidx/media3/session/MediaSessionLegacyStub$1;

    iput-object p2, p0, Landroidx/media3/session/n1;->c:Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    iput-boolean p3, p0, Landroidx/media3/session/n1;->d:Z

    iput-boolean p4, p0, Landroidx/media3/session/n1;->e:Z

    iput-object p5, p0, Landroidx/media3/session/n1;->f:Landroidx/media3/session/MediaSession$ControllerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/n1;->b:Landroidx/media3/session/MediaSessionLegacyStub$1;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub$1;->d:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-object v2, p0, Landroidx/media3/session/n1;->c:Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->f(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->h()I

    move-result v2

    iget-boolean v3, p0, Landroidx/media3/session/n1;->d:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_0

    invoke-virtual {v1, v4}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->f()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->k()V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/session/n1;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->c()V

    :cond_2
    new-instance v1, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v3, 0x1f

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4, v3}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    invoke-virtual {v1, v5, v2}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    invoke-virtual {v1}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    iget-object p0, p0, Landroidx/media3/session/n1;->f:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method
