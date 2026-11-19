.class public final synthetic Landroidx/media3/session/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/session/MediaNotification$Provider$Callback;
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/media3/session/n;->b:I

    iput-object p1, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/session/n;->d:I

    iput-object p3, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/media3/session/n;->b:I

    iput-object p1, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/session/n;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 0

    const/4 p2, 0x4

    iput p2, p0, Landroidx/media3/session/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/session/n;->d:I

    iput-object p4, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaNotification;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/session/MediaNotificationManager;

    iget-object v0, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/media3/session/MediaSession;

    iget-object v0, v4, Landroidx/media3/session/MediaNotificationManager;->f:Landroidx/media3/session/g;

    new-instance v1, Landroidx/media3/session/c1;

    const/4 v3, 0x0

    iget v2, p0, Landroidx/media3/session/n;->d:I

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/c1;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/g;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    sget v2, Landroidx/media3/session/MediaSessionStub;->p:I

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionResult;

    const-string v2, "SessionResult must not be null"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    const-string v2, "Session operation failed"

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroidx/media3/session/SessionResult;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz p1, :cond_0

    const/4 p1, -0x6

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_1
    invoke-direct {v2, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    move-object p1, v2

    goto :goto_3

    :goto_2
    const-string v2, "Session operation cancelled"

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    :goto_3
    iget p0, p0, Landroidx/media3/session/n;->d:I

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void
.end method

.method public b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    sget v2, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    iget-object v2, v1, Landroidx/media3/session/legacy/MediaDescriptionCompat;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "onAddQueueItem(): Media ID shouldn\'t be empty"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroidx/media3/session/LegacyConversions;->j(Landroidx/media3/session/legacy/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->m(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaSessionLegacyStub$2;

    iget p0, p0, Landroidx/media3/session/n;->d:I

    invoke-direct {v2, v0, p1, p0}, Landroidx/media3/session/MediaSessionLegacyStub$2;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 2

    iget-object p3, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget v1, Landroidx/media3/session/MediaSessionStub;->p:I

    iget p0, p0, Landroidx/media3/session/n;->d:I

    invoke-virtual {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->B(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 9

    iget v0, p0, Landroidx/media3/session/n;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/session/n;->e:Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/session/n;->d:I

    iget-object p0, p0, Landroidx/media3/session/n;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance v4, Landroidx/media3/common/BundleListRetriever;

    sget-object v5, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v8

    invoke-virtual {v7, v8, v1}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v4, p0}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0, p2, v3, v4}, Landroidx/media3/session/IMediaSession;->p1(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    return-void

    :pswitch_0
    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    const/4 v5, 0x2

    if-lt v0, v5, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result p0

    invoke-virtual {v2, p0, v1}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v4, p2, v3, p0}, Landroidx/media3/session/IMediaSession;->L0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result p0

    invoke-virtual {v2, p0, v1}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v4, p2, v0, p0}, Landroidx/media3/session/IMediaSession;->S0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    invoke-interface {p1, v4, p2, v3}, Landroidx/media3/session/IMediaSession;->y0(Landroidx/media3/session/IMediaController;II)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
