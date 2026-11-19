.class final Landroidx/media3/session/MediaSessionStub$Controller2Cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Controller2Cb"
.end annotation


# instance fields
.field public final a:Landroidx/media3/session/IMediaController;

.field public final b:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/IMediaController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    iput p2, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Commands;ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->b:I

    if-eqz v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-nez p4, :cond_2

    const/16 v3, 0x11

    invoke-virtual {p3, v3}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-nez p5, :cond_3

    const/16 v4, 0x1e

    invoke-virtual {p3, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    const/4 v4, 0x2

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    if-lt v2, v4, :cond_6

    invoke-virtual {p2, p3, p4, p5}, Landroidx/media3/session/PlayerInfo;->g(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    instance-of p3, p0, Landroidx/media3/session/MediaControllerStub;

    if-eqz p3, :cond_5

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    sget-object p4, Landroidx/media3/session/PlayerInfo;->o0:Ljava/lang/String;

    new-instance p5, Landroidx/media3/session/PlayerInfo$InProcessBinder;

    invoke-direct {p5, p2}, Landroidx/media3/session/PlayerInfo$InProcessBinder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v2}, Landroidx/media3/session/PlayerInfo;->j(I)Landroid/os/Bundle;

    move-result-object p3

    :goto_3
    new-instance p2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    invoke-direct {p2, v3, v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    sget-object p5, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->d:Ljava/lang/String;

    iget-boolean v0, p2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->a:Z

    invoke-virtual {p4, p5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p5, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->e:Ljava/lang/String;

    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->b:Z

    invoke-virtual {p4, p5, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p0, p1, p3, p4}, Landroidx/media3/session/IMediaController;->H1(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_6
    invoke-virtual {p2, p3, p4, v1}, Landroidx/media3/session/PlayerInfo;->g(Landroidx/media3/common/Player$Commands;ZZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/media3/session/PlayerInfo;->j(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2, v3}, Landroidx/media3/session/IMediaController;->v2(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public final b(ILandroidx/media3/session/SessionCommand;)V
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionCommand;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/session/IMediaController;->C1(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    .locals 0

    invoke-virtual {p2, p3, p4}, Landroidx/media3/session/SessionPositionInfo;->a(ZZ)Landroidx/media3/session/SessionPositionInfo;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroidx/media3/session/SessionPositionInfo;->c(I)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0, p1, p2}, Landroidx/media3/session/IMediaController;->A1(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final d(ILandroidx/media3/session/LibraryResult;)V
    .locals 9

    sget-object v0, Landroidx/media3/session/LibraryResult;->j:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media3/session/LibraryResult;->c:Ljava/lang/Object;

    iget v2, p2, Landroidx/media3/session/LibraryResult;->d:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroidx/media3/session/LibraryResult;->g:Ljava/lang/String;

    iget v5, p2, Landroidx/media3/session/LibraryResult;->a:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v4, Landroidx/media3/session/LibraryResult;->h:Ljava/lang/String;

    iget-wide v5, p2, Landroidx/media3/session/LibraryResult;->b:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, p2, Landroidx/media3/session/LibraryResult;->e:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v4, :cond_0

    sget-object v5, Landroidx/media3/session/LibraryResult;->i:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Landroidx/media3/session/MediaLibraryService$LibraryParams;->e:Ljava/lang/String;

    iget-object v8, v4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v7, Landroidx/media3/session/MediaLibraryService$LibraryParams;->f:Ljava/lang/String;

    iget-boolean v8, v4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->b:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v7, Landroidx/media3/session/MediaLibraryService$LibraryParams;->g:Ljava/lang/String;

    iget-boolean v8, v4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->c:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v7, Landroidx/media3/session/MediaLibraryService$LibraryParams;->h:Ljava/lang/String;

    iget-boolean v4, v4, Landroidx/media3/session/MediaLibraryService$LibraryParams;->d:Z

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p2, p2, Landroidx/media3/session/LibraryResult;->f:Landroidx/media3/session/SessionError;

    if-eqz p2, :cond_1

    sget-object v4, Landroidx/media3/session/LibraryResult;->l:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/session/SessionError;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    sget-object p2, Landroidx/media3/session/LibraryResult;->k:Ljava/lang/String;

    invoke-virtual {v3, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eq v2, p2, :cond_6

    const/4 p2, 0x2

    const/4 v4, 0x0

    iget v5, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->b:I

    if-eq v2, p2, :cond_5

    const/4 p2, 0x3

    if-eq v2, p2, :cond_3

    const/4 p2, 0x4

    if-eq v2, p2, :cond_6

    goto :goto_1

    :cond_3
    new-instance p2, Landroidx/media3/common/BundleListRetriever;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    sget-object v2, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v6, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    sget-object v8, Landroidx/media3/session/LibraryResult;->g:Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_5
    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v5, v4}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0, p1, v3}, Landroidx/media3/session/IMediaController;->a0(ILandroid/os/Bundle;)V

    return-void

    :cond_6
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-static {p0}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, p1, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0, p1}, Landroidx/media3/session/IMediaController;->f(I)V

    return-void
.end method

.method public final g(III)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/IMediaController;->g(III)V

    return-void
.end method

.method public final h(ILandroidx/media3/common/Player$Commands;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/common/Player$Commands;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/media3/session/IMediaController;->w1(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(ILandroidx/media3/session/SessionResult;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-virtual {p2}, Landroidx/media3/session/SessionResult;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/media3/session/IMediaController;->O0(ILandroid/os/Bundle;)V

    return-void
.end method
