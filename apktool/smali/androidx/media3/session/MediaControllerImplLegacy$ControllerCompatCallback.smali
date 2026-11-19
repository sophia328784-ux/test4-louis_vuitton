.class final Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;
.super Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ControllerCompatCallback"
.end annotation


# instance fields
.field public final d:Landroid/os/Handler;

.field public final synthetic e:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;-><init>()V

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/e0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/e0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media3.session.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroidx/media3/session/SessionCommand;

    const-string v0, "androidx.media3.session.SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED"

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$Listener;->V(Landroidx/media3/session/SessionCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v8, p1

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-object v1, v0

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-object v2, v1

    iget-object v1, v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    move-object v3, v2

    iget-object v2, v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-object v4, v3

    iget-object v3, v4, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    move-object v5, v4

    iget-object v4, v5, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    move-object v6, v5

    iget-object v5, v6, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    move-object v7, v6

    iget v6, v7, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v7, v7, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v0, p1, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/media3/session/MediaControllerImplLegacy;->o:Z

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final d(Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move-object v5, p1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final e(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->T0(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v4

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->S0(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move-object v7, p1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final h(I)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v9, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->g:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move v8, p1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method

.method public final j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    new-instance v0, Landroidx/media3/session/SessionCommand;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Landroidx/media3/session/MediaController$Listener;->V(Landroidx/media3/session/SessionCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final k()V
    .locals 12

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-boolean v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->l:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->X0()V

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->i()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplLegacy;->T0(Landroidx/media3/session/legacy/PlaybackStateCompat;)Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v5

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->m()I

    move-result v9

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaControllerCompat;->n()I

    move-result v10

    new-instance v3, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    invoke-direct/range {v3 .. v11}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v3, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->p()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->b(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x0

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {v0, p0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->V0(ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    return-void
.end method

.method public final l(I)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    new-instance v2, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v3, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->a:Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->b:Landroidx/media3/session/legacy/PlaybackStateCompat;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->c:Landroidx/media3/session/legacy/MediaMetadataCompat;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->d:Ljava/util/List;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->e:Ljava/lang/CharSequence;

    iget v8, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->f:I

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->h:Landroid/os/Bundle;

    move v9, p1

    invoke-direct/range {v2 .. v10}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;Landroidx/media3/session/legacy/PlaybackStateCompat;Landroidx/media3/session/legacy/MediaMetadataCompat;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    iput-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->n:Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->o()V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->e:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-wide v2, p0, Landroidx/media3/session/MediaControllerImplLegacy;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
